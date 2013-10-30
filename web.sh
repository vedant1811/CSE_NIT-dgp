#!/bin/bash
# enter filename as argument
value=0
while read line
do
if [[ "$line" == www\.[A-Za-z0-9][A-Za-z0-9]*\.* ]]
then
  echo $line
  fi
done < $1
