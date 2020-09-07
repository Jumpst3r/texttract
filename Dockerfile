FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive
ENV HOME /root
RUN apt-get update && \
	apt-get -y -q install python-dev libxml2-dev libxslt1-dev antiword unrtf poppler-utils pstotext tesseract-ocr \
flac ffmpeg lame libmad0 libsox-fmt-mp3 sox libjpeg-dev swig libpulse-dev

WORKDIR /input

COPY . /input/
RUN apt update && apt install -yq python3-pip
RUN pip3 install --upgrade pip && \
    pip3 install textract && \
    mkdir /output
RUN chmod +x script.sh && chmod -R 777 /input/
CMD /bin/bash
