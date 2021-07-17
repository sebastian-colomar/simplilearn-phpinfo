FROM index.docker.io/library/alpine:latest
RUN apk add php && apk add tree && apk add curl
