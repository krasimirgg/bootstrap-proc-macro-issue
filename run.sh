#!/bin/bash
set -eux

DIR=$(pwd)
echo "running from $DIR"

cd /example/rust
git checkout 0a7f2c3a025c8bab1e10ccec6208a4c19b057b26
python3 x.py build library/std compiler/rustc src/tools/cargo
