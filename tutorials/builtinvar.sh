#!/bin/bash

echo "I was called with $# parameters"
echo "My name is $0"
echo "My name is `basename $0`"
echo "My first parameter is $1"
echo "My second parameter is $2"
echo "All parameters are $@"

# using shift
while [ "$#" -gt "0" ]
do
  echo "\$1 is $1"
  shift
done

cat "$0" 1> /dev/null
if [ "$?" -ne "0" ]
then
  echo "Sorry, we had a problem here!"
else
  echo "OK, this command is executed successfully"
fi

# $$ is the PID of the current script
echo "I want to touch a new file like /tmp/builtinvar.$$"

# IFS internal field separator
old_IFS="$IFS"
IFS=:
echo "Please inpute some data separated by colons(:) ..."
read x y z
IFS=$old_IFS
echo "x is $x, y is $y, z is $z"

