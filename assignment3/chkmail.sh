#!/usr/bin/env bash

old_number_of_lines=$(
  awk '
END{
print NR
}
  ' /var/mail/tarikwaleed
)
while true; do
  number_of_lines=$(
    awk '
END{
print NR
}
  ' /var/mail/tarikwaleed
  )
  if [[ number_of_lines -gt old_number_of_lines ]]; then
    echo "You've Got Mail"
    old_number_of_lines=$number_of_lines
  else
    echo "Empty Inbox"
  fi
  sleep 2
done
