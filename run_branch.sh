#!/bin/bash

docker run --name slidewiki-branch-tester -p 3000:3000 -e BRANCH=$1 slidewiki/branch-tester
