#!/bin/bash

export PATH=/sbin:$PATH # Add path to apparmor tools on Debian 13

scripts/run-docker.sh bash -l
