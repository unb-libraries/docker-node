FROM ghcr.io/unb-libraries/base:3.24.x

RUN apk --no-cache add nodejs npm && \
  node --version && \
  npm --version

ARG BUILD_DATE
ARG VCS_REF=24.x
ARG VERSION

LABEL ca.unb.lib.generator="node" \
  com.microscaling.docker.dockerfile="/Dockerfile" \
  com.microscaling.license="MIT" \
  org.label-schema.build-date=$BUILD_DATE \
  org.label-schema.description="docker-node is the base node image at UNB Libraries." \
  org.label-schema.name="node" \
  org.label-schema.schema-version="1.0" \
  org.label-schema.url="https://github.com/unb-libraries/docker-node" \
  org.label-schema.vcs-ref=$VCS_REF \
  org.label-schema.vcs-url="https://github.com/unb-libraries/docker-node" \
  org.label-schema.vendor="University of New Brunswick Libraries" \
  org.label-schema.version=$VERSION \
  org.opencontainers.image.source="https://github.com/unb-libraries/docker-node"