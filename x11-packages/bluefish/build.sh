TERMUX_PKG_HOMEPAGE=https://bluefish.openoffice.nl/
TERMUX_PKG_DESCRIPTION="A powerful editor targeted towards programmers and webdevelopers"
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION="2.4.1"
TERMUX_PKG_SRCURL=https://www.bennewitz.com/bluefish/stable/source/bluefish-${TERMUX_PKG_VERSION}.tar.bz2
TERMUX_PKG_SHA256=540b0e4f5a595fc418c41125a6a282b69f10cf01513bedde80906d25a56d0cc9
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_DEPENDS="atk, enchant, gdk-pixbuf, glib, gtk3, harfbuzz, libcairo, libxml2, pango, zlib"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
--disable-xml-catalog-update
--disable-update-databases
--disable-python
--disable-gettext
"

termux_step_pre_configure() {
	CFLAGS+=" -fPIC -Dgettext\(a\)=a"
}
