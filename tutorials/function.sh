#!/bin/bash
myfunc()
{
  echo "I was call as : $@"
  x=2
}

# Main script starts here
echo "Script was called with $@"
x=1
echo "x is $x"

# pipe will lead os create a new process to handle it
myfunc 1 2 3 | tee out.log

echo "x is $x"

