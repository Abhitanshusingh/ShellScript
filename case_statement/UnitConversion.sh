read -p 'Enter Number :' number
echo "Enter 1 for feet to inch"
echo "Enter 2 for feet to meter"
echo "Enter 3 for inch to feet"
echo "Enter 4 for meter to feet"
read input 
case "$input" in
   1) feet_to_inch=`echo "scale=2;$number * 12" | bc -l` 
      echo "Feet to inch : $feet_to_inch" 
      ;;

   2) feet_to_meter=`echo "scale=2;$number / 3.281" | bc -l` 
      echo "Feet to meter : $feet_to_meter" 
      ;;
   
   3) inch_to_feet=`echo "scale=2;$number / 12" | bc -l` 
      echo "Inch to feet : $inch_to_feet" 
      ;;
  
   4) meter_to_feet=`echo "scale=2;$number * 3.281" | bc -l` 
      echo "Meter to feet : $meter_to_feet"
      ;;
   
   *) echo "Enter Valid number "
esac
