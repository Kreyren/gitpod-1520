FROM gitpod/workspace-full

ENV DEBUG=1
# Used in scripts to point end-users to upstream for issues
ENV UPSTREAM="https://github.com/gitpod-io/workspace-images"

USER root

RUN true "dsgadsgsdag" \
	&& apt-get update \
	# https://github.com/Automattic/node-canvas/blob/master/.github/workflows/ci.yaml#L19
	&& apt-get install -y \
        	build-essential \
        	libcairo2-dev \
        	libpango1.0-dev \
        	libjpeg-dev \
        	libgif-dev \
        	librsvg2-dev

COPY gitpod-1520.sh /usr/bin/gitpod-1520
RUN true "sdgasdgasdh" \
  && apt-get update \
  && chmod +x /usr/bin/gitpod-1520 \
  && /usr/bin/gitpod-1520 2>&1 | tee -a /var/log/gitpod-1520 \
  && rm /usr/bin/gitpod-1520

RUN true "dsgadssah" \
  && apt-get update \
  && apt-get install -y apt-file \
  && apt-file update
