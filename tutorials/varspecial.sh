#!/bin/bash
foo=hello
echo $fooworld
echo ${foo}world

# echo allow option -n not to add a linebreak
echo -n "Who is the current user [`whoami`]: "
read NAME
if [ -z "$NAME" ]; then
  NAME=`whoami`
fi

echo "Your name is $NAME."

# use :- to mention default
echo -n "What is your name [`whoami`]: "
read NAME
echo "Your name is ${NAME:-`whoami`}"
echo "The variable name has been set to: $NAME"

