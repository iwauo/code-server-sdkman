#!/usr/bin/env bash
set -e
source ./common_settings.sh

set -x
docker rm -f $IMAGE_NAME || true
docker run \
  --rm \
  --name $IMAGE_NAME \
  -it \
  -p 8080:8080 \
  -v "${PWD}:/home/developer/project:delegated" \
  $CURRENT \
  --allow-http \
  --auth none

