#!/bin/bash

ACCENT_COLOR='\033[32m'
SECONDARY_COLOR='\033[30m'
WARNING_COLOR='\033[33m'
RETURN_COLOR='\033[0m'
BOLD='\033[1m'

log_step()
{
  MESSAGE=$1
  echo -e "$ACCENT_COLOR-- $MESSAGE$RETURN_COLOR"
}

log()
{
  MESSAGE=$1
  echo -e "$SECONDARY_COLOR--> source $MESSAGE$RETURN_COLOR"
}

execute_file()
{
  FILE=$1
  #echo -e "$SECONDARY_COLOR--> source $FILE$RETURN_COLOR"
  source $FILE
}

warning()
{
  SUBJECT=$1
  MESSAGE=$2
  echo -e "$WARNING_COLOR/!\ $BOLD$1$RETURN_COLOR$WARNING_COLOR $2$RETURN_COLOR"
}

usage()
{
  SCRIPT=$1
  MESSAGE=$2
  echo -e "$WARNING_COLOR$SCRIPT $MESSAGE$RETURN_COLOR"
}

install_deb()
{
  URL=$1
  DEB_FILE=$2

  log "Download $URL/$DEB_FILE"
  wget $URL/$DEB_FILE
  log "Install $DEB_FILE"
  sudo dpkg -i $DEB_FILE
  log "Remove $DEB_FILE"
  rm $DEB_FILE
}
