
# debian image
#
# Minimum image for running anything
# ==============================================================================
FROM debian:bullseye-slim AS p910nd-base
RUN apt-get update


# p910nd image
#
# This image adds the p910nd to the image.
# ==============================================================================
FROM p910nd-base AS p910nd
RUN apt-get install -yq p910nd \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && mkdir /var/lock/p910nd

ENV \
  # Path to Device to forward jetdirect
  # E.g. /dev/usb/lp0
  LP_DEVICE="" 


# Copy entry point
COPY run.sh /run.sh
RUN ["chmod", "+x", "/run.sh"]
ENTRYPOINT [ "/run.sh" ]

EXPOSE 9100


# default build
FROM p910nd
