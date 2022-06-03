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