#!/bin/bash

myfunc()
{
  echo "\$1 is $1"
  echo "\$2 is $2"

  a="Goodbye Henry"
}

# Main script starts here

a=Hello
b=World
myfunc $a $b
echo "\$a is $a"
echo "\$b is $b"

