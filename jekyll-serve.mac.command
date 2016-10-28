#! /bin/bash

cd "$(dirname "$0")"

export PATH="$HOME/opt/homebrew-jekyll/bin":$PATH
jekyll serve --baseurl "" --destination _site_local --trace  --port 4000 --verbose

echo
echo "Done"
