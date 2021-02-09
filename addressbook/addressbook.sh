#!/bin/bash

usage()
{
  echo "add/search/update/delete is the allowed command"
}
export BOOK_FILE="./addressbook.txt"
if [ ! -f "$BOOK_FILE" ]; then
  touch $BOOK_FILE
fi
COMMAND=$1; shift

if [ "$COMMAND" = "add" ]; then
  . ./add.sh
  addaddress $1
elif [ "$COMMAND" = "search" ]; then
  echo "search user"
elif [ "$COMMAND" = "update" ]; then
  echo "update user"
elif [ "$COMMAND" = "delete" ]; then
  . ./delete.sh
  deleteaddress $1
else
  echo "something wrong"
  usage
fi
