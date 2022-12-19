#!/usr/bin/env bash

select choice in ls la exit
do
  case $choice in
    ls)
      ls
      ;;
    la)
      ls -al
      ;;
    exit)
      echo "Exiting"
      break
      ;;
    *)
      echo "Unknown Choice"
      ;;
  esac
done
