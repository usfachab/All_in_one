FROM alpine:3.18.5

RUN apk --update --no-cache add redis; \
	rm -rf /var/cache/apk/*; \
	sed -i 's/\bmaxmemory <bytes>\b/maxmemory 128M/g' /etc/redis.conf;\
	sed -i 's/\bbind 127.0.0.1\b/bind 0.0.0.0/g' /etc/redis.conf;\
	sed -i 's/\bprotected-mode yes\b/protected-mode no/g' /etc/redis.conf

ENTRYPOINT [ "redis-server", "/etc/redis.conf" ]