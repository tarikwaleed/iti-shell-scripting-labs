#!/usr/bin/env bash

mysq(){
  ((result=$1*$1))
  #return $result
  echo result
}
mysq
echo $?

