## -*- docker-image-name: "mcreations/openwrt-sftp" -*-

FROM mcreations/openwrt-x64
MAINTAINER Kambiz Darabi <darabi@m-creations.net>

ENV SFTP_USER sftp
ENV SFTP_PASS changeit

ADD image/root/ /

RUN opkg update &&\
    opkg install --force-checksum openssh-sftp-server openssh-server shadow-useradd shadow-groupadd shadow-usermod openssl-util &&\
    rm /tmp/opkg-lists/*

EXPOSE 22

CMD ["/start-ssh"]
