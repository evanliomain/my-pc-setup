#!/bin/bash

CONFIG_PATH=~/.config/Code/User

mkdir -p $CONFIG_PATH
cp ./config/* $CONFIG_PATH

for extension in `cat ./packages/software/vscode/extensions-list.txt`
do
  log "Install vscode extension $extension"
  code --install-extension $extension
done
