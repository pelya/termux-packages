TERMUX_PKG_HOMEPAGE=http://www.wagner.pp.ru/~vitus/software/catdoc/
TERMUX_PKG_DESCRIPTION="Program which reads MS-Word file and prints readable ASCII text to stdout"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="0.95"
TERMUX_PKG_REVISION=2
TERMUX_PKG_SRCURL=http://ftp.wagner.pp.ru/pub/catdoc/catdoc-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=0d6ef66ff18d93915e62d77845194ba92bf49b60305c51f866a6f55421e37a79
TERMUX_PKG_DEPENDS="libandroid-glob"
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_pre_configure() {
	LDFLAGS+=" -landroid-glob"
}
