#!/bin/bash -x
read -p 'Enter One Digit Number :' digit
if (( $digit >= 10 ))
then
   echo "Enter one digit number "
else
   if(( $digit == 0 ))
   then  
      echo "Zero"
   elif(( $digit == 1 ))
   then  
      echo "One"
   elif(( $digit == 2 ))
   then  
      echo "Two"
   elif(( $digit == 3 ))
   then  
      echo "Three"
   elif(( $digit == 4 ))
   then  
      echo "Four"
   elif(( $digit == 5 ))
   then  
      echo "Five"
   elif(( $digit == 6 ))
   then  
      echo "Six"
   elif(( $digit == 7 ))
   then  
      echo "Seven"
   elif(( $digit == 8 ))
   then  
      echo "Eight"
   elif(( $digit == 9 ))
   then  
      echo "Nine"
   fi
fi


