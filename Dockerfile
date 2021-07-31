# docker image pull library/alpine:latest
FROM library/alpine:latest

# docker container run --detach --entrypoint /bin/sh --name alpine-shell --tty library/alpine:latest
# docker container exec alpine-shell /usr/bin/which curl
# docker container exec alpine-shell /usr/bin/which php
# docker container exec alpine-shell /usr/bin/which apk
# apk add = apt install
# docker container exec alpine-shell /sbin/apk add curl
# docker container exec alpine-shell /sbin/apk add php
RUN apk add curl
RUN apk add php
