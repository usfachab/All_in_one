FROM alpine:3.18.5

RUN apk --update add nginx openrc

RUN chmod 775 /run/nginx
RUN openrc && touch /run/openrc/softlevel

ENTRYPOINT [ "nginx", "-g", "daemon off;" ]