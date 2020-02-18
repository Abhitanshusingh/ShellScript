read -p 'Enter Year : ' year
if (( year <= 999 ))
then
 echo "Enter four digit number "
else 
   if (( (( "$year" % 400 == 0 )) || (( (( "$year" % 4 == 0 )) && (( "$year" % 100 != 0 )) )) )) 
      then
         echo "$year : is Leap Year "
     else
	 echo "$year : Not Leap Year "
fi
fi
