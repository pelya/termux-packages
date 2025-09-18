#!/bin/sh

{
	scripts/run-docker.sh scripts/build-bootstraps.sh --architectures aarch64 2>&1
	scripts/run-docker.sh scripts/generate-bootstraps.sh --architectures aarch64 2>&1
} | tee z-build-bootstrap.log
