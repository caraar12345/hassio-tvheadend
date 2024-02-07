ARG BUILD_FROM=ghcr.io/hassio-addons/ubuntu-base:stable
FROM ${BUILD_FROM}

RUN curl -1sLf 'https://dl.cloudsmith.io/public/tvheadend/tvheadend/setup.deb.sh' | bash \
    && apt-get install -y tvheadend ffmpeg 

# dotnet-runtime-7.0 git 

# Copy root filesystem
COPY rootfs /
RUN chmod +x /usr/bin/run_tvheadend.sh

# Build arguments
ARG BUILD_ARCH
ARG BUILD_DATE
ARG BUILD_DESCRIPTION
ARG BUILD_NAME
ARG BUILD_REF
ARG BUILD_REPOSITORY
ARG BUILD_VERSION

# Labels
LABEL \
    io.hass.name="TVHeadend" \
    io.hass.description="TVHeadend Add-On" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="https://github.com/caraar12345" \
    org.label-schema.description="TVHeadend Add-On" \
    org.label-schema.build-date=${BUILD_DATE} \
    org.label-schema.name="TVHeadend" \
    org.label-schema.schema-version="4.3" \
    org.label-schema.url="https://github.com/caraar12345/hassio-tvheadend" \
    org.label-schema.usage="https://github.com/caraar12345/hassio-tvheadend" \
    org.label-schema.vcs-ref=${BUILD_REF} \
    org.label-schema.vcs-url="https://github.com/caraar12345/hassio-tvheadend" \
    org.label-schema.vendor="https://github.com/caraar12345"
