#/bin/sh

sudo dkp-pacman -Sy --noconfirm \
    3ds-dev \
    3ds-sdl \
    3ds-examples \
    3ds-pkg-config \
    citro2d \
    citro3d \
    devkitarm-crtls \
    devkitarm-rules \
    libctru \
    3dslink \
    3dstools \
    devkit-env \
    devkitARM \
    general-tools \
    picasso \
    tex3ds

./configure /configure --os=N3DS \
    --host $DEVKITARM/bin/arm-none-eabi \
    --enable-static \
    --prefix-dir=$DEVKITPRO \
    --with-sdl \
    --without-png \
    --without-threads \
    --disable-network \
    --disable-unicode \
    --without-libfontconfig \
    --without-zlib \
    --without-libfreetype \
    --without-icu \
    --enable-debug=2 \
    --with-sdl=$DEVKITPRO/portlibs/3ds/bin/sdl-config