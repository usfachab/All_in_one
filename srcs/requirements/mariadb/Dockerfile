FROM debian:buster

RUN apt update && apt install -y mariadb-server

RUN sed -i "s|.*bind-address\s*=.*|bind-address=0.0.0.0|g" ./etc/mysql/mariadb.conf.d/50-server.cnf

ARG MYSQL_DATABASE MYSQL_USER MYSQL_PASSWORD MYSQL_ROOT_PASSWORD

COPY ./script/setup .

RUN chmod 777 setup

RUN service mysql start && ./setup

CMD ["mysqld"]

# FROM alpine:3.18.5

# RUN apk --update add mariadb mariadb-common mariadb-client openrc

# RUN openrc && touch /run/openrc/softlevel

# RUN mkdir -p /var/lib/mysql

# RUN chown -R mysql:mysql /var/lib/mysql

# RUN sed -i "s|.*bind-address\s*=.*|bind-address=0.0.0.0|g" /etc/my.cnf
# RUN sed -i "s|.*bind-address\s*=.*|bind-address=0.0.0.0|g" /etc/my.cnf.d/mariadb-server.cnf

# RUN mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql

# RUN /etc/init.d/mariadb setup

# COPY ./conf/script .

# RUN chmod 777 script

# RUN rc-service mariadb start && ./script

# CMD [ "mariadbd", "--user=root" ]