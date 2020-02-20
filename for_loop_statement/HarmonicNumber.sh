#!/bin/bash -x
echo $1
number=$1
harmonic_number=0
for(( iter=1 ; iter <= $number ; iter++ ))
do 
   harmonic_number=`echo "$harmonic_number + 1 / $iter" | bc -l`
done
echo "$harmonic_number"

