FROM ubuntu:latest

MAINTAINER Club_ciberseguridad_FIUM

ENV DEBIAN_FRONTEND noninteractive

RUN apt update && apt install -y net-tools \
        iputils-ping \
        curl \
        git \
        nano \
        openssh-server \
        cron \
        sudo \
        vim \
	mariadb-server \
	p7zip-full

COPY ./resources/ /root/
COPY ./page/ /var/www/html

ENTRYPOINT /root/script.sh  && tail -f /dev/null
