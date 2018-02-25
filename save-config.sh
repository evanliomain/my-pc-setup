#!/bin/bash

source ./functions.sh

if [ $# -eq 0 ]
then
  usage $0 "soft1 [softn]"
  exit 1
fi

git stash

for i in $*
do
  if [ -f "packages/software/$i/save-config.sh" ]
  then
    log_step "Save $i configuration"
    execute_file ./packages/software/$i/save-config.sh
    git add .
    git commit -m "Save $i configuration"
  else
    warning i "Skip save configuration (no script provided)"
  fi
done

git push
git stash pop
