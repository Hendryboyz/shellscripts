addaddress()
{
  NAME="$1"
  if [ -z $NAME ]; then
    echo "Not allow empty name"
    return 1
  fi
  
  grep "^${NAME}:" $BOOK_FILE >> /dev/null
  [ "$?" -eq "0" ] \
    && echo "Duplicated name \"${NAME}\" in $BOOK_FILE" \
    && return 2

  echo -n "Please enter your surname : "
  read SURNAME 
  echo -n "Please enter your mail : "
  read MAIL
  echo -n "Please enter your phone : "
  read PHONE
  echo -n "Please enter your address : "
  read ADDRESS

  echo "${NAME} ${SURNAME} will be added to the $BOOK_FILE"
  echo "Mail: ${MAIL}"
  echo "Phone: ${PHONE}"
  echo "Address: ${ADDRESS}"
  echo "------------------------------"
  echo "Are you sure(y/n)?"
  read CONFIRM 
  echo "${NAME}:${SURNAME}:${MAIL}:${PHONE}:${ADDRESS}" >> $BOOK_FILE 
}

