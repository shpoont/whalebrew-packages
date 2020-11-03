FROM alpine
RUN apk upgrade --no-cache

RUN apk add --update --no-cache aria2

ENTRYPOINT /usr/bin/aria2c

LABEL io.whalebrew.name aria2c