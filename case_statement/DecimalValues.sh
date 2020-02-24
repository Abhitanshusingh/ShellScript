#!/bin/bash -x
read -p "Enter Number : " digit
#Print place value
length=${#digit}
case $length in
    4)                                         # For four digit
          number=$(( $digit % 10 )) 
          echo "$number : Unit"
          digit=$(( digit/10 ))

          number=$(( $digit % 10 ))
          echo "$number : Ten"
          digit=$(( digit/10 ))

          number=$(( $digit%10 ))
          echo "$number : Hundred"
          digit=$(( digit/10 ))


          number=$(( $digit%10 ))
          echo "$number : Thousand"
          digit=$(( digit/10 ))
    ;;

   3)                                           #For three digit 
        number=$(( $digit % 10 ))
        echo "$number : Ten"
        digit=$(( digit/10 ))

        number=$(( $digit%10 ))
        echo "$number : Hundred"
        digit=$(( digit/10 ))


        number=$(( $digit%10 ))
        echo "$number : Thousand"
        digit=$(( digit/10 ))

   ;;

    2)   													#For two digit
        number=$(( $digit % 10 ))
        echo "$number : Unit"
        digit=$(( digit/10 ))

        number=$(( $digit % 10 ))
        echo "$number : Ten"
        digit=$(( digit/10 ))
   ;;

   1) 												#for one digit
       number=$(( $digit % 10 )) 
       echo "$number : unit"
       digit=$(( digit/10 ))
   ;;
 
    *) echo "Enter Upto Four digit number "
esac
