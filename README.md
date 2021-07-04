# simplilearn-phpinfo

```
docker image build --file Dockerfile --tag simplilearn-phpinfo:labs src/

docker container run --detach --entrypoint /usr/bin/php --name simplilearn-phpinfo --publish 80:8080 --rm --user nobody --volume ${PWD}/src:/src:ro --workdir /src simplilearn-phpinfo:labs -f index.php -S 0.0.0.0:8080
