#!/bin/bash

export PATH=/sbin:$PATH # Add path to apparmor tools on Debian 13

scripts/run-docker.sh ./build-package.sh -a all zlib 2>&1 | tee z-build.log
#scripts/run-docker.sh ./build-package.sh -a all -f command-not-found 2>&1 | tee z-build.log
