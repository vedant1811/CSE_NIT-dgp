#!/bin/sh
echo "Enter a string"
read s
n=${#s}
rev=""
for((j=0;j<$n;j++))
do
rev="${s:$j:1}$rev"
done
echo "Reversed String is : $rev"
