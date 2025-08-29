#!/bin/bash

if [ -z "$1" ]
then
      echo "please inform agent version"
      exit 1
fi

if [ -z "$2" ]; then
    echo "please inform domain"
    exit 1
fi

case "$2" in
    redis)
        echo "Selected domain: redis"
        docker buildx build --platform linux/amd64,linux/arm64 -t leandrovo/ma-plugins-$2:$1 -f DockerfileRedis .
        docker push leandrovo/ma-plugins-$2:$1
        ;;
    kafka)
        echo "Selected domain: kafka"
        ;;
    zoo)
        echo "Selected domain: zoo"
        ;;
    mongo)
        echo "Selected domain: mongo"
        ;;
    all)
        echo "Selected domain: all"
        docker push leandrovo/ma-plugins-all:$1
        ;;
    *)
        echo "invalid domain: $2, must be redis, kafka, zoo, mongo, or all"
        exit 1
        ;;
esac

#docker push leandrovo/ma-plugins:$1
