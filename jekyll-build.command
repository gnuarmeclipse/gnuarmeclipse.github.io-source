#! /bin/bash

cd "$(dirname "$0")"

export PATH=/opt/homebrew/bin:$PATH
jekyll build --destination ../gnuarmeclipse.github.io.git

echo
echo "Done"
