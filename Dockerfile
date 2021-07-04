FROM index.docker.io/library/alpine:latest
RUN apk add php
RUN apk add tree
RUN apk add curl

# In case we wanted to hardcode the container image with the artifact
# COPY src/ /src/
# Default Entrypoint
ENTRYPOINT ["/usr/bin/php"]
# Default Arguments for the Entrypoint
CMD ["-f","index.php","-S","0.0.0.0:8080"]
