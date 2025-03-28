#!/bin/bash

if [ -z "$1" ]
then
      echo "please inform version"
      exit 1
fi

#docker run leandrovo/ma-plugins:$1

docker run -e APPDYNAMICS_CONTROLLER_HOST_NAME=se-lab.saas.appdynamics.com -e APPDYNAMICS_CONTROLLER_PORT=443 -e APPDYNAMICS_CONTROLLER_SSL_ENABLED=true -e APPDYNAMICS_AGENT_ACCOUNT_ACCESS_KEY=hj6a4d7h2cuq -e APPDYNAMICS_AGENT_ACCOUNT_NAME=se-lab leandrovo/ma-plugins:$1

