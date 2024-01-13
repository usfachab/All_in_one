FROM alpine:3.18.5

RUN apk --update --upgrade --no-cache add vsftpd openrc; rm -rf /var/cache/apk/*

ARG FTP_ADMIN_PASSWD FTP_USER_PASSWD

COPY config/vsftpd.conf /etc/vsftpd.conf
COPY config/vsftpd.chroot_list /etc/vsftpd/vsftpd.chroot_list

RUN mkdir -p /home/wp_data && mkdir -p /var/run/vsftpd/empty

VOLUME vol

EXPOSE 20

EXPOSE 21

EXPOSE 5000-10000

RUN addgroup -g 1000 admin && adduser -Du 1000 -G admin admin; \
	addgroup -g 1001 ftpuser && adduser -Du 1001 -G ftpuser ftpuser; \
	passwd -d admin ${FTP_ADMIN_PASSWD}; passwd -d ftpuser ${FTP_USER_PASSWD}; \
	chown admin:admin /home/wp_data

CMD [ "vsftpd" ]