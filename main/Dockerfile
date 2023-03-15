FROM alpine
RUN apk add php
COPY src .

ENTRYPOINT ["php"]
CMD ["-f","index.php","-S","0.0.0.0:8080"]
EXPOSE 8080
