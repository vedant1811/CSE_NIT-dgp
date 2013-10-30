#!/bin/sh
echo "Enter the number upto which Fibonacci series is to be generated"
read n
a=0
b=1
while [ $a -le $n ]
do
echo "$a "
((a=$a+$b))
((b=$a-$b))
done
