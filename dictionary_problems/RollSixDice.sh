#!/bin/bash -x
key1=1
key2=2
key3=3
key4=4
key5=5
key6=6
count1=0
count2=0
count3=0
count4=0
count5=0
count6=0

declare -A number
while(true)
do
	dice=$((RANDOM%6+1))
	case $dice in
	1)
		count1=$((count1+1))
		number[$key1]="$count1"
		;;
	2)
		count2=$((count2+1))
		number[$key2]="$count2"
		;;

	3)
		count3=$((count3+1))
		number[$key3]="$count3"
		;;

	4)
		count4=$((count4+1))
		number[$key4]="$count4"
		;;

	5)
		count5=$((count5+1))
		number[$key5]="$count5"
     		;;

	6)
		count6=$((count6+1))
		number[$key6]="$count6"
		;;
	esac

	if(( $count1==10 || $count2==10 || $count3==10  ||  $count4==10  ||  $count5==10  ||  $count6==10  ))
	then
		break
	fi
done

echo " ${!number[@]} : ${number[@]}  "

max=0
for(( i=1 ; i <= 6 ; i++ ))
do
	if((  $max < "${number[$i]}"  ))
	then
	   max="${number[$i]}"
	fi
done
echo "Maximum value is : $max"

min=11
for(( i=1 ; i <= 6 ; i++ ))
do
   if((  $min > "${number[$i]}"  ))
   then
       min="${number[$i]}"
   fi
done
echo "Minimum value is : $min"
