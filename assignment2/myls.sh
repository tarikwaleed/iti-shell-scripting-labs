#!/usr/bin/env bash

if [[ $# == 0 ]]; then
    # ls
    ls $HOME #
# eval "ls ~"
# ls ~
# ls /home/tarikwaleed

else
    ls $1
fi
