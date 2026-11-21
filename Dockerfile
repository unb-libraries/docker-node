FROM ghcr.io/unb-libraries/base:3.24.x

RUN apk --no-cache add nodejs npm && \
  node --version && \
  npm --version

ARG BUILD_DATE
ARG VCS_REF=24.x
ARG VERSION

LABEL ca.unb.lib.generator="node" \
  org.opencontainers.image.title="node" \
  org.opencontainers.image.description="docker-node is the base node image at UNB Libraries." \
  org.opencontainers.image.vendor="University of New Brunswick Libraries" \
  org.opencontainers.image.authors="UNB Libraries <libsupport@unb.ca>" \
  org.opencontainers.image.url="https://github.com/unb-libraries/docker-node" \
  org.opencontainers.image.source="https://github.com/unb-libraries/docker-node" \
  org.opencontainers.image.version="$VERSION" \
  org.opencontainers.image.revision="$VCS_REF" \
  org.opencontainers.image.created="$BUILD_DATE" \
  org.opencontainers.image.licenses="MIT"