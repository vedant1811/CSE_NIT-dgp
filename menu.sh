#!/bin/sh
ch=3
while [ $ch -le 6 ] && [ $ch -gt 0 ]

do
clear
echo "Press 1 to reverse a number"
echo "Press 2 to find largest number"
echo "Press 3 to generate fibonacci"
echo "Press 4 to armstrong numbers (0-500)"
echo "Press 5 to calculate sum of array elements"
echo "Press 6  to reverse a string"
echo "Press 0 to exit"

echo 
echo "Enter your choice "

read ch

case $ch in
1) ./reverse.sh ;;
2) ./largest.sh ;; 
3) ./fibo.sh ;;
4) ./armstrong.sh ;;
5) ./arraysum.sh ;;
6) ./revstring.sh ;;
0) echo "Good Bye"  ;;
esac
echo "Press Enter To Continue"
read m
done
