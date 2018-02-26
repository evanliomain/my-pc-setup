#!/bin/bash

#GIT rename branch

if [ $# -ne 2 ]
then
  echo "$0 old_branch new_branch"
  exit 1
fi

# Copy the old branch to the new one
git branch --move $1 $2

# Push the new branch on remote
git push origin $2

# Remove the old one in remote
git push origin --delete $1
