#!/bin/sh
echo "Enter a number"
read a
r=0
while [ $a -gt 0 ]
do
((d=$a%10))
((r=$r*10+$d))
((a=$a/10))
done
echo "Reversed Number is  $r" 