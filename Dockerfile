FROM ghcr.io/unb-libraries/base:3.x

RUN apk --no-cache add nodejs npm && \
    node --version && \
    npm --version

LABEL ca.unb.lib.generator="node" \
  org.opencontainers.image.title="node" \
  org.opencontainers.image.description="docker-node is the base node image at UNB Libraries." \
  org.opencontainers.image.vendor="University of New Brunswick Libraries" \
  org.opencontainers.image.url="https://github.com/unb-libraries/docker-node" \
  org.opencontainers.image.source="https://github.com/unb-libraries/docker-node" \
  org.opencontainers.image.revision="18.x" \
  org.opencontainers.image.version="$VERSION" \
  org.opencontainers.image.created="$BUILD_DATE"