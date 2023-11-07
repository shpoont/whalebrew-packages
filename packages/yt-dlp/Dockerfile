FROM python:3-alpine

WORKDIR /workdir

LABEL io.whalebrew.name yt-dlp

RUN apk add --no-cache ffmpeg
RUN pip install --no-cache-dir yt-dlp

ENTRYPOINT ["yt-dlp"]
