#!/bin/bash -x
echo "Enter Range "
read start
read end
for (( i1=$start ; i1<=$end ; i++ ))
do
   temp=0
   for(( j=2 ; j<$i ; j++ ))
   do 
      if (( $(( i%j ))==0 ))
      then
         temp=1
         break 
      fi
   done
if (( $temp==0 ))
then
   echo "Prime Number : $i "
fi
done


