#!/bin/sh

scripts/run-docker.sh ./build-bootstrap.sh  --architectures aarch64 2>&1 | tee z-build-bootstrap.log
