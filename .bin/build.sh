#!/usr/bin/env bash

PACKAGES_FOLDER="packages"

for PACKAGE_FOLDER in "${PACKAGES_FOLDER}/"*; do
    PACKAGE_NAME="shpoont/whalebrew-${PACKAGE_FOLDER//$PACKAGES_FOLDER\//}"
    echo "Building ${PACKAGE_NAME}.."
    cd "${PACKAGE_FOLDER}"
    docker buildx build \
        --builder docker-buildx-multi-platform-builder \
        --platform linux/amd64,linux/arm64 \
        --no-cache \
        --pull \
        --tag "${PACKAGE_NAME}" \
        --push \
        .
    docker pull "${PACKAGE_NAME}" # Refresh the image, otherwise it will not be available locally
    cd -
done
