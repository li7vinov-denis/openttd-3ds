FROM --platform=x86_64 mcr.microsoft.com/devcontainers/base:bullseye

USER root

RUN apt-get install apt-transport-https \
  && mkdir -p /usr/share/keyring/ \
  && wget -U "dkp apt" -O /usr/share/keyring/devkitpro-pub.gpg https://apt.devkitpro.org/devkitpro-pub.gpg \
  && echo "deb [signed-by=/usr/share/keyring/devkitpro-pub.gpg] https://apt.devkitpro.org stable main" > /etc/apt/sources.list.d/devkitpro.list \
  && apt-get update;

ENV DEVKITPRO=/opt/devkitpro
ENV DEVKITARM=/opt/devkitpro/devkitARM
ENV DEVKITPPC=/opt/devkitpro/devkitPPC
ENV PATH="$PATH:${DEVKITPRO}/tools/bin"

ENTRYPOINT [ "/bin/sh" ]