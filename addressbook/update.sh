. ./common.sh

updatename()
{
  NAME=$1
  validateName $NAME 
  grepAddress $NAME
  
  readinfo $RESULT

  echo -n "Please enter your name[$NAME] : "
  read NEWNAME
  [ -n "$NEWNAME" ] && NAME=$NEWNAME
  echo -n "Please enter your surname[$SURNAME] : "
  read NEWSURNAME
  [ -n "$NEWSURNAME" ] && SURNAME=$NEWSURNAME
  echo -n "Please enter your mail[$MAIL] : "
  read NEWMAIL
  [ -n "$NEWMAIL" ] && MAIL=$NEWMAIL
  echo -n "Please enter your phone[$PHONE] : "
  read NEWPHONE
  [ -n "$NEWPHONE" ] && PHONE=$NEWPHONE
  echo -n "Please enter your address[$ADDRESS] : "
  read NEWADDRESS
  [ -n "$NEWADDRESS" ] && ADDRESS=$NEWADDRESS
  
  echo "Are you sure(y/n)?"
  read CONFIRM 
  
  sed -i "/^${RESULT}$/d" $BOOK_FILE
  echo "${NAME}:${SURNAME}:${MAIL}:${PHONE}:${ADDRESS}" >> $BOOK_FILE 

}

