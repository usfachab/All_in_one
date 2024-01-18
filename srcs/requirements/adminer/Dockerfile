FROM alpine:3.18.5

RUN apk --update --no-cache add lighttpd php-cgi php-session php-mysqli; \
	mkdir -p /run/lighttpd/ && \
	chown lighttpd:lighttpd /run/lighttpd/

COPY config/lighttpd.conf /etc/lighttpd
COPY ./src/index.php /var/www/localhost/htdocs

RUN find /var/www/ -type d -exec chmod 755 {} \; && \
	find /var/www/ -type f -exec chmod 644 {} \; && \
	chown -R lighttpd:lighttpd /var/www/

ENTRYPOINT lighttpd -D -f /etc/lighttpd/lighttpd.conf