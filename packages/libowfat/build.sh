TERMUX_PKG_HOMEPAGE=http://www.fefe.de/libowfat/
TERMUX_PKG_DESCRIPTION="GPL reimplementation of libdjb"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=0.34
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=https://deb.debian.org/debian/pool/main/libo/libowfat/libowfat_$TERMUX_PKG_VERSION.orig.tar.xz
TERMUX_PKG_SHA256=d4330d373ac9581b397bc24a22ad1f7f5d58a7fe36d9d239fe352ceffc5d304b
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_NO_STATICSPLIT=true
TERMUX_PKG_EXTRA_MAKE_ARGS="
prefix=$TERMUX_PREFIX
LIBDIR=$TERMUX_PREFIX/lib
MAN3DIR=$TERMUX_PREFIX/share/man/man3
"
TERMUX_PKG_MAKE_PROCESSES=1

termux_step_pre_configure() {
	# Use pregenerated entities.h.
	cp $TERMUX_PKG_BUILDER_DIR/entities.h $TERMUX_PKG_BUILDDIR/
	touch -d "next hour" $TERMUX_PKG_BUILDDIR/entities.h
}

termux_step_make() {
	make CC=gcc CROSS= CCC=$CC
}
