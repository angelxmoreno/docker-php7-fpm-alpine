#!/bin/bash
NAME="docker-php7-fpm-alpine"
TAG=${1}
CONTAINER_NAME="axm_fpm_${TAG}"
IMAGE_NAME="angelxmoreno/${NAME}:${TAG}"

if [[ ${TAG} == "" ]]
then
    echo "Please provide a tag.";
    exit 1;
fi


CMD="docker stop ${CONTAINER_NAME}";
echo "Stopping container";
echo ${CMD};

CMD="docker rm ${CONTAINER_NAME}";
echo "Removing container";
echo ${CMD};

CMD="docker run -d --name ${CONTAINER_NAME} ${IMAGE_NAME}";
echo ${CMD};

${CMD}