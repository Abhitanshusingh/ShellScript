#!/bin/bash -x  			
day=$1
month=$2
if (( (( $day>= 20 && $month == 03 )) || $month ==04 || $month == 05  || (( $day <= 20 && $month == 06 )) ))
then 
   echo "True"
else
   echo "False"
fi
