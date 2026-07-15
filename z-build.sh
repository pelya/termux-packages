#!/bin/bash

PKGS='
lsof
xorg-font-util
'

export PATH=/sbin:$PATH # Add path to apparmor tools on Debian 13

scripts/run-docker.sh ./build-package.sh -Q -I -a all $PKGS 2>&1 | tee z-build.log
