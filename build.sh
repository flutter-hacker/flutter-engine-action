#!/bin/bash

set -v # show current command
echo pwd:`pwd`
ls -l
cd ..
git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git
export PATH=`pwd`/depot_tools:$PATH
export
gclient
