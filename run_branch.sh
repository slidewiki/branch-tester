#!/bin/bash

docker run --name slidewiki-branch-tester --dns 8.8.8.8 -p 3000:3000 -e BRANCH=$1 slidewiki/branch-tester
