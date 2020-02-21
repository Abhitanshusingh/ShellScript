#!/bin/bash -x
echo "Generatinf ten random value" 
for(( i=0 ; i < 10 ; i++ ))
	do
	arr[i]=$((RANDOM%900+100))
	done
echo "${arr[@]}"

for(( i=1; i<10; i++ ))
do
	temp=${arr[i]}
	j=$i-1
		while(( $j>=0 && ${arr[j]} > $temp ))
		do
			arr[j+1]=${arr[j]}
			j=$j-1
		done
	arr[j+1]=$temp
done

echo "${arr[@]}"
array_length=${#arr[@]}   
echo "Second largest number is :  ${arr[array_length-2]}"
echo "Second smallest number is : ${arr[1]}"

