#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)

IMAGE=$(cat ${SCRIPT_DIR}/Dockerfile | grep 'LABEL image' | sed 's/LABEL image=//g')
TAG=$(cat ${SCRIPT_DIR}/Dockerfile | grep 'LABEL version' | sed 's/LABEL version=//g')

pushd ${SCRIPT_DIR}

docker build -t ${IMAGE}:${TAG} .

popd
