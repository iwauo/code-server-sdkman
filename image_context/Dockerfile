ARG CODE_SERVER_VERSION="latest"
FROM codercom/code-server:$CODE_SERVER_VERSION

USER root

RUN apt-get update && apt-get install -y --no-install-recommends \
    tree \
    zip \
    unzip \
    bsdtar

ARG USER="developer"
ARG HOME=/home/$USER

RUN addgroup  \
      --system \
      --gid 2000 \
      $USER \
&&  adduser \
      --disabled-password \
      --system \
      --ingroup $USER \
      --uid 2000 \
      --shell /bin/bash \
      --home $HOME \
      $USER \
&& (echo "$USER ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/nopasswd)

USER $USER
WORKDIR $HOME

# SDKMAN
RUN (curl -s "https://get.sdkman.io" | bash) \
&& mkdir -p ~/.sdkman/etc/ \
&& { \
  echo "sdkman_auto_answer=true"; \
  echo "sdkman_auto_selfupdate=false"; \
  echo "sdkman_insecure_ssl=true"; \
} > ~/.sdkman/etc/config

# preinstalled SDKs
ARG SDKMAN_LIBS=
COPY --chown=2000:2000 install_sdk ./
RUN chmod 755 ./install_sdk \
 && ./install_sdk $SDKMAN_LIBS

# VS-code extensions
ARG VSCODE_EXTENSIONS=
COPY --chown=2000:2000 install_extension ./
RUN chmod 755 ./install_extension \
 && ./install_extension $VSCODE_EXTENSIONS

ENTRYPOINT ["dumb-init", "code-server"]

