#!/bin/sh

export NDK=$ANDROID_HOME/ndk/28.2.13676358

eval "$(pyenv init - sh)"

pyenv shell 3.12.9

scripts/generate-bootstraps.sh --architectures aarch64 2>&1 | tee z-build-bootstrap.log
