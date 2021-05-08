# download Alpine docker image (alpine operating system WITHOUT any kernel BECAUSE containers use the kernel of the HOST machine)
# that is binaries, libraries, etc...
FROM alpine
# install PHP inside the container (similar to "apt install php")
RUN apk add php
# create folder /app inside the container
WORKDIR /app
# copy the source code into the container
COPY src/index.php /app
# run the following command inside the container:
# php -f index.php -S 0.0.0.0:8080
# run the following command
ENTRYPOINT ["php"]
# pass these arguments to the command
CMD ["-f", "index.php", "-S", "0.0.0.0:8080"]
# without brackets: sh -c "php -f index.php -S 0.0.0.0:8080" -> PID 1 = sh
# with brackets: php -f index.php -S 0.0.0.0:8080 -> PID 1 = php
# expose port 8080 inside the container
EXPOSE 8080
