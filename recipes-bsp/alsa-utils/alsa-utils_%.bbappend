# Copyright Matthias Hentges <devel@hentges.net> (c) 2007
# License: MIT (see http://www.opensource.org/licenses/mit-license.php
#               for a copy of the license)
#
#

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI_append_nxp-imx6 += "file://asound.state \
	   "

do_install_append() {
	install -m 0644 ${WORKDIR}/asound.state ${D}/var/lib/alsa/asound.state
}

