echo "enter string"
read input
len=${#input}
flag=0
for(( i=0; i<=$(($len/2)); i++))
do
  if [ ${input:$i:1} != ${input:$(($len-1-$i)):1} ]
  then
    flag=1
    break
  fi
done
if [ $flag == 0 ]
then
  echo "string is pallindrome"
else
  echo "string is not pallindrome"
fi
