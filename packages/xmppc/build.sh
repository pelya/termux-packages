TERMUX_PKG_HOMEPAGE=https://codeberg.org/Anoxinon_e.V./xmppc
TERMUX_PKG_DESCRIPTION="Command Line Interface Tool for XMPP"
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=master
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=https://codeberg.org/Anoxinon_e.V./xmppc/archive/master.tar.gz
TERMUX_PKG_SHA256=00c835a81a470e7566d67375efc4e344b26b17419c20f853a0fd125f41df5d90
TERMUX_PKG_DEPENDS="libstrophe, glib, gpgme"

termux_step_pre_configure() {
	./bootstrap.sh
}
