FROM ubuntu:latest

MAINTAINER Club_ciberseguridad_FIUM

ENV DEBIAN_FRONTEND noninteractive

RUN apt update && apt install -y net-tools \
        iputils-ping \
        curl \
        git \
        nano \
	openssh-server \
	cron

COPY ./resources/ /root/

ENTRYPOINT /root/script.sh && tail -f /dev/null
