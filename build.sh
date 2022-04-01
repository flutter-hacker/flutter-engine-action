#!/bin/bash

set -v # show current command

pwd
ls -l
cd $RUNNER_WORKSPACE
pwd

cd flutter_engine/src/flutter
tools/gn --no-goma --no-lto --unopt
ninja -C ../out/host_debug_unopt

echo "Build done!"
