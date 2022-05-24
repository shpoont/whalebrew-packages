#!/usr/bin/env bash

PACKAGES_FOLDER="packages"

for PACKAGE_FOLDER in "${PACKAGES_FOLDER}/"*; do
    PACKAGE_NAME="shpoont/whalebrew-${PACKAGE_FOLDER//$PACKAGES_FOLDER\//}"
    echo "Building ${PACKAGE_NAME}.."
    docker build --no-cache --pull --tag "${PACKAGE_NAME}" --file "${PACKAGE_FOLDER}/Dockerfile" .
done