#!/bin/bash
pushd `dirname $0`
. settings.sh

pushd freetype2

./autogen.sh

if [ $NDK_ABI = "x86" ]; then
    CFLAGS="-std=gnu99"
else
    CFLAGS="-std=gnu99 -mcpu=cortex-a8 -marm -mfloat-abi=softfp -mfpu=neon"
fi

./configure \
    CC="$CC" \
    LD="$LD" \
    CFLAGS=$CFLAGS \
    --host=$HOST \
    --with-sysroot="$NDK_SYSROOT" \
    --enable-static \
    --disable-shared \
    --without-bzip2

popd;popd
