# FROM alpine:3.18.5

# # RUN apk --update add mariadb mariadb-client openrc

# # RUN rc-update add mariadb default

# # ARG DATABASE_ROOT_PASS="secret"

# # # RUN mysqladmin -u root password "$DATABASE_ROOT_PASS" \
# # #     && mysql -u root -p "$DATABASE_ROOT_PASS" -e "UPDATE mysql.user SET Password=PASSWORD('$DATABASE_ROOT_PASS') WHERE User='root'" \
# # #     && mysql -u root -p "$DATABASE_ROOT_PASS" -e "DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1')" \
# # #     && mysql -u root -p "$DATABASE_ROOT_PASS" -e "DELETE FROM mysql.user WHERE User=''" \
# # #     && mysql -u root -p "$DATABASE_ROOT_PASS" -e "DELETE FROM mysql.db WHERE Db='test' OR Db='test\_%'" \
# # #     && mysql -u root -p "$DATABASE_ROOT_PASS" -e "FLUSH PRIVILEGES"

# # # RUN rc-service mariadb restart
# # # 
# # # 

# # RUN mkdir /run/mysqld


# # RUN mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql


# # CMD [ "mariadbd", "--user=root" ]

# # Use Alpine Linux as the base image
# FROM alpine:latest

# # Install MariaDB
# RUN apk --update --no-cache add mariadb mariadb-client openrc


# RUN openrc && touch /run/openrc/softlevel

# # Copy custom configuration if needed
# # COPY my.cnf /etc/my.cnf

# RUN mkdir /run/mysqld

# RUN mkdir -p /var/lib/mysql

# RUN chown -R mysql:mysql /var/lib/mysql

# RUN echo "datadir=/var/lib/mysql" >> /etc/my.cnf


# RUN rc-service mariadb setup

# # RUN rc-service mariadb start

# # RUN mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql

# # Create a volume for the MariaDB data
# # VOLUME /var/lib/mysql

# # Expose the default MariaDB port
# # EXPOSE 3306

# # Set up the entry point to start MariaDB
# CMD [ "mariadbd", "--user=root" ]

FROM alpine:3.18.5

ENV TERM ansi

EXPOSE 3306

RUN apk update
RUN apk add mariadb mariadb-client

RUN mkdir /run/mysqld
RUN mkdir -p /var/lib/mysql
RUN chown -R mysql:mysql /var/lib/mysql

ADD startup /startup
RUN chmod 700 /startup



ENTRYPOINT ["/startup"]


