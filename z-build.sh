#!/bin/bash

scripts/run-docker.sh ./build-package.sh -a all -f command-not-found 2>&1 | tee z-build.log
