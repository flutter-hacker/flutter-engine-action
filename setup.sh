#!/bin/bash

set -v # show current command
echo pwd:`pwd`
cat /proc/cpuinfo

ls -l
cd $RUNNER_WORKSPACE
pwd
git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git
ls -l
export PATH=`pwd`/depot_tools:$PATH
echo "`pwd`/depot_tools" >> $GITHUB_PATH

export
gclient

echo "Setup done!"
