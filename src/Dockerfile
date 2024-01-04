FROM alpine:3.18.5

RUN apk --update --no-cache --upgrade \
    add nginx php php-fpm php-mysqli curl mariadb mariadb-client

ADD startup /startup

RUN chmod +x /startup

RUN curl -o wordpress.tar.gz -fSL "https://wordpress.org/wordpress-6.4.2.tar.gz"

RUN tar -xzf wordpress.tar.gz -C /var/www/; rm wordpress.tar.gz

RUN adduser -S -u 1000 -G www-data www-data

RUN find /var/www/ -type d -exec chmod 755 {} \;

RUN find /var/www/ -type f -exec chmod 644 {} \;

RUN chown -R www-data:www-data /var/www/

RUN mv /var/www/wordpress/wp-config-sample.php /var/www/wordpress/wp-config.php

RUN mkdir -p /run/mysqld
RUN mkdir -p /var/lib/mysql
RUN chown -R mysql:mysql /var/lib/mysql

RUN echo "datadir=/var/lib/mysql" >> /etc/my.cnf


RUN mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql

ENV MYSQL_ROOT_PASSWORD=toor
ENV MYSQL_DATABASE=db
ENV MYSQL_USER=user
ENV MYSQL_PASSWORD=password

RUN sed -i "s|.*bind-address\s*=.*|bind-address=127.0.0.1|g" /etc/my.cnf
RUN sed -i "s|.*bind-address\s*=.*|bind-address=127.0.0.1|g" /etc/my.cnf.d/mariadb-server.cnf

CMD [ "/bin/ash", "/startup" ]
