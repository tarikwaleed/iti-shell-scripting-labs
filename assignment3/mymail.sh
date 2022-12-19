#!/usr/bin/env bash

# Get all human users names
humanusers=$(
  awk '
BEGIN{
FS=":"
}
{
  if($3 >= 1000){
    print $1;
  }
}
' /etc/passwd
)

for user in $humanusers; do
  $(mail -s "welcom mail" $user <mtemplate)
  #echo $user
done
