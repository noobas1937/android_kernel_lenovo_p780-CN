#!/bin/bash

export CROSS_COMPILE="ccache /home/johndow171/android/kernel/toolchain/arm-linux-androideabi-4.7/bin/arm-linux-androideabi-"
export TARGET_PRODUCT=prada
export MTK_ROOT_CUSTOM=../mediatek

make mrproper
make distclean

rm -rf ../mediatek/config/out/
rm -rf ../mediatek/custom/out/
rm -rf ../out/
cd ..
find . -name "modules.builtin" -type f -print -delete
