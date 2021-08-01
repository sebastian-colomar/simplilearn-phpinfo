GITHUB_USERNAME=binoy2
GITHUB_PROJECT=simplilearn-phpinfo
GITHUB_BRANCH=2021-08

git clone https://github.com/${GITHUB_USERNAME}/${GITHUB_PROJECT}
cd ${GITHUB_PROJECT}
git pull
git checkout ${GITHUB_BRANCH}

docker image build --file Dockerfile-single-line --tag ${GITHUB_USERNAME}/${GITHUB_PROJECT}:single ./
docker container run --cpus 0.050 --detach --entrypoint /usr/bin/php --memory 10M --name ${GITHUB_PROJECT}_single --publish 80:8080 --read-only --rm --user nobody --volume ${PWD}/src:/src:ro --workdir /src ${GITHUB_USERNAME}/${GITHUB_PROJECT}:single -f index.php -S 0.0.0.0:8080

docker container logs ${GITHUB_PROJECT}_single 
docker container top ${GITHUB_PROJECT}_single 
docker container stats --no-stream ${GITHUB_PROJECT}_single 
