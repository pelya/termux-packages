TERMUX_PKG_HOMEPAGE=https://github.com/termux/command-not-found
TERMUX_PKG_DESCRIPTION="Suggest installation of packages in interactive shell sessions"
TERMUX_PKG_LICENSE="Apache-2.0"
TERMUX_PKG_MAINTAINER="Yaksh Bariya <thunder-coding@termux.dev>"
TERMUX_PKG_VERSION=3.5.0-pelya2
TERMUX_PKG_REVISION=2
TERMUX_PKG_SRCURL=https://github.com/pelya/command-not-found/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=f448df7e49ca94c89b5b49668e15eed6fb1c00b5456917af957dba4ded850496
TERMUX_PKG_DEPENDS="libc++"

termux_step_pre_configure() {
	export TERMUX_PREFIX
	export TERMUX_SCRIPTDIR
	termux_setup_nodejs
}
