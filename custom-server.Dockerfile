ARG SERVER_IMAGE
ARG PULUMI_VERSION

FROM ${SERVER_IMAGE} as server
WORKDIR /temporal

ENV PULUMI_SKIP_UPDATE_CHECK=true
ENV PATH=$PATH:/root/.pulumi/bin
RUN curl -fsSL https://get.pulumi.com/ | sh -s -- --version ${PULUMI_VERSION};