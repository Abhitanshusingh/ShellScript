#!/bin/bash -x
read -p 'Enter number :' day
#logic for print week days 0 for Sunday 1 for monday and so on 
if(( $day == 0 ))
then
   echo "Sunday"
elif(( $day == 1 ))
then
   echo "Monday"
elif(( $day == 2 ))
then
   echo "Tuesday"
elif(( $day == 3 ))
then
   echo "Wednesday" 
elif(( $day == 4 ))
then
   echo "Thursday"
elif(( $day == 5 ))
then
   echo "Friday"
elif(( $day  == 6 ))
then
   echo "Saturday"
fi
