deleteaddress()
{
  NAME=$1
  if [ -z "$NAME" ]; then
    echo "Missing deleting target"
    return 1
  fi
  
  grep "^${NAME}:" $BOOK_FILE >> /dev/null
  [ "$?" -eq "1" ] && \
    echo "Not existing name \"${NAME}\"" && \
    return 2

  echo -n "${NAME} is about to be deleted. Are your sure(y/N) ? "
  read CONFIRM
  sed -i "/^${NAME}:/d" $BOOK_FILE
}

