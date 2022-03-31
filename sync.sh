#!/bin/bash

set -v # show current command
echo pwd:`pwd`
ls -l
cd $RUNNER_WORKSPACE

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
echo "gclient sync finished!"
