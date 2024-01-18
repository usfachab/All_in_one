FROM alpine:3.18.5

RUN apk --update --no-cache add mariadb mariadb-client openrc && rm -rf /var/cache/apk/*

RUN mkdir -p /var/lib/mysql /run/mysqld \
    && chown -R mysql:mysql /var/lib/mysql /run/mysqld \
	&& openrc && touch /run/openrc/softlevel \
	&& /etc/init.d/mariadb setup \
    && sed -i "s/\bskip-networking\b/port=3306/g" /etc/my.cnf.d/mariadb-server.cnf

COPY ./script/setup /setup
RUN chmod +x /setup

ENTRYPOINT [ "/bin/sh", "/setup" ]
CMD [ "mariadbd", "--user=mysql" ]


# FROM debian:bullseye

# RUN apt update && apt install -y mariadb-server && apt autoclean

# COPY ./script/setup .

# RUN chmod 777 setup

# # RUN service mariadb start

# ENTRYPOINT [ "./setup" ]
# CMD ["mariadbd"]

# FROM debian:bullseye-slim

# RUN apt update && apt install -y mariadb-server  && apt autoclean

# RUN sed -i "s|.*bind-address\s*=.*|bind-address=0.0.0.0|g" ./etc/mysql/mariadb.conf.d/50-server.cnf

# COPY ./script/setup .

# RUN chmod 777 setup

# RUN service mariadb start && ./setup

# CMD ["mysqld"]
