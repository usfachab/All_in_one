FROM alpine:3.18.5

WORKDIR /etc/nginx

RUN apk --update --no-cache add nginx && rm -rf /var/cache/apk/*

RUN chmod 775 /run/nginx

RUN mkdir ssl/

COPY ssl/* ssl/

CMD [ "nginx", "-g", "daemon off;" ]