. ./common.sh

searchname()
{
  NAME=$1
  validateName $NAME 
  grepAddress $NAME

  readinfo $RESULT

  echo "${NAME} ${SURNAME}"
  echo "------------------------------" 
  echo "MAIL    : ${MAIL}"
  echo "PHONE   : ${PHONE}"
  echo "ADDRESS : ${ADDRESS}"
}

