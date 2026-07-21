#!/bin/bash

PKGS='
pandoc
'

export PATH=/sbin:$PATH # Add path to apparmor tools on Debian 13

scripts/run-docker.sh ./build-package.sh -I -C -a i686 $PKGS 2>&1 | tee z-build.log
