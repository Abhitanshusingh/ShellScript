#!/bin/bash -x
echo "Generatinf ten random value" 
for(( i=0 ; i < 10 ; i++ ))
	do
	arr[i]=$((RANDOM%900+100))
	done
echo "${arr[@]}"

max1=0
max2=0
for(( i =0 ; i < 10 ; i++ ))
do
	if(( ${arr[i]} > $max1  ))
	then
		 max2=$max1
		 max1=${arr[i]}
	fi
done
for(( i=0 ; i< 10 ; i++))
do
	if((  ${arr[i]} > $max2  && $max1 > ${arr[i]} ))
   then
		max2=${arr[i]}
	fi
done
echo "$max2"

min1=1000
min2=1000
for(( i =0 ; i < 10 ; i++ ))
do
   if(( ${arr[i]} < $min1  ))
   then
       min2=$min1
       min1=${arr[i]}
   fi
done
for(( i=0 ; i< 10 ; i++))
do
   if((  ${arr[i]} < $min2  && $min1 < ${arr[i]} ))
   then
      min2=${arr[i]}
   fi
done
echo "$min2"


