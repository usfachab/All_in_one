FROM alpine:3.18.5

RUN apk --update --no-cache add mariadb mariadb-client openrc && rm -rf /var/cache/apk/*

ARG DB_NAME DB_USER DB_PASSWORD DB_ROOT_PASSWORD

COPY ./script/setup /setup

RUN chmod +x /setup && ./setup

ENTRYPOINT [ "mariadbd", "--user=mysql" ]
