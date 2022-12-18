#!/usr/bin/env bash
if [[ $# == 1 ]];then
cp $1 file2.txt
else
cp $* /tmp
fi
