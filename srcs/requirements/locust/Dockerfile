FROM alpine:3.18.5

RUN apk add --repository=https://dl-3.alpinelinux.org/alpine/v3.18/community/x86_64/

RUN apk --update add python3 py3-pip gcc python3-dev g++ linux-headers && ln -sf python3 /usr/bin/python

RUN pip3 install -U --pre locust

RUN mkdir -p /mnt/locust/

CMD locust -f /mnt/locust/locustfile.py