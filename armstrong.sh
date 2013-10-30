#!/bin/sh
for((i=0;i<=500;i++))
do
  ((c=$i))
  rev=0
  while [ $c -gt 0 ]
  do
  ((d=$c%10))
  ((rev= $rev + $d*$d*$d))
  ((c=$c/10))
  done
  if [ $i -eq $rev ] ; then
  echo "$i is an armstrong number"  
  fi
done