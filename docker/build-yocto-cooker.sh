#!/usr/bin/env bash

DOCKER_IMAGE="crops-poky-cooker:1.0"
DOCKERFILE_PATH=dockerfile

# build image or verify it
echo "building docker image '${DOCKER_IMAGE}' ..."
docker build -t "${DOCKER_IMAGE}" - < "${DOCKERFILE_PATH}"
