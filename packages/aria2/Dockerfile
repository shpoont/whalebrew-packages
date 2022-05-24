FROM alpine

LABEL io.whalebrew.name aria2c

RUN apk upgrade --no-cache
RUN apk add --update --no-cache aria2

ENTRYPOINT /usr/bin/aria2c
