FROM alpine

LABEL io.whalebrew.name svn

RUN apk upgrade --no-cache
RUN apk add --update --no-cache subversion

ENTRYPOINT /usr/bin/svn
