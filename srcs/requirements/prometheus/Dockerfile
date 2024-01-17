FROM alpine:3.18.5

WORKDIR /tmp

RUN apk --update add curl && \
	curl -OL "https://github.com/prometheus/prometheus/releases/download/v2.49.1/prometheus-2.49.1.linux-amd64.tar.gz" && \
	tar -xvf "prometheus-2.49.1.linux-amd64.tar.gz"; \
	mv prometheus-2.49.1.linux-amd64 prometheus; \
	mv prometheus/prometheus /usr/local/bin; \
	rm -fr prometheus-2.49.1.linux-amd64.tar.gz

CMD [ "prometheus", "--config.file=/tmp/prometheus/prometheus.yml" ]



