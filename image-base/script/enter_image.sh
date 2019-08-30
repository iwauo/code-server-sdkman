#!/usr/bin/env bash
set -e
source ./common_settings.sh

set -x

docker rm -f $IMAGE_NAME || true

docker run \
  --name $IMAGE_NAME \
  --rm \
  -it \
  -v "${PWD}:/home/developer/project" \
  --entrypoint /bin/bash \
  $CURRENT
