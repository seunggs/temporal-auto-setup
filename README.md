# Build Temporal docker images

## Build auto-setup image

```bash
docker build --platform linux/amd64 --build-arg SERVER_IMAGE=temporaliotest/server:sha-0ab1971 --build-arg ADMIN_TOOLS_IMAGE=temporaliotest/admin-tools:sha-0ab1971 --tag sidetrek/temporal-auto-setup --no-cache . -f auto-setup.Dockerfile
```
```bash
docker tag sidetrek/temporal-auto-setup:latest sidetrek/temporal-auto-setup:1.0.3
```
```bash
docker push sidetrek/temporal-auto-setup:1.0.3
```

## Build custom temporal server image (adjusted to add extra packages - e.g. Pulumi CLI)
Make sure the temporalio/server image version for this image matches that of the one used in TemporalServer pulumi component

```bash
docker build --platform linux/amd64 --build-arg SERVER_IMAGE=temporalio/server:1.16.1 --build-arg PULUMI_VERSION=3.33.2 --tag sidetrek/temporal-server --no-cache . -f custom-server.Dockerfile
```
```bash
docker tag sidetrek/temporal-server:latest sidetrek/temporal-server:1.0.1
```
```bash
docker push sidetrek/temporal-server:1.0.1
```