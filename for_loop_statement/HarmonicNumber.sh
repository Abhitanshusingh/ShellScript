#!/bin/bash -x
#Taking command-line argument
userInput=$1
harmonicNumber=0
#logic for harmonic number
for(( iterator=1 ; iterator <= "$userInput" ; iterator++ ))
do
   harmonicNumber=`echo "scale=4; $harmonicNumber + 1 / $iterator" | bc -l`	#using scale to print only 4 digit fractional value
done
echo "Harmonic of $userInput is : $harmonicNumber"

