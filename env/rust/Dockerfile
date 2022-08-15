FROM peeeechi/ubuntu_20-04_base:latest

RUN apt-get update && apt-get install -y \
  gcc \
  mingw-w64 \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# RUN apt-get update && apt-get install -y \
#   gosu \
#   sudo \
#   curl \
#   gcc \
#   vim \
#   git \
#   wget \
#   mingw-w64 \
#   && apt-get clean \
#   && rm -rf /var/lib/apt/lists/*

# rust install
RUN curl --proto '=https' --tlsv1.2 -sSf -o /tmp/rustup.sh https://sh.rustup.rs \
  && chmod 777 /tmp/rustup.sh
#   && chown ${USER_NAME}:${GROUP_NAME} /tmp/rustup.sh \
  # && /tmp/rustup.sh -y

RUN /tmp/rustup.sh -y
WORKDIR /root

RUN . ~/.bashrc && rustup target add x86_64-pc-windows-gnu

COPY ./scripts/after-create-user.sh /tmp/

