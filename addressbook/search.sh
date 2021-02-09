searchuser()
{
  NAME=$1
  [ -z "$NAME" ] && \
    echo "Missing searching target" && \
	return 1
 
  RESULT=`grep "^${NAME}:" $BOOK_FILE`
  
  if [ -z "$RESULT" ]; then
    echo "Not existing person : $NAME"
  fi

  OLD_IFS=$IFS
  IFS=:
  read NAME SURNAME MAIL PHONE ADDRESS <<< "$RESULT"
  
  IFS=$OLD_IFS
  echo "${NAME} ${SURNAME}"
  echo "------------------------------" 
  echo "MAIL    : ${MAIL}"
  echo "PHONE   : ${PHONE}"
  echo "ADDRESS : ${ADDRESS}"
}

