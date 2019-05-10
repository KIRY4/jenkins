#!/bin/bash

export IMAGE=$(sed -n '1p' /tmp/.auth)
export BUILD_TAG=$(sed -n '2p' /tmp/.auth)
export PASS=$(sed -n '3p' /tmp/.auth)

docker login -u kiry4 -p $PASS
cd /home/jenkins-prod/maven && docker-compose up -d

