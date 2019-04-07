#!/bin/bash
export CROSS_COMPILE=~/kernels/toolchains/arm-eabi-4.8/bin/arm-eabi-
export ARCH=arm
make grandpplte_00_defconfig
make mt6737t_grandpplte_ltn_open_01.dtb mt6737t_grandpplte_ltn_open_02.dtb mt6737t_grandpplte_ltn_open_03.dtb mt6737t_grandpplte_ltn_open_04.dtb
make -j16
