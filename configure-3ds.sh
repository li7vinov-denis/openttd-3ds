#/bin/sh

#configure project for 3DS
./configure --os=N3DS \
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