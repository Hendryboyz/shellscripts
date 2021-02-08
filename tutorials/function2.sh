#!/bin/bash
. ./library.sh

add_a_user()
{
  USER=$1
  PASSWORD=$2
  shift 2 # Having shifted twice, the rest is now comments
  COMMENTS=$@
  echo "Adding user $USER..."
  echo useradd -c "$COMMENTS" $USER
  echo passwd $USER $PASSWORD
  echo "Added user $USER($COMMENTS) with pass $PASSWORD"
}

###
# Main body of script starts here
###
echo "Start of script..."
add_a_user bob letmein Bob Holness the presenter
add_a_user fred badpassword Fred Durst the singer
add_a_user bilko worsepassword Sgt. Bilko the role model
echo "End of script..."

echo "------------------------------"

myfunc()

{
  echo "I was called as : $@"
  x=2
}
# Main script starts here
echo "Script was called with $@"
x=1
echo "x is $x"
myfunc 1 2 3
echo "x is $x"

