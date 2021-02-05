#!/bin/bash

while :
do
  echo "Type some word:"
  read WORD

  [ -z "$WORD" ] && break


  case $WORD in
    hello)
      echo "Greetings"
      ;;
    world)
      echo "This is our world"
      ;;
    *)
      echo "Your world is $WORD"
      ;;
  esac
done
