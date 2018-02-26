#!/bin/bash

#GIT commit search

export REPO_URL="http://stash.seloger.com/projects/SLP/repos/bob/commits"

if [ 0 -eq $# ]
then
  echo "$0 match pattern"
  exit 1
fi


git log --pretty=format:"%H;%s" --graph --all --grep=$1 \
  | grep --invert-match ";Merge" \
  | sed 's#^* ##' \
  | sed "s#\([^;]*\);\(.*\)#\2 : $REPO_URL/\1#"
