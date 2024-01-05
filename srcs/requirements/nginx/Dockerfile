FROM alpine:3.18.5

RUN apk --update --upgrade --no-cache add nginx

RUN chmod 775 /run/nginx

CMD [ "nginx", "-g", "daemon off;" ]