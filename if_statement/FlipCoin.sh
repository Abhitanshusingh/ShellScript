#!/bin/bash -x
echo " Fliping Coin "
random_value=$((RANDOM%2))
if(( $random_value == 0 ))
then
   echo "     Head     "
else
   echo "     Tail     "
fi
