FROM alpine:3.18.5

WORKDIR /var/www/wordpress

RUN apk --update --no-cache --upgrade \ 
	add php php-fpm php-mysqli php-phar php-mbstring curl

ARG WP_CLI_PHAR_URL="https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar"

RUN curl -OL "$WP_CLI_PHAR_URL"

RUN chmod +x wp-cli.phar; mv wp-cli.phar /usr/local/bin/wp

COPY ./script/setup .

RUN chmod +x setup

ENTRYPOINT [ "/bin/sh", "./setup" ]

CMD ["/usr/sbin/php-fpm81", "--nodaemonize"]