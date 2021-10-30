ARG BUILD_ARCH
# hadolint ignore=DL3006
FROM ghcr.io/hassio-addons/debian-base/${BUILD_ARCH}:5.1.1

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Setup base
# hadolint ignore=DL3003
RUN apt-get -qq update \
  && apt-get -qq install --no-install-recommends -y nginx \
  && (apt-get autoremove -y; apt-get autoclean -y)

# Copy root filesystem
COPY rootfs /

ARG BUILD_ARCH
ARG BUILD_DATE
ARG BUILD_DESCRIPTION
ARG BUILD_NAME
ARG BUILD_REF
ARG BUILD_REPOSITORY
ARG BUILD_VERSION