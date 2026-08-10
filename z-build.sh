#!/bin/bash

PKGS='
audacity
'

export PATH=/sbin:$PATH # Add path to apparmor tools on Debian 13

scripts/run-docker.sh ./build-package.sh -I -a all $PKGS 2>&1 | tee z-build.log
