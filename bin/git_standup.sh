#!/bin/bash

#GIT standup

nbDay=1


if [ 1 -le $# ]
then
  nbDay=$1
fi


git log --pretty=format:"%s" --graph --all --author=$USER --since=$nbDay.days