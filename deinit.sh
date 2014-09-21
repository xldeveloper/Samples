#!/bin/sh
#
git submodule deinit Scripts
git rm Scripts
rm -rf .git/modules/Scripts