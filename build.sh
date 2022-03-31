#!/bin/bash

set -v # show current command
echo pwd:`pwd`
ls -l
cd ..
pwd

cd flutter_engine/src/flutter
tools/gn --no-goma --no-prebuilt-dart-sdk --no-lto --unopt
ninja -C ../out/host_debug_unopt

echo "All Done!"
