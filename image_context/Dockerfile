FROM codercom/code-server:latest

RUN apt-get update && apt-get install -y \
  sudo \
  zip \
  unzip \
  curl \
  dumb-init

ARG user="developer"
ARG home=/home/$user

RUN addgroup  \
      --system \
      --gid 2000 \
      $user \
&&  adduser \
      --disabled-password \
      --system \
      --ingroup $user \
      --uid 2000 \
      --shell /bin/bash \
      --home $home \
      $user \
&& (echo "$user ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/nopasswd)
USER $user
WORKDIR $home

# SDKMAN
RUN (curl -s "https://get.sdkman.io" | bash) \
&& mkdir -p ~/.sdkman/etc/ \
&& { \
  echo "sdkman_auto_answer=true"; \
  echo "sdkman_auto_selfupdate=false"; \
  echo "sdkman_insecure_ssl=true"; \
} > ~/.sdkman/etc/config

#RUN source "$HOME/.sdkman/bin/sdkman-init.sh" && sdk install gradle 5.1.1
ENTRYPOINT ["dumb-init", "code-server"]

