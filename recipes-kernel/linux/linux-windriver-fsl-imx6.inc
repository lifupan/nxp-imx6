TARGET_SUPPORTED_KTYPES_nxp-imx6 = "standard preempt-rt"
KERNEL_DEVICETREE_nxp-imx6 = "imx6q-sabresd.dtb \
                     imx6q-sabresd-ldo.dtb"

KBRANCH_DEFAULT_standard_nxp-imx6 ?= "standard/nxp-imx/sdk-4.1.15/fsl-imx6"
KBRANCH_DEFAULT_preempt-rt_nxp-imx6 ?= "standard/preempt-rt/nxp-imx/sdk-4.1.15/fsl-imx6"
