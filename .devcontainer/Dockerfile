FROM mcr.microsoft.com/devcontainers/base:trixie

USER root

RUN apt-get update \
  && apt-get install -y apt-transport-https \
  && mkdir -p /usr/share/keyring/ \
  && wget -U "dkp apt" -O /usr/share/keyring/devkitpro-pub.gpg https://apt.devkitpro.org/devkitpro-pub.gpg \
  && echo "deb [signed-by=/usr/share/keyring/devkitpro-pub.gpg] https://apt.devkitpro.org stable main" > /etc/apt/sources.list.d/devkitpro.list \
  && apt-get update \
  && apt-get install -y devkitpro-pacman

# Install 3DS toolchain so arm-none-eabi-gcc exists before postCreateCommand runs
ENV DEVKITPRO=/opt/devkitpro
ENV DEVKITARM=/opt/devkitpro/devkitARM
ENV DEVKITPPC=/opt/devkitpro/devkitPPC
ENV PATH="$PATH:${DEVKITPRO}/tools/bin"

ENTRYPOINT [ "/bin/sh" ]