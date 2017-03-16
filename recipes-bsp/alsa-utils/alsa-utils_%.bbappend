# Copyright Matthias Hentges <devel@hentges.net> (c) 2007
# License: MIT (see http://www.opensource.org/licenses/mit-license.php
#               for a copy of the license)
#
#

FILESEXTRAPATHS_prepend_nxp-imx6 := "${THISDIR}/files:"

SRC_URI_append_nxp-imx6 += "file://asound.state \
	   "

do_install_append_nxp-imx6() {
	install -m 0644 ${WORKDIR}/asound.state ${D}/var/lib/alsa/asound.state
}

PACKAGE_ARCH_nxp-imx6 = "${MACHINE_ARCH}"
