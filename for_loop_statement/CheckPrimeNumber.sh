#!/bin/bash -x
read -p 'Enter Number :' number
temp=0
for(( iter=2 ; iter<=$number/2 ; iter++ ))
do 
   if (( $(( number%iter ))==0 ))
   then
       temp=1
       break 
   fi
done
if (( $temp==0 ))
then
   echo "Prime Number : $iter"
else
   echo "Not Prime Number :$iter "
fi
