#!/usr/bin/env bash

set -e

source ./common_settings.sh

set -x

docker build \
  -t $CURRENT \
  ../image_context
