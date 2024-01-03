FROM alpine:3.18.5

RUN apk --update add nginx

RUN chmod 775 /run/nginx

# RUN openrc && touch /run/openrc/softlevel

CMD [ "nginx", "-g", "daemon off;" ]