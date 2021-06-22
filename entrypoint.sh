#!/bin/sh -l

set -euxo pipefail

ls -a
curl --silent -L https://github.com/kowainik/stan/releases/latest/download/stan-$2-Linux-ghc-$1 --output stan

echo "Pwd: $(pwd)"
echo "::set-output name=stanPath::$(pwd)/stan"
echo "::add-path::$(pwd)/stan"
