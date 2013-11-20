#!/bin/bash
pushd `dirname $0`
. settings.sh

find . -name \*.o -delete

pushd x264
git clean -dfx
make clean

popd
pushd freetype2
git clean -dfx
make clean

popd
pushd ffmpeg
git clean -dfx
make clean

popd
pushd sox
git clean -dfx
make clean

popd
