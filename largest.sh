#!/bin/sh
echo "Enter N "
read n
echo "Enter Number 1 "
read num
max=$num
for((i=1;i<$n;i++))
do
echo "Enter Number $((i+1))"
read num
if [ $max -lt $num ]; then
((max = $num))
fi
done
echo "Maximum Number $max"