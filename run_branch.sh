#!/bin/bash

if [[ -z "$2" ]]; then
  docker run --name slidewiki-branch-tester --dns 8.8.8.8 -p 3000:3000 -e BRANCH=$1 slidewiki/branch-tester
else
  echo "NOTICE: Using custom configuration to run platform!"
  cp $2 ./config/microservices.js
  docker run --name slidewiki-branch-tester --dns 8.8.8.8 -p 3000:3000 -e BRANCH=$1 -v $(pwd)/config:/config slidewiki/branch-tester
fi
