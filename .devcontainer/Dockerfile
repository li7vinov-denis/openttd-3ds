FROM mcr.microsoft.com/devcontainers/base:bullseye

RUN wget https://apt.devkitpro.org/install-devkitpro-pacman && \
    chmod +x ./install-devkitpro-pacman && \
    truncate -s-1 ./install-devkitpro-pacman && echo -n " --assume-yes" >> ./install-devkitpro-pacman && \
    sudo ./install-devkitpro-pacman && \
    rm ./install-devkitpro-pacman

ENV DEVKITPRO=/opt/devkitpro
ENV DEVKITARM=/opt/devkitpro/devkitARM
ENV DEVKITPPC=/opt/devkitpro/devkitPPC
ENV PATH="$PATH:${DEVKITPRO}/tools/bin"

ENTRYPOINT [ "/bin/sh" ]