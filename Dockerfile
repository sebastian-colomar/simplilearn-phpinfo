FROM alpine
RUN apk add php
WORKDIR /src
COPY src .
