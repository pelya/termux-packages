#!/bin/bash

PKGS='
lsof
'

export PATH=/sbin:$PATH # Add path to apparmor tools on Debian 13

scripts/run-docker.sh ./build-package.sh -Q -I -a aarch64 $PKGS 2>&1 | tee z-build.log
