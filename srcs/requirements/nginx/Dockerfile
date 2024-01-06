FROM alpine:3.18.5

WORKDIR /etc/nginx

RUN apk --update --upgrade --no-cache add nginx

RUN chmod 775 /run/nginx

RUN mkdir ssl/

COPY ssl/* ssl/

CMD [ "nginx", "-g", "daemon off;" ]