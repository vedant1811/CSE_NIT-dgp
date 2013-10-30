#!/bin/bash
echo "Enter two numbers"
read a
read b
if [ $a -gt $b ]
then
min=$b
else
min=$a
fi
echo "min is $min"
for ((i=1; i<$min; i++))
do
((t1=$a % $i))
((t2=$b % $i))
if [ $t1 -eq 0 ] && [ $t2 -eq 0 ]
then
hcf=$i
fi
done
echo hcf is $hcf
((a=$a / $hcf))
((b=$b / $hcf))
echo $a
echo $b
