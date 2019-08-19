#!/usr/bin/env bash

set -e
source ./common_settings.sh

set -x
docker tag $CURRENT $LATEST
docker push $TARGET

