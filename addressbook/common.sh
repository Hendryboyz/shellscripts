validateName()
{
  NAME=$1
  [ -z "$NAME" ] && \
	echo "Missing target" && \
    exit 1
}

grepAddress()
{
  NAME=$1
  RESULT=`grep "^${NAME}:" $BOOK_FILE`
  
  [ -z "$RESULT" ] && \
	echo "Not existing person : $NAME" && \
	exit 1
}

readinfo()
{
  OLD_IFS=$IFS
  IFS=:
  read NAME SURNAME MAIL PHONE ADDRESS <<< "$1"
  IFS=$OLD_IFS
}

