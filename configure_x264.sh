#!/bin/bash
pushd `dirname $0`
. settings.sh

pushd x264
 LD=$LD CC=$CC STRIP=$STRIP NDK_ABI=$NDK_ABI ./configure --cross-prefix=$NDK_TOOLCHAIN_BASE/bin/$HOST- \
--sysroot="$NDK_SYSROOT" \
--enable-static \
--enable-pic \
--host=$HOST \
--disable-asm \
--disable-cli
popd;popd
