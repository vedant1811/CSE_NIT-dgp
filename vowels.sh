#!/bin/sh
echo "enter file name"
read file
echo -n "number of vowels: "
grep -io [aeiou] $file | wc -l