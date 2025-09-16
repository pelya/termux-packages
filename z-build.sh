#!/bin/sh

export NDK=$ANDROID_HOME/ndk/28.2.13676358

eval "$(pyenv init - sh)"

pyenv shell 3.12.9

./build-package.sh -a aarch64 apt 2>&1 | tee z-build.log
