FROM ubuntu:focal
MAINTAINER Anton Kiselev

ENV TS_VERSION=MatriX.93
ENV TZ=Europe/Moscow

EXPOSE 8090:8090

RUN echo $TZ > /etc/timezone && \
    apt-get update && apt-get install -y tzdata wget && \
    rm /etc/localtime && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata && \
    mkdir /torrserver/ && cd /torrserver/ && mkdir /db && \
    wget -O TorrServer -P /torrserver/ "https://github.com/YouROK/TorrServer/releases/download/$TS_VERSION/TorrServer-linux-amd64" && \
    chmod +x /torrserver/TorrServer

ENTRYPOINT ["/torrserver/TorrServer"]
CMD ["--path", "/torrserver/db"]
