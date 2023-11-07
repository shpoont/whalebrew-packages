FROM python:3-alpine

WORKDIR /workdir

LABEL io.whalebrew.name youtube-dl

RUN apk add --no-cache ffmpeg
RUN pip install --no-cache-dir youtube-dl

ENTRYPOINT ["youtube-dl"]
