#!/usr/bin/env bash

DOCKER_IMAGE=crops-poky-cooker:1.0
PROJECT_PATH="$PWD"

# run docker image 
echo "run docker image ..."
docker run --rm -it \
    -v "${PROJECT_PATH}:${PROJECT_PATH}" \
    -v $(readlink -f $SSH_AUTH_SOCK):/ssh-agent -e SSH_AUTH_SOCK=/ssh-agent \
    -w "${PROJECT_PATH}" \
    "${DOCKER_IMAGE}"
