#!/bin/bash

if [[ -z "$2" ]]; then
  docker run --name slidewiki-branch-tester --dns 8.8.8.8 -p 3000:3000 -e BRANCH=$1 slidewiki/branch-tester
else
  echo "NOTICE: Using custom configuration to run platform!"
  cp $2 config
  docker run --name slidewiki-branch-tester --dns 8.8.8.8 -p 3000:3000 -e BRANCH=$1 -e USE_CUSTOM_MICROSERVICES=1 -v $2:/config/microservices.js slidewiki/branch-tester
fi
