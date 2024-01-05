# FROM alpine:3.18.5

# RUN apk --update --no-cache --upgrade \
#     add mariadb mariadb-client

# RUN mkdir /run/mysqld
# RUN mkdir -p /var/lib/mysql
# RUN chown -R mysql:mysql /var/lib/mysql

# RUN echo "datadir=/var/lib/mysql" >> /etc/my.cnf

# RUN mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql

# RUN sed -i "s|.*bind-address\s*=.*|bind-address=0.0.0.0|g" /etc/my.cnf
# RUN sed -i "s|.*bind-address\s*=.*|bind-address=0.0.0.0|g" /etc/my.cnf.d/mariadb-server.cnf



# CMD [ "mariadbd", "--user=root" ]

FROM debian:buster

RUN apt update \
   && apt install -y mariadb-server

RUN rm ./etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./conf/50-server.cnf ./etc/mysql/mariadb.conf.d

ARG DB_NAME DB_USER DB_PASSWORD DB_ROOT_PASSWORD

COPY ./conf/script.sh .
RUN chmod 777 script.sh

RUN service mysql start && ./script.sh

CMD ["mysqld"]