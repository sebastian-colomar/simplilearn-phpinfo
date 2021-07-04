FROM index.docker.io/library/alpine:latest
RUN apk add php
RUN apk add tree
RUN apk add curl

# In case we wanted to hardcode the container image with the artifact
# COPY src/ /src/

# In case you prefere to mount a volume instead
VOLUME /src

# In case you want to define the default working directory
WORKDIR /src

# Default Entrypoint
ENTRYPOINT ["/usr/bin/php"]

# Default Arguments for the Entrypoint
CMD ["-f","index.php","-S","0.0.0.0:8080"]

# In case you want to explicitly expose that port
EXPOSE 8080
