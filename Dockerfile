FROM ubuntu:latest

RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update && \
    ln -fs /usr/share/zoneinfo/Europe/Moscow /etc/localtime && \
    apt-get install -y tzdata && \
    dpkg-reconfigure --frontend noninteractive tzdata

# Install pandoc & fonts and SVG image converter
RUN apt-get update && apt-get install -y \
	  pandoc texlive-xetex fonts-cmu librsvg2-bin
