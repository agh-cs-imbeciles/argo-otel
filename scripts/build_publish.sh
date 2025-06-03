#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <image-tag>"
  exit 1
fi
export BUILDPLATFORM="linux/amd64"
export TAG=$1
export REPO_PREFIX=kpiotr6
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

SCRIPT_PATH="$SCRIPT_DIR/../app/docs/releasing/make-docker-images.sh"
$SCRIPT_PATH
