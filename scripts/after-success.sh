#!/bin/bash
DOCKER_ENV=''
DOCKER_TAG=''
case "$TRAVIS_BRANCH" in
  "master")
    DOCKER_ENV=production
    DOCKER_TAG=latest
    ;;
  "develop")
    DOCKER_ENV=development
    DOCKER_TAG=dev
    ;;    
esac

docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
docker build -f ./src/Lockbox.Server/Dockerfile.$DOCKER_ENV -t lockbox.server:$DOCKER_TAG ./src/Lockbox.Server
docker tag lockbox.server:$DOCKER_TAG $DOCKER_USERNAME/lockbox.server:$DOCKER_TAG
docker push $DOCKER_USERNAME/lockbox.server:$DOCKER_TAG