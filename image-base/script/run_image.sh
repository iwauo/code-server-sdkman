#!/usr/bin/env bash
set -e
source ./common_settings.sh

set -x

docker rm -f $IMAGE_NAME || true

docker run \
  --name $IMAGE_NAME \
  --rm \
  -it \
  -p 8000:8080 \
  -v "${PWD}:/home/developer/project" \
  $CURRENT \
  --allow-http \
  --no-auth
