#!/bin/bash

cd output
gh release upload --clobber --repo pelya/termux-packages packages *.deb
