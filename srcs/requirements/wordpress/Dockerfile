FROM alpine:3.18.5

WORKDIR /var/www/wordpress

RUN apk --update --no-cache add php php-fpm php-mysqli php-mbstring php-tokenizer \
	php-gd php-xml php-phar php-curl wget curl ncftp php-session; \
	curl -OL "https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar" \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp; \
	rm -rf /var/cache/apk/*; \
	wp core download --path=/var/www/wordpress; \
	addgroup -g 1000 www && adduser -SH -u 1000 -G www www

COPY ./script/setup /tmp
RUN chmod +x /tmp/setup

ENTRYPOINT [ "/bin/sh", "/tmp/setup" ]
CMD ["/usr/sbin/php-fpm81", "--nodaemonize"]