STD_MSG="About to rename some files..."

rename()
{
  RESULT_DIR="./result/"
  if [ -d "$RESULT_DIR" ]
  then
    rm -rf $RESULT_DIR
  fi
  
  mkdir $RESULT_DIR
  
  # Expect to be called as: rename .txt .bak
  FROM=$1
  TO=$2
  for i in *$FROM
  do
    j=`basename $i $FROM`
    CP $i ${RESULT_DIR}${j}$TO
  done
}

