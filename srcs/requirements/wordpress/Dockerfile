FROM alpine:3.18.5

# WORKDIR /tmp

# RUN apk --update add php php-fpm curl php-mysqli

# make sure you can use HTTPS
RUN apk --update add ca-certificates

RUN apk update && \
    apk upgrade --no-cache && \
    apk add --update \
    --repository=http://dl-4.alpinelinux.org/alpine/latest-stable/community \
    --repository=http://dl-4.alpinelinux.org/alpine/latest-stable/main \
    mariadb-client \
    #rsyslog \
    #icu-libs \
    wget curl \
    openssl
    #openssh-client

RUN apk add --update \
    --repository=http://dl-4.alpinelinux.org/alpine/latest-stable/community \
    --repository=http://dl-4.alpinelinux.org/alpine/latest-stable/main \
    php \
    #php-common \
    php-fpm \
    #php-intl \
    php-curl \
    #php-gd \
    #php-opcache \
    php-openssl \
    #php-json \
    #php-phar \
    #php-ctype \
    php-pdo \
    php-pdo_mysql \
    php-mysqli \
    php-mysqlnd
    #php-pear \
    #php-xml \
    #php-dom \
    #php-soap \
    #php-bcmath \
    #php-zip \
    #php-mbstring \
    #php-session \
    #php-zlib \
    #php-pcntl \
    #php-posix \
    #php-sodium \
    #php-iconv \
    #php-xmlreader \
    #php-redis

RUN set -ex; \
	curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-6.4.2.tar.gz"; \
	mkdir -p /var/www; \
	tar -xzf wordpress.tar.gz -C /var/www/; \
	rm wordpress.tar.gz; \
	chown -R nobody:nobody /var/www/wordpress; \
	mv /var/www/wordpress/wp-config-sample.php /var/www/wordpress/wp-config.php

CMD ["/usr/sbin/php-fpm82", "--nodaemonize"]