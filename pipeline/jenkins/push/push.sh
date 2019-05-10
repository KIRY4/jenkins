#!/bin/bash

echo "*****************************"
echo "** Push image to Dockerhub **"
echo "*****************************"

IMAGE="maven-project"

echo "*** Login to Dockerhub ***"
docker login -u kiry4 -p $PASS

echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG kiry4/$IMAGE:$BUILD_TAG

echo "*** Pushing image to Dockerhub ***"
docker push kiry4/$IMAGE:$BUILD_TAG
