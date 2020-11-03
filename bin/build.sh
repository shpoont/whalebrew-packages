#!/usr/bin/env bash
cd packages
for package in *; do 
    echo $package
    docker build --tag "shpoont/whalebrew-${package}" --file "${package}/Dockerfile" .
done
cd - > /dev/null