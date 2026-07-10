#!/bin/sh

export PATH=/sbin:$PATH # Add path to apparmor tools on Debian 13

{
	[ -n "$1" ] && scripts/run-docker.sh scripts/build-bootstraps.sh 2>&1
	#scripts/run-docker.sh scripts/generate-bootstraps.sh --architectures aarch64 2>&1
	scripts/run-docker.sh scripts/generate-bootstraps.sh 2>&1
} | tee z-build-bootstrap.log
