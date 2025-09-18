#!/bin/bash

scripts/run-docker.sh ./build-package.sh -a aarch64 libunbound 2>&1 | tee z-build.log
