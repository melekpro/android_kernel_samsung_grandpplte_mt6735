#!/bin/bash
export CROSS_COMPILE=~/kernels/toolchains/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-
export ARCH=arm
DTS=arch/arm/boot/dts
make mt6737t_grandpplte_ltn_open_01.dtb mt6737t_grandpplte_ltn_open_02.dtb mt6737t_grandpplte_ltn_open_03.dtb mt6737t_grandpplte_ltn_open_04.dtb
# Make DT.img
./scripts/dtbTool/dtbTool -o ./boot.img-dtb -d $DTS/ -s 2048
# Cleaup
rm -rf $DTS/.*.tmp
rm -rf $DTS/.*.cmd
rm -rf $DTS/*.dtb
