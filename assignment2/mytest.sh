#!/usr/bin/env bash
if [[ -f $1 ]]; then
    echo "it's a file "
elif [[ -d $1 ]]; then
    echo "it's a directory"
fi
if [[ -x $1 ]]; then
    echo "and it's executable"
fi
if [[ -r $1 ]]; then
    echo "and it has read permission"
fi
if [[ -w $1 ]]; then
    echo "and it has write permission"
fi
