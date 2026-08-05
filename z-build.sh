#!/bin/bash

PKGS='
vlan
'

export PATH=/sbin:$PATH # Add path to apparmor tools on Debian 13

scripts/run-docker.sh ./build-package.sh -m -a all $PKGS 2>&1 | tee z-build.log
