#!/bin/bash -x
read -p 'Enter Number :' digit
if(( $digit > 999 && $digit < 9999 ))     
then
   number=$(( $digit % 10 )) 
   echo "$number : unit"
   digit=$(( digit/10 ))

   number=$(( $digit % 10 ))
   echo "$number : ten"
   digit=$(( digit/10 ))
 
   number=$(( $digit%10 ))
   echo "$number : hundred"
   digit=$(( digit/10 ))


   number=$(( $digit%10 ))
   echo "$number : thousand"
   digit=$(( digit/10 ))
fi


if(( $digit > 99 && $digit < 999 ))    
then
   number=$(( $digit % 10 )) 
   echo "$number : unit"
   digit=$(( digit/10 ))

   number=$(( $digit % 10 ))
   echo "$number : ten"
   digit=$(( digit/10 ))


   number=$(( $digit%10 ))
   echo "$number : hundred"
   digit=$(( digit/10 ))
fi


if(( $digit > 9 && $digit < 99 ))  
then
   number=$(( $digit % 10 )) 
   echo "$number : unit"
   digit=$(( digit/10 ))

   number=$(( $digit % 10 ))
   echo "$number : ten"
   digit=$(( digit/10 ))
fi


if(( $digit > 0 && $digit < 9 ))   #for 10
then
   number=$(( $digit % 10 )) 
   echo "$number : unit"
   digit=$(( digit/10 ))
fi

