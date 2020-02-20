#!/bin/bash -x
read -p 'Enter Number : ' number
factor=1
for(( i=1 ; i<=$number ; i++ ))
do
	factor=$(( factor*i ))
done
echo "Factor of $number is : $factor"
