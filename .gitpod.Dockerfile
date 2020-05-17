FROM gitpod/workspace-full

USER root

RUN true \
	&& apt-get update \
	&& apt-get install -y apt-utils \
	# https://github.com/Automattic/node-canvas/blob/master/.github/workflows/ci.yaml#L19
	&& apt-get install -y libcairo2-dev libjpeg8-dev libpango1.0-dev libgif-dev librsvg2-dev
