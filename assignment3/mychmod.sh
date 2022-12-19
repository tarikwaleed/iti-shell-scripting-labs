#!/usr/bin/env bash

for file in `ls $1`
do
  chmod a+x $1/$file
  #echo "$1/$file"
done
