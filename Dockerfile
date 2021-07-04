FROM index.docker.io/library/alpine:latest
RUN apk add php
RUN apk add tree
RUN apk add curl

# Default Entrypoint
ENTRYPOINT ["/usr/bin/php"]
# Default Arguments for the Entrypoint
CMD ["-f","index.php","-S","0.0.0.0:8080"]
