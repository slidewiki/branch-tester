#!/bin/bash

echo "Stopping container"
docker stop slidewiki-branch-tester

echo "Removing old container"
docker rm slidewiki-branch-tester
