#!/usr/bin/env bash
set -e
source ./common_settings.sh
NAME=code-server-sdkman-kotlin

set -x
docker rm -f $NAME || true
docker run \
  --name $NAME \
  -it -p 8443:8443 \
  -v "${PWD}:/home/developer/project:delegated" \
  $CURRENT \
  --allow-http \
  --no-auth \

