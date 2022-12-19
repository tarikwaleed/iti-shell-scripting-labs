#!/usr/bin/env bash
# arguments=$1
# echo "arguments are: ${arguments}"
# echo "number of arguments is: ${#arguments}"

arguments=$*
# separate each character to different line
argument_lines="$(echo $arguments | fold -w1)"
# splits the string bu \n and put each line in array element
arguments_array=(${argument_lines//\n/ })
# loop over length of arguments_array
for option in "${arguments_array[@]}"; do
    # if [[ $option != "-" ]]; then ✅
    # if [[ $option =~ [[:alnum:]] ]]; then ✅
    if [[ $option =~ [a-z] ]]; then #✅
        valid_arguments+=($option)
    fi
done
ls "- ${valid_arguments[@]}"

# Prints welcome number of times equal to the length of arguments
# i=0
# number_of_lines="${#arguments}"
# while [[ $i -lt $number_of_lines ]]; do
#     echo "welcome"
#     i=$(($i + 1))
# done
