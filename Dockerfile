FROM python:alpine

LABEL maintainer="Luis Miguel Vicente Fuentes <kijart@gmail.com>"

RUN apk update
RUN apk add ffmpeg

RUN pip install --upgrade pip
RUN pip install youtube_dl

COPY ./youtube-dl.conf /etc/youtube-dl.conf

WORKDIR /media

ENTRYPOINT ["youtube-dl"]
