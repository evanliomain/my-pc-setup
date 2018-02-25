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
  if [ -f "packages/software/$i/config.sh" ]
  then
    log_step "Configure $i"
    execute_file ./packages/software/$i/config.sh
  fi
done
