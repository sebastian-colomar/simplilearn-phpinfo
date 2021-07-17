# simplilearn-phpinfo

```
docker image build --file Dockerfile --tag simplilearn-phpinfo:labs ./
docker image build --file Dockerfile-src --tag simplilearn-phpinfo:labs-src ./

docker container run --detach --entrypoint /usr/bin/php --env OWNER=Sebastian --name simplilearn-phpinfo --publish 81:8080 --restart always --user nobody --volume ${PWD}/src:/src:ro --workdir /src/ simplilearn-phpinfo:labs -f index.php -S 0.0.0.0:8080
docker container run --detach --entrypoint /usr/bin/php --env OWNER=Sebastian --name simplilearn-phpinfo-src --publish 82:8080 --restart always --user nobody --workdir /src/ simplilearn-phpinfo:labs -f index.php -S 0.0.0.0:8080
