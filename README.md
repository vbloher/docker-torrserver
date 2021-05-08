# Docker container for TorrServer Matrix
Run TorrServer Matrix v93 on docker container

# Timezone
Default timezone for container is set to Europe/Kiev

# Stack
```
version: '2.1'
services:

  torrservermatrix:
    image: soulassassin85/torrserver:latest
    container_name: torrservermatrix
    hostname: torrservermatrix
    volumes:
      - /home/docker_storage/torrservermatrix:/torrserver/db
    ports:
      - 8090:8090
    restart: unless-stopped
```
```/home/docker_storage/torrservermatrix``` is the path at host for torrserver db, use yours<br>Default port of web application is ```8090```

# Links
[TorrServer repository](https://github.com/YouROK/TorrServer)<br>
[TorrServe repository](https://github.com/YouROK/TorrServe)<br>
[TorrServer Adder (Google Chrome extension)](https://chrome.google.com/webstore/detail/torrserver-adder/ihphookhabmjbgccflngglmidjloeefg)
[NUM releases](https://github.com/YouROK/releases/releases)
[Dockerhub repository](https://hub.docker.com/r/soulassassin85/torrserver)
