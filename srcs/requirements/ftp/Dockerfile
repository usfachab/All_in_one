FROM alpine:3.18.5

ARG FTP_ADMIN_PASSWD FTP_USER_PASSWD

RUN apk --update --upgrade --no-cache add vsftpd openrc; rm -rf /var/cache/apk/*; \
	mkdir -p /var/www/wordpress; \
	addgroup -g 1000 admin && adduser -Du 1000 -G admin admin; \
	passwd -d admin ${FTP_ADMIN_PASSWD}; \
	addgroup -g 1001 ftpuser && adduser -Du 1001 -G ftpuser ftpuser; \
	passwd -d ftpuser ${FTP_USER_PASSWD}; \
	chown -R admin:admin /var/www/wordpress

COPY config/vsftpd.conf /etc/vsftpd.conf
COPY config/vsftpd.chroot_list /etc/vsftpd/vsftpd.chroot_list

ENTRYPOINT [ "vsftpd" ]