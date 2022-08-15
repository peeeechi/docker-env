#!/bin/bash -eu

: ${REPOSITORY:="peeeechi"}
: ${IMAGE:="rust_env"}
: ${TAG:="latest"}

docker push "${REPOSITORY}/${IMAGE}:${TAG}"
