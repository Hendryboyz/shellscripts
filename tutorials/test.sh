#!/bin/bash

if [ "$X" -lt "0" ]
then
  echo "X is less than zero"
fi

if [ "$X" -gt "0" ]; then
  echo "X is greater than zero"
fi

[ "$X" -lt "0" ] && \
  echo "X is less equal to zero"

[ "$X" -gt "0" ] && \
  echo "X is greater equal to zero"

[ "$X" = "0" ] && \
  echo "X is the string or number \"0\""

[ "$X" = "hello" ] && \
  echo "X matches the string \"hello\""

[ "$X" != "hello" ] && \
  echo "X is not the string \"hello\""

[ -n "$X" ] && \
  echo "X is of nonzero length"

[ -f "$X" ] && \
  echo "X is the path of a real file" || \
  echo "No such file"

[ -x "$X" ] && \
  echo "X is the path of an executable file"

#[ "$X" -nt "/etc/passwd" ] && \
#  echo "X is a file which is newer than /etc/passwd"

