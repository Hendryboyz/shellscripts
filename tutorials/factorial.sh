#!/bin/bash

factorial()
{
  if [ "$1" -gt "1" ]; then
    minus1=`expr $1 - 1`
    previous=`factorial $minus1`
    result=`expr $1 \* $previous`
    echo $result
  else
    echo 1
  fi
}

factorialFast()
{
  cur="1"
  result="1"

  while [ "$cur" -le "$1" ]
  do
    result=`expr $result \* $cur`
    cur=`expr $cur + 1`
  done

  echo $result
}

while :
do
  echo -n "Enter a number : "
  read x
  factorialFast $x
done

