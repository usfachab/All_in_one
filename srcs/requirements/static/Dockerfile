FROM alpine:3.18.5

RUN apk --update --no-cache add lighttpd

COPY config/lighttpd.conf /etc/lighttpd
COPY src/index.html /var/www/localhost/htdocs

RUN chown -R lighttpd:lighttpd /var/www

ENTRYPOINT [ "/usr/sbin/lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf" ]
