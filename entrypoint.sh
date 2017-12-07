#!/bin/bash

echo ">>>> Cloning project"
git clone --recursive https://github.com/slidewiki/slidewiki-platform /nodeApp
cd /nodeApp

echo ">>>> Checking out branch $BRANCH"
git checkout $BRANCH

echo ">>>> Building"
./make_version.sh
npm install
npm run install

if [ "$USE_CUSTOM_MICROSERVICES"="0" ]
then
  echo ">>>> Using default configuration from repository"
  mv /nodeApp/configs/microservices.sample.js /nodeApp/configs/microservices.js
else
  echo ">>>> Using custom microservice configuration from /config/microservices.json"
  cp /config/microservices.js /nodeApp/configs/microservices.js
fi

echo ">>>> Running platform in production mode"
RUNNING=$(git symbolic-ref --short HEAD)
echo ">>>> Active branch: $RUNNING"

npm run build
