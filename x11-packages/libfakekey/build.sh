TERMUX_PKG_HOMEPAGE=https://www.yoctoproject.org/tools-resources/projects/matchbox
TERMUX_PKG_DESCRIPTION="X virtual keyboard library."
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=0.3+git20170516
TERMUX_PKG_REVISION=23
TERMUX_PKG_SRCURL=https://deb.debian.org/debian/pool/main/libf/libfakekey/libfakekey_${TERMUX_PKG_VERSION}.orig.tar.xz
TERMUX_PKG_SHA256=ddbd308dc7f20390b2a6cb88bd077a62061a40533e209a14a94bdb36b32a0446
TERMUX_PKG_DEPENDS="libx11, libxtst"
TERMUX_PKG_EXTRA_MAKE_ARGS="AM_LDFLAGS=-lX11"

termux_step_pre_configure() {
	autoreconf -i
}
