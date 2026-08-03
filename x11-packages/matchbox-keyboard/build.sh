TERMUX_PKG_HOMEPAGE=https://www.yoctoproject.org/software-item/matchbox/
TERMUX_PKG_DESCRIPTION="An on-screen virtual keyboard."
TERMUX_PKG_LICENSE="LGPL-2.1"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=0.2+git20231024
TERMUX_PKG_REVISION=32
TERMUX_PKG_SRCURL=https://deb.debian.org/debian/pool/main/m/matchbox-keyboard/matchbox-keyboard_0.2+git20231024.orig.tar.xz
TERMUX_PKG_SHA256=c97de5d7e1d7e99baed1823555ee67d63a9e4cf4ecf3fb0cbe69e4af8c2524cf
TERMUX_PKG_DEPENDS="libexpat, libfakekey, libpng, libx11, libxft, libxrender"
TERMUX_PKG_RECOMMENDS="ttf-dejavu"

termux_step_pre_configure() {
	autoreconf -i
}
