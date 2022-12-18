#!/usr/bin/env bash

if [[ $* == 0 ]];then
ls
# ls $HOME # didnt' work
# eval "ls ~" #didn't work too
# ls ~ #didn't work too
# ls /home/tarikwaleed #didn't work too

else
ls $1
fi