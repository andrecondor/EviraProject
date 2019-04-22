#!/bin/bash


KERNEL_NAME="~EviraKernel"
INCREMENTAL_VERSION="V1.4"
export LOCALVERSION="${KERNEL_NAME}-${INCREMENTAL_VERSION}"
export KBUILD_BUILD_USER=Resurrect88
export KBUILD_BUILD_HOST=EviraRules
mkdir -p out
export ARCH=arm64
export SUBARCH=arm64
export CLANG_PATH=/home/resurrect88/Scaricati/linux-x86/clang-r353983/bin
export PATH=${CLANG_PATH}:${PATH}
export CLANG_TRIPLE=aarch64-linux-gnu-
export CROSS_COMPILE=/home/resurrect88/Scaricati/aarch64-linux-android-4.9-kernel/bin/aarch64-linux-android-
CLANG_CROSSCOMPILE=true
echo
echo "Set DEFCONFIG"
echo 
make CC=clang O=out -o3 Evira_defconfig

echo
echo "Build The Good Stuff"
echo 

make CC=clang O=out -o3  -j$(nproc --all)

