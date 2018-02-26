#!/bin/bash

#GIT switch branch

if [ 1 -ne $# ]
then
  echo "$0 filter"
  exit 1
fi

filter=$1

# Refresh repository from server
git fetch

nbBranch=$(git remote show origin | grep 'suivi$' | grep -i -c $filter)

if [ 0 -eq $nbBranch ]
then
  echo "No branch match $filter"
  exit 1
fi

if [ 1 -lt $nbBranch ]
then
  echo "Too many branch ($nbBranch) match $filter"
  git branch | grep -i $filter
  exit 1
fi

isCurrentBranch=$(git branch | grep -i $filter | grep -c '^*')
switchedBranch=$(git remote show origin | grep 'suivi$' | sed 's#^ *##' | sed 's#suivi$##' | sed 's# *$##' | grep -i $filter)

if [ 1 -eq $isCurrentBranch ]
then
  echo "You are already on $switchedBranch"
  exit 1
fi

echo "Switch to: $switchedBranch"
git checkout $switchedBranch
