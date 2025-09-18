#!/bin/bash

scripts/run-docker.sh ./build-package.sh -a aarch64 util-linux termux-tools 2>&1 | tee z-build.log
