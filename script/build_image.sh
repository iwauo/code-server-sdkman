#!/usr/bin/env bash

set -e

source ./common_settings.sh

set -x

docker build ../image_context \
  --build-arg CODE_SERVER_VERSION=$CODE_SERVER_VERSION \
  --build-arg SDKMAN_LIBS=$SDKMAN_LIBS \
  --build-arg VSCODE_EXTENSIONS="$VSCODE_EXTENSIONS" \
  -t $CURRENT
