#!/bin/bash
echo "Enter number of elements"
read n
uni=0
for ((i=0; i<$n; i++))
do
  echo "Enter element in index $i"
  read arr[i]
done
flag=0
for i in ${arr[@]}
do
  flag=0
  for j in ${arr[@]}
  do
    if [ $i == $j ]
    then
      ((flag=$flag+1))
    fi
  done
  if [ $flag == 1 ]
  then
    ((uni=$uni+1))
  fi
done
echo "number of unique elements: $uni"
