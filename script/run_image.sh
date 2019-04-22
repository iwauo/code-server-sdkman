#!/usr/bin/env bash
set -e
source ./common_settings.sh

set -x
docker run \
  -it -p 8443:8443 \
  -v "${PWD}:/home/developer/project" \
  $CURRENT \
  --allow-http \
  --no-auth
