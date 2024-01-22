FROM alpine:3.18.5

ARG FTP_ADMIN_PASSWD FTP_USER_PASSWD HOST_IP_ADDRESS

RUN apk --update --upgrade --no-cache add vsftpd; rm -rf /var/cache/apk/*

RUN addgroup -g 1000 admin && adduser -Du 1000 -G admin admin; \
	passwd -d admin ${FTP_ADMIN_PASSWD}; \
	addgroup -g 1001 ftpuser && adduser -Du 1001 -G ftpuser ftpuser; \
	passwd -d ftpuser ${FTP_USER_PASSWD}

RUN mkdir -p /var/www/wordpress; chown -R admin:admin /var/www/wordpress

COPY config/vsftpd.conf /etc/vsftpd.conf

RUN echo -e "\npasv_address=${HOST_IP_ADDRESS}" >> /etc/vsftpd.conf

ENTRYPOINT [ "vsftpd" ]