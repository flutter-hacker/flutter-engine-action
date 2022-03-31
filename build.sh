#!/bin/bash

echo pwd:`pwd`
ls
git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git
export PATH=`pwd`/depot_tools:$PATH
export
gclient
