#!/usr/bin/env bash
read -p "Number of elements:" number_of_elements
echo "${number_of_elements}"
i=0

while [[ $i -lt $number_of_elements ]];do
  read -p "Element $i:" element
  arr+= (($element))
  i=$(($i+1))
done
echo "${arr[@]}"


