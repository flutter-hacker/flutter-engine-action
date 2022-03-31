#!/bin/bash

set -v # show current command
echo pwd:`pwd`
ls -l
cd ..
pwd
git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git
ls -l
export PATH=`pwd`/depot_tools:$PATH
export
gclient
