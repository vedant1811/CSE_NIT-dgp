#!/bin/sh
string=$(cat $1)
length=`echo $string | wc -c`
length=$(($length-1))
nvowels=0
i=1
while [ $i -le $length ]
do
h=$(echo $string | cut -c $i)
i=`expr $i + 1` 
case $h in
[AaEeIiOoUu])
nvowels=$(($nvowels + 1))
;;
esac

done
echo number of vowels are $nvowels
