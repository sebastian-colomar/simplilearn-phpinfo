FROM index.docker.io/library/alpine:latest
RUN apk add php && apk add tree && apk add curl

CMD ["-f","index.php","-S","0.0.0.0:8080"]
ENTRYPOINT ["/usr/bin/php"]
ENV OWNER Sebastian
EXPOSE 8080
USER nobody
VOLUME /src/
WORKDIR /src/
