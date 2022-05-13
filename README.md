[![Update Submodules](https://github.com/temporalio/docker-builds/actions/workflows/update-submodules.yml/badge.svg)](https://github.com/temporalio/docker-builds/actions/workflows/update-submodules.yml)
[![Build Docker Images](https://github.com/temporalio/docker-builds/actions/workflows/docker.yml/badge.svg)](https://github.com/temporalio/docker-builds/actions/workflows/docker.yml)

# Docker images build and publish

A set of pipelines that build:

- https://hub.docker.com/repository/docker/temporaliotest/auto-setup
- https://hub.docker.com/repository/docker/temporaliotest/server
- https://hub.docker.com/repository/docker/temporaliotest/admin-tools

## Build docker image for any commit

Replace **YOUR_TAG** and **YOUR_CHECKOUT_COMMIT** to build manually:

```bash
docker build --platform linux/amd64 --build-arg SERVER_IMAGE=temporaliotest/server:sha-0ab1971 --build-arg ADMIN_TOOLS_IMAGE=temporaliotest/admin-tools:sha-0ab1971 --tag sidetrek/temporal-auto-setup --no-cache . -f auto-setup.Dockerfile
```
```bash
docker tag sidetrek/temporal-auto-setup:latest sidetrek/temporal-auto-setup:1.0.2
```
```bash
docker push sidetrek/temporal-auto-setup:1.0.2
```