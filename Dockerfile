FROM index.docker.io/library/alpine:latest
RUN apk add php && apk add tree && apk add curl

# In case we wanted to hardcode the container image with the artifact
# COPY src/ /src/

# OPTIONAL INSTRUCTIONS 
# THAT WILL BE OVERRIDEN BY THE COMMAND LINE:
# docker container run --detach --entrypoint /usr/bin/php --env OWNER=Sebastian --name simplilearn-phpinfo --publish 80:8080 --rm --user nobody --volume ${PWD}/src:/src:ro --workdir /src simplilearn-phpinfo:labs -f index.php -S 0.0.0.0:8080

# Default Arguments for the Entrypoint
CMD ["-f","index.php","-S","0.0.0.0:8080"]

# Default Entrypoint
ENTRYPOINT ["/usr/bin/php"]

# In order to export enviroment variables
ENV OWNER Sebastian

# In case you want to explicitly expose that port
EXPOSE 8080

USER nobody

# In case you prefere to mount a volume instead
VOLUME /src

# In case you want to define the default working directory
WORKDIR /src
