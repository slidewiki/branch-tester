#!/bin/bash

if [[ -z "$2" ]]; then
  echo "NOTICE: Using custom configuration to run platform!"
  docker run --name slidewiki-branch-tester --dns 8.8.8.8 -p 3000:3000 -e BRANCH=$1 -v $2:/config/microservices.js slidewiki/branch-tester
else
  docker run --name slidewiki-branch-tester --dns 8.8.8.8 -p 3000:3000 -e BRANCH=$1 slidewiki/branch-tester
fi
