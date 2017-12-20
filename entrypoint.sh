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

if [ -f /config/microservices.js ]
then
  echo ">>>> Using custom microservice configuration"
  cp /config/microservices.js /nodeApp/configs/microservices.js
else
  echo ">>>> Using default configuration microservices.sample.js"
  mv /nodeApp/configs/microservices.sample.js /nodeApp/configs/microservices.js
fi

RUNNING=$(git symbolic-ref --short HEAD)
echo ">>>> Running branch: $RUNNING"

npm run build
