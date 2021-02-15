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
  . ./search.sh
  searchname $1
elif [ "$COMMAND" = "update" ]; then
  . ./update.sh
  updatename $1
elif [ "$COMMAND" = "delete" ]; then
  . ./delete.sh
  deleteaddress $1
else
  echo "something wrong"
  usage
fi

