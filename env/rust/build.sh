#!/bin/bash -eu

cd $(dirname $0)

: ${REPOSITORY:="peeeechi"}
: ${IMAGE:="rust_env"}
: ${TAG:="latest"}

docker image build -t "${REPOSITORY}/${IMAGE}:${TAG}" .
