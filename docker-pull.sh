#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <image_name>"
    exit 1
fi

# 定义基础镜像地址
DAOCLOUD_REPO="docker.m.daocloud.io/library/"


IMAGE_NAME="$DAOCLOUD_REPO$1"


echo "Pulling image: $IMAGE_NAME"
docker pull "$IMAGE_NAME"


if [ $? -eq 0 ]; then
    echo "Image pulled successfully."
else
    echo "Failed to pull the image. Please check the image name and try again."
fi
