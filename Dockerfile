FROM arm64v8/alpine
MAINTAINER vbloher

ENV TS_VERSION=MatriX.104
ENV TS_ARCH=linux-arm64
ENV TZ=Europe/Kiev

EXPOSE 8090:8090

RUN echo $TZ > /etc/timezone && \
    apk update && apk add tzdata wget && \
    rm /etc/localtime && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata && \
    mkdir /torrserver/ && cd /torrserver/ && mkdir /db && \
    wget -O TorrServer -P /torrserver/ "https://github.com/YouROK/TorrServer/releases/download/$TS_VERSION/TorrServer-$TS_ARCH" && \
    chmod +x /torrserver/TorrServer

ENTRYPOINT ["/torrserver/TorrServer"]
CMD ["--path", "/torrserver/db"]
