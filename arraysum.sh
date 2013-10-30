#!/bin/sh
echo "Enter total numbers "
read n
s=0
for((i=0;i<$n;i++))
do
echo "Enter $((i+1))th number"
read arr[$i]
((s=$s+${arr[i]}))
done
echo "The Sum is $s"