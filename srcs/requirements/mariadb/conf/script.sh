#!/bin/bash

echo "CREATE DATABASE IF NOT EXISTS db;" | mysql
echo "CREATE USER 'user'@'%' IDENTIFIED BY 'password';" | mysql
echo "GRANT ALL PRIVILEGES ON db.* TO 'user'@'%';" | mysql
echo "FLUSH PRIVILEGES;" | mysql
echo "use mysql;UPDATE user SET Password=PASSWORD('toor') WHERE user='root'; \
        UPDATE user SET plugin = '' WHERE user = 'root';FLUSH PRIVILEGES;" | mysql

