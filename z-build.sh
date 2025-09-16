#!/bin/bash

export NDK=$ANDROID_HOME/ndk/28.2.13676358

eval "$(pyenv init - sh)"

pyenv shell 3.12.9

PACKAGES=()
PACKAGES+=("apt")

# Core utilities.
PACKAGES+=("bash") # Used by `termux-bootstrap-second-stage.sh`
PACKAGES+=("libbz2")
PACKAGES+=("command-not-found")
PACKAGES+=("coreutils")
PACKAGES+=("dash")
PACKAGES+=("diffutils")
PACKAGES+=("findutils")
PACKAGES+=("gawk")
PACKAGES+=("grep")
PACKAGES+=("gzip")
PACKAGES+=("less")
PACKAGES+=("procps")
PACKAGES+=("psmisc")
PACKAGES+=("sed")
PACKAGES+=("tar")
PACKAGES+=("termux-core")
PACKAGES+=("termux-exec")
PACKAGES+=("termux-keyring")
PACKAGES+=("termux-tools")
PACKAGES+=("util-linux")

# Additional.
PACKAGES+=("ed")
PACKAGES+=("debianutils")
PACKAGES+=("dos2unix")
PACKAGES+=("inetutils")
PACKAGES+=("lsof")
PACKAGES+=("nano")
PACKAGES+=("net-tools")
PACKAGES+=("patch")
PACKAGES+=("unzip")

PACKAGES+=("termux-am")
PACKAGES+=("termux-am-socket")

./build-package.sh -a aarch64 "${PACKAGES[@]}" 2>&1 | tee z-build.log
