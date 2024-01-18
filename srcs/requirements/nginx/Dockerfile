FROM alpine:3.18.5

WORKDIR /etc/nginx

RUN apk --update --no-cache add nginx; \
	rm -rf /var/cache/apk/*; \
	chmod 775 /run/nginx; \
	mkdir ssl/

COPY ssl/* ssl/
COPY config/server.conf /etc/nginx/http.d/

ENTRYPOINT [ "nginx", "-g", "daemon off;" ]