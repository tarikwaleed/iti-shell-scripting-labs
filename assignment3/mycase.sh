#!/usr/bin/env bash

export LC_COLLATE=C
shopt -s extglob
read -p "Enter a char: " char
case $char in 
  +([a-z]) )
    echo "Lower Case"
    ;;
  +([A-Z]) )
    echo "Upper Case"
    ;;
  +([0-9]) )
    echo "Number"
    ;;
  +([a-z]) )
    echo "Lower Case"
    ;;
  +([a-zA-Z0-9]) )
    echo "Mixed"
    ;;
    
  *)
    echo "Nothing"
    ;;
esac


  


