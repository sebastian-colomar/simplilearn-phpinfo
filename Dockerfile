FROM alpine
RUN apt install php
COPY src src
