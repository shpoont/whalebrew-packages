# Setting Up Multi-Platform Builds
See [Multi-platform images](https://docs.docker.com/build/building/multi-platform/) in Docker Manuals for more details.

Create Multi-platform builder
```sh
$ # Install support for additional platforms
$ docker run --privileged --rm tonistiigi/binfmt --install all

$ # Create builder
$ docker buildx create --name docker-buildx-multi-platform-builder --driver docker-container --bootstrap
```

# Building Images

To build all images run
```sh
$ .bin/build.sh
```
**NOTE:** Images are automatically pushed to Docker Hub
