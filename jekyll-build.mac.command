#! /bin/bash

cd "$(dirname "$0")"

export PATH="$HOME/opt/homebrew-jekyll/bin":$PATH
bundle exec jekyll build --destination ../gnuarmeclipse.github.io.git --verbose

echo
echo "Done"
