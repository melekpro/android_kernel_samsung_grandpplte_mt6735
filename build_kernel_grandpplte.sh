#!/bin/bash
export CROSS_COMPILE=~/kernels/toolchains/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-
export ARCH=arm
make grandpplte_00_defconfig
make mt6737t_grandpplte_cis_ser_00.dtb mt6737t_grandpplte_cis_ser_01.dtb mt6737t_grandpplte_cis_ser_02.dtb mt6737t_grandpplte_cis_ser_03.dtb mt6737t_grandpplte_cis_ser_04.dtb
make -j16
