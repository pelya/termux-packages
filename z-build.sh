#!/bin/bash

PKGS='
libxrender libxtst libxv
'

export PATH=/sbin:$PATH # Add path to apparmor tools on Debian 13

scripts/run-docker.sh ./build-package.sh -I -a aarch64 $PKGS 2>&1 | tee z-build.log
