#!/bin/bash -x
number=$1
power=$(( 2**number ))
upto=1
while(( upto <= $power ))
do 
   upto=$(( upto*2 ))
   echo "$upto"
   if(( $upto==256 ))
   then
      break
   fi 
done 
