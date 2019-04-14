#!/usr/bin/env bash

set -e

source ./common_settings.sh

set -x

docker build ../image_context -t $CURRENT
