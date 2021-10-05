#!/bin/bash -e
IMAGE_NAME=gcr.io/ai-platform-191804/rcom-scripts
IMAGE_TAG=latest
FULL_IMAGE_NAME=${IMAGE_NAME}:${IMAGE_TAG}

cd "$(dirname "$0")"
docker build -t "${FULL_IMAGE_NAME}" .
docker push "${FULL_IMAGE_NAME}"

# Output the strict image name (which contains the sha256 image digest)
docker inspect --format="{{index .RepoDigests 0}}" "${IMAGE_NAME}"