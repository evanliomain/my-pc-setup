#!/bin/bash

source ./functions.sh

if [ $# -eq 0 ]
then
  usage $0 "soft1 [softn]"
  exit 1
fi
for soft in $*
do
  if [ -d "packages/software/$soft" ]
  then
    warning $soft "Already exists"
    continue
  fi

  log_step "Bootstrap $soft script"
  mkdir -p packages/software/$soft
  echo '#!/bin/bash' > packages/software/$soft/install.sh
  echo '#!/bin/bash' > packages/software/$soft/config.sh
  echo '#!/bin/bash' > packages/software/$soft/save-config.sh
  chmod +x packages/software/$soft/install.sh
  chmod +x packages/software/$soft/config.sh
  chmod +x packages/software/$soft/save-config.sh
done
