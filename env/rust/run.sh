#!/bin/bash -eu

cd $(dirname $0)

: ${REPOSITORY:="peeeechi"}
: ${IMAGE:="rust_env"}
: ${TAG:="latest"}

ENVS="-e UID=`(id -u)` \
      -e GID=`(id -g)`"

docker run --rm -it ${ENVS} "${REPOSITORY}/${IMAGE}:${TAG}" /bin/bash
