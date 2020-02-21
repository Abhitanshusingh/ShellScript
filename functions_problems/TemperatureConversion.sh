#!/bin/bash -x
function CelsiusToFarenhit()
{
	read -p "Enter Celsius Temperature:" CelsiusTemp
	if (( $((CelsiusTemp>=0 && CelsiusTemp<=100 )) ))
	then
		Farenhit=`echo "scale=4;(($CelsiusTemp*9/5))+32" | bc -l`
		echo "temperature in Farenhit is:"`echo "scale=3; $Farenhit" | bc -l`
	else
		 echo "Enter between 0 to 100 celsius temperature "	
	fi
}


function FarenhitToCelsius()
{
read -p "Enter Farenhit Temperature:" FarenhitTemp
	if (($FarenhitTemp>=32 && $FarenhitTemp<=212))
	then
		Celsius=`echo "scale=4;(($FarenhitTemp-32)) *5/9" | bc -l`
		echo "temperature in Celsius is:"`echo "scale=3; $Celsius" | bc -l`
	else	
		echo "Enter between 32 to 212 farenhit temperature"
	fi
}


echo "1.Celsius To Farenhit"
echo "2.Farenhit To Celsius"
read -p "Enter number:" user_input
case $user_input in
	1)
   CelsiusToFarenhit
	;;
	2)
   FarenhitToCelsius
	;;
	*)
	echo "Invalid Input"
esac
