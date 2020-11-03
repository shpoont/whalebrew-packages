FROM alpine
RUN apk upgrade --no-cache

RUN apk add --update --no-cache subversion

ENTRYPOINT /usr/bin/svn

LABEL io.whalebrew.name svn