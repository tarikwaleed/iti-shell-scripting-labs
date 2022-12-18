#!/usr/bin/env bash

#ask the user for his name
read -p "Enter you Login Name: " loginName

#check if this user exists

if id -u ${loginName} >/dev/null 2>&1; then
    ls -al "/home/${loginName}"
    # ls -al "/home/$loginName" # works too ✅
    # ls -al /home/$loginName # won't work ❌
    sudo cp -r "/home/${loginName}" /tmp
    echo "Copied all ${loginName} data to /tmp"
    ps -u "${loginName}"

else
    echo "user does not exist"
fi
