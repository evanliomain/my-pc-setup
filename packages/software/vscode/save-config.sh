#!/bin/bash

CONFIG_PATH=~/.config/Code/User
LOCAL_CONFIG_PATH=./packages/software/vscode/config

# Save extensions list
code --list-extensions > packages/software/vscode/extensions-list.txt

# Save all vscode configuration
for file in `ls $CONFIG_PATH`
do
  if [ -f "$CONFIG_PATH/$file" ]
  then
    cp $CONFIG_PATH/$file $LOCAL_CONFIG_PATH/
  fi

  if [ -d "$CONFIG_PATH/$file" ]
  then
    if [ "X$file" != 'XworkspaceStorage' ] && [ "X$file" != 'XworkspaceStorage/' ]
    then
      cp -R $CONFIG_PATH/$file $LOCAL_CONFIG_PATH/
    fi
  fi
done

