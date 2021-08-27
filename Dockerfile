FROM arm64v8/alpine
MAINTAINER vbloher

# Environment vars for build
ENV TS_VERSION=MatriX.104
ENV TS_ARCH=linux-arm64
ENV TZ=Europe/Kiev

# Expose torrserver default port
EXPOSE 8090:8090

# Setup timezone and install torrserver
RUN apk update && apk add tzdata wget && \
    cp /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone && \
    mkdir /torrserver/ && cd /torrserver/ && mkdir /db && \
    wget -O TorrServer -P /torrserver/ "https://github.com/YouROK/TorrServer/releases/download/$TS_VERSION/TorrServer-$TS_ARCH" && \
    chmod +x /torrserver/TorrServer

# Setup entrypoint
ENTRYPOINT ["/torrserver/TorrServer"]
CMD ["--path", "/torrserver/db"]
