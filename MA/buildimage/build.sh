#!/bin/bash

if [ -z "$1" ]
then
      echo "please inform version"
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
        docker buildx build --platform linux/amd64,linux/arm64 -t leandrovo/ma-plugins-$2:$1 -f Dockerfile .
        ;;
    *)
        echo "invalid domain: $2, must be redis, kafka, zoo, mongo, or all"
        exit 1
        ;;
esac


#docker buildx build --platform linux/amd64,linux/arm64 -t leandrovo/ma-plugins-$2:$1 -f Dockerfile .
