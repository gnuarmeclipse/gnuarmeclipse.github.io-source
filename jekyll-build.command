#! /bin/bash

cd "$(dirname "$0")"

export PATH=/opt/homebrew/bin:$PATH
jekyll build

echo
echo "Done"

