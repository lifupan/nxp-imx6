SUMMARY = "U-Boot binary deployment for nxp-imx6 targets"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = " \
    file://u-boot-imx6qsabresd.imx \
"

inherit deploy

ALLOW_EMPTY_${PN} = "1"

do_configure[noexec] = "1"
do_compile[noexec] = "1"
do_install[noexec] = "1"

do_deploy() {
	cp ${WORKDIR}/u-boot-imx6qsabresd.imx ${DEPLOYDIR}/
}
addtask do_deploy after do_compile before do_build

