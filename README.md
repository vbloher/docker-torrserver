# Docker Arm64 container for TorrServer Matrix
Run TorrServer Matrix latest on docker container (arm64)

# Timezone
Default timezone for container is set to Europe/Kiev

# Docker compose config example
```
version: '2.1'
services:

  torrservermatrix:
    image: vbloher/torrserver:latest
    container_name: torrservermatrix
    volumes:
      - ~/torrserver/db:/torrserver/db
    ports:
      - 8090:8090
    restart: unless-stopped
```
```~/torrserver/db``` is the path at host for torrserver db, use yours<br>Default port of web application is ```8090```

# Links
[TorrServer repository](https://github.com/YouROK/TorrServer)<br>
[TorrServe repository](https://github.com/YouROK/TorrServe)<br>
[TorrServer Adder (Google Chrome extension)](https://chrome.google.com/webstore/detail/torrserver-adder/ihphookhabmjbgccflngglmidjloeefg)<br>
[NUM releases](https://github.com/YouROK/releases/releases)<br>
[Dockerhub repository](https://hub.docker.com/r/vbloher/torrserver)
