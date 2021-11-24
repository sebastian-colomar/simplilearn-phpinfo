# TO PULL DOCKER IMAGE
# docker image pull library/apline:latest
FROM library/alpine:latest

# docker container run --entrypoint /usr/bin/which --rm library/alpine:latest apk
# docker container run --detach --entrypoint /bin/sh --name alpine-shell --tty library/alpine:latest

# TO CONFIRM
# docker container exec alpine-shell /usr/bin/which php
# docker container exec alpine-shell /usr/bin/which curl
# docker container exec alpine-shell /usr/bin/which apk

# TO INSTALL
# docker container exec alpine-shell /sbin/apk add curl
# docker container exec alpine-shell /sbin/apk add php
RUN apk add curl
RUN apk add php
