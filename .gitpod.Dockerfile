FROM gitpod/workspace-full

ENV DEBUG=1
# Used in scripts to point end-users to upstream for issues
ENV UPSTREAM="https://github.com/gitpod-io/workspace-images"

USER root