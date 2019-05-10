#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/prod /tmp/.auth jenkins-prod@172.31.32.34:/tmp/
scp -i /opt/prod /home/ec2-user/jenkins-data/pipeline/jenkins/deploy/publish.sh jenkins-prod@172.31.32.34:/home/jenkins-prod/maven
ssh -i /opt/prod jenkins-prod@172.31.32.34 "/home/jenkins-prod/maven/publish.sh"
