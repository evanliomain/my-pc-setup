#!/bin/bash

source ./functions.sh

# Install base
log_step "Install base"
execute_file ./packages/base/install.sh
execute_file ./packages/base/config.sh

# Create workspace
log_step "Create workspace"
echo -e "$SECONDARY_COLOR--> mkdir -p ~/workspace$RETURN_COLOR"

# Install software
for i in `ls packages/software`
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
