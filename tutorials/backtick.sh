#!/bin/bash
MY_NAME=`grep "^${USER}:" /etc/passwd | cut -d: -f5`
echo $MY_NAME

HTML_FILES=`find / -name "*.html" -print`
echo "$HTML_FILES" | grep "/index.html$"
echo "$HTML_FILES" | grep "/contents.html$"
