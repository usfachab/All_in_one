FROM alpine:3.18.5

RUN <<E
apk --update
apk add php php-fpm php-phar curl
apk add nginx \
chmod 775 /run/nginx
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp
E

COPY ./entrypoint/wp.sh  /tmp

RUN chmod +x wp.sh


