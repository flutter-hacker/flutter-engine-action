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

mkdir flutter_engine && cd flutter_engine
cat > .gclient << "EOF"
solutions = [
  {
    "managed": False,
    "name": "src/flutter",
    "url": "https://github.com/flutter/engine.git",
    "custom_deps": {},
    "deps_file": "DEPS",
    "safesync_url": "",
  },
]
EOF

gclient sync -D -f
cd src/flutter
tools/gn --no-goma --no-prebuilt-dart-sdk --no-lto --unopt
ninja -C ../out/host_debug_unopt

echo "All Done!"
