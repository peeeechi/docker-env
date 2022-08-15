#!/bin/bash -eu

cd $(dirname $0)
source ./.env

: ${TAG:="latest"}

ENVS="-e UID=`(id -u)` \
      -e GID=`(id -g)`"

docker run --rm -it ${ENVS} "${REPOSITORY}/${IMAGE}:${TAG}" /bin/bash
