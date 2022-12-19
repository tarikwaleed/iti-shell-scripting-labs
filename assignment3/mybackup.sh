#!/usr/bin/env bash
for file in `ls -F | grep -v "/"`
do
  cp $file /tmp
done
