#!/bin/bash
NAME="docker-php7-fpm-alpine"
TAG=${1}
MODE=${2}

if [[ ${TAG} == "" ]]
then
    echo "Please provide a tag.";
    exit 1;
fi

if [[ ${MODE} == "" ]]
then
   MODE="dev"
fi

if [[ ${MODE} == "prod" ]]
then
    CMD="docker build --no-cache --compress --squash --tag=angelxmoreno/${NAME}:${TAG} ."
else
    CMD="docker build --tag=angelxmoreno/${NAME}:${TAG} .";
fi

echo ${CMD};

${CMD}