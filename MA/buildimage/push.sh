#!/bin/bash

if [ -z "$1" ]
then
      echo "please inform agent version"
      exit 1
fi


docker push leandrovo/ma-plugins:$1
