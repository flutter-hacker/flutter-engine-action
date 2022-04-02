#!/bin/bash

set -v # show current command

pwd
ls -l
cd $RUNNER_WORKSPACE
pwd

cd flutter_engine/src/flutter
git status
git rev-parse HEAD
git rev-parse --short HEAD

tools/gn --no-goma --no-lto --unopt

df -h

ninja -C ../out/host_debug_unopt

df -h

mv ../out $RUNNER_WORKSPACE

rm -r $RUNNER_WORKSPACE/flutter_engine

df -h

echo "Build done!"
