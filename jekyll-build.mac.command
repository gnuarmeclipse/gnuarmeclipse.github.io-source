#! /bin/bash

cd "$(dirname "$0")"

export PATH="$HOME/opt/homebrew-jekyll/bin":$PATH
jekyll build --destination ../gnuarmeclipse.github.io.git

echo
echo "Done"
