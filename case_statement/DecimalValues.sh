read -p "Enter Number : " digit
length=${#digit}
case $length in
    4)                                         # for four digit
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
    ;;

   3)                                           #for three digit 
        number=$(( $digit % 10 ))
        echo "$number : ten"
        digit=$(( digit/10 ))
 
        number=$(( $digit%10 ))
        echo "$number : hundred"
        digit=$(( digit/10 ))


        number=$(( $digit%10 ))
        echo "$number : thousand"
        digit=$(( digit/10 ))
  
   ;; 

    2)   					#for two digit
        number=$(( $digit % 10 )) 
        echo "$number : unit"
        digit=$(( digit/10 ))

        number=$(( $digit % 10 ))
        echo "$number : ten"
        digit=$(( digit/10 ))
   ;;   

   1) 						#for one digit
       number=$(( $digit % 10 )) 
       echo "$number : unit"
       digit=$(( digit/10 ))
   ;;
 
    *) echo "Enter Upto Four digit number "
esac
