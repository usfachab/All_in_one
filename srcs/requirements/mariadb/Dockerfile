FROM alpine:3.18.5

RUN apk --update add mariadb mariadb-common mariadb-client openrc

RUN openrc && touch /run/openrc/softlevel

# ARG DATABASE_ROOT_PASS

RUN mkdir -p /var/lib/mysql

RUN chown -R mysql:mysql /var/lib/mysql

RUN /etc/init.d/mariadb setup

# RUN mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql

RUN rc-service mariadb start
	# && mysqladmin -u root password "$DATABASE_ROOT_PASS"
    # && mysql -u root -p"$DATABASE_ROOT_PASS" -e "UPDATE mysql.user SET Password=PASSWORD('$DATABASE_ROOT_PASS') WHERE User='root'" \
    # && mysql -u root -p"$DATABASE_ROOT_PASS" -e "DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1')" \
    # && mysql -u root -p"$DATABASE_ROOT_PASS" -e "DELETE FROM mysql.user WHERE User=''" \
    # && mysql -u root -p"$DATABASE_ROOT_PASS" -e "DELETE FROM mysql.db WHERE Db='test' OR Db='test\_%'" \
    # && mysql -u root -p"$DATABASE_ROOT_PASS" -e "FLUSH PRIVILEGES"

CMD [ "mariadbd", "--user=root" ]