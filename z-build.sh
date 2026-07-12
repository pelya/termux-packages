#!/bin/bash

PKGS='
iproute2
mc
xfce4
synaptic
'

export PATH=/sbin:$PATH # Add path to apparmor tools on Debian 13

scripts/run-docker.sh ./build-package.sh -a all $PKGS 2>&1 | tee z-build.log
