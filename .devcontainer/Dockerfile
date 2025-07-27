FROM mcr.microsoft.com/devcontainers/base:bullseye

RUN wget https://apt.devkitpro.org/install-devkitpro-pacman && \
    chmod +x ./install-devkitpro-pacman && \
    truncate -s-1 ./install-devkitpro-pacman && echo -n " --assume-yes" >> ./install-devkitpro-pacman && \
    sudo ./install-devkitpro-pacman && \
    rm ./install-devkitpro-pacman
    #sudo apt-get install --assume-yes libsdl-image1.2-dev \
    #libsdl-mixer1.2-dev libsdl-ttf2.0-dev libsdl1.2-dev \
    #libsmpeg-dev libportmidi-dev ffmpeg libswscale-dev \
    #libavformat-dev libavcodec-dev libfreetype6-dev

ENTRYPOINT [ "/bin/sh" ]