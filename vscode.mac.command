#! /bin/bash

cd "$(dirname "$0")"

if [ -d "$HOME/Applications/Visual Studio Code.app" ]
then
  "$HOME/Applications/Visual Studio Code.app/Contents/MacOS/Electron" . &
elif [ -d "/Applications/Visual Studio Code.app" ]
then
  "/Applications/Visual Studio Code.app/Contents/MacOS/Electron" . &
else
  echo "Could not find Visual Studio Code.app in Applications"
fi
