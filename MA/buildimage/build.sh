#!/bin/bash

if [ -z "$1" ]
then
      echo "please inform version"
      exit 1
fi

#docker build --no-cache -t leandrovo/ma-plugins:$1 -f Dockerfile .

docker buildx build --platform linux/amd64,linux/arm64 -t leandrovo/ma-plugins:$1 -f Dockerfile .
