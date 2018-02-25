#!/bin/bash

source ./functions.sh

if [ $# -eq 0 ]
then
  usage $0 "soft1 [softn]"
  exit 1
fi

# Install software
for i in $*
do
  log_step "Install $i"

  if [ -f "packages/software/$i/install.sh" ]
  then
    execute_file ./packages/software/$i/install.sh
  else
    warning $i "has NO install file"
  fi

  if [ -f "packages/software/$i/config.sh" ]
  then
    log_step "Configure $i"
    execute_file ./packages/software/$i/config.sh
  fi
done
