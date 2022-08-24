FROM ubuntu:20.04

ARG USER_NAME=inoue
ARG GROUP_NAME=${USER_NAME}
ARG UID=1000
ARG GID=${UID}

ENV USER_NAME=${USER_NAME}
ENV GROUP_NAME=${GROUP_NAME}
ENV UID=${UID}
ENV GID=${GID}

# RUN apt-get update && apt-get install -y --no-install-recommends \
RUN apt-get update && apt-get install -y \
  gosu \
  git \
  neovim \
  curl \
  wget \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# 日本語設定
RUN apt-get update && apt-get install -y --no-install-recommends \
  language-pack-ja-base \
  language-pack-ja \
  fonts-ipafont-gothic \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

COPY ./scripts/* /tmp/

RUN mkdir /workspace

WORKDIR /workspace

ENTRYPOINT [ "/tmp/init.sh" ]
CMD [ "/bin/bash" ]
