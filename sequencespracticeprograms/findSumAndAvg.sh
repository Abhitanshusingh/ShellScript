random1=$((RANDOM%99+1))
random2=$((RANDOM%99+1))
random3=$((RANDOM%99+1))
random4=$((RANDOM%99+1))
random5=$((RANDOM%99+1))
sumofrandom=$(( $random1 + $random 2+ $random3 + $random4 + $random5))
avgerageofrandom=`echo "scale=2; $sumofrandom / 5" | bc -l`
echo "Sum  is      : $sumofrandom"
echo "avgerage  is : $avgerageofrandom"
