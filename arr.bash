#!/bin/bash
for (( j=0; j<5; j=j+1 )); do
read arr[j]
done
k=1
l=4
arr[k]=${arr[l]}
for (( j=0; j<5; j=j+1 )); do
echo ${arr[j]}
done
