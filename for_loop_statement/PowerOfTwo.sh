#!/bin/bash -x
read -p 'Enter Number :' number
temp_power=$(( 2**number ))
power=2
for(( iter=1 ; power <= $temp_power ; iter++ ))
do 
   echo "$power"
   power=$(( power*2 ))
done 
