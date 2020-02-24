#!/bin/bash -x
read -p 'Enter Number :' digit
#Logic for printing place value
if(( $digit > 999 && $digit <= 9999 ))    	#Take only four digit number 
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


if(( $digit > 99 && $digit <= 999 ))    #Take only three digit number 
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


if(( $digit > 9 && $digit <= 99 ))   	#take only two digit number
then
   number=$(( $digit % 10 )) 
   echo "$number : unit"
   digit=$(( digit/10 ))

   number=$(( $digit % 10 ))
   echo "$number : ten"
   digit=$(( digit/10 ))
fi


if(( $digit > 0 && $digit <= 9 ))   	 #take only one digit number
then
   number=$(( $digit % 10 )) 
   echo "$number : unit"
   digit=$(( digit/10 ))
fi

