#!/bin/bash

PKGS='
gron
'

export PATH=/sbin:$PATH # Add path to apparmor tools on Debian 13

scripts/run-docker.sh ./build-package.sh -I -m -a x86_64 $PKGS 2>&1 | tee z-build.log
