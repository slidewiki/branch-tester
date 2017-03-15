#!/bin/bash

echo ">>>> Cloning project"
git clone --recursive https://github.com/slidewiki/slidewiki-platform /nodeApp
cd /nodeApp

echo ">>>> Checking out branch $BRANCH"
git checkout $BRANCH

echo ">>>> Building"
mv /nodeApp/configs/microservices.sample.js /nodeApp/configs/microservices.js
./make_version.sh
npm install
npm run install

echo ">>>> Running platform in production mode"
RUNNING=$(git symbolic-ref --short HEAD)
echo ">>>> Active branch: $RUNNING"
npm run build
