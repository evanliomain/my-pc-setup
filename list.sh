#!/bin/bash

source ./functions.sh

for i in `ls packages/software`
do
  log_step "$i"
done
