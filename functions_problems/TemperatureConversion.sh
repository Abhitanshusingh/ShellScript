#!/bin/bash -x
function celsiusToFarenhit()
{
	read -p "Enter celsius temperature:" celsiusTemp
	if (( $((celsiusTemp>=0 && celsiusTemp<=100 )) ))
	then
		farenhit=`echo "scale=4;(($celsiusTemp*9/5))+32" | bc -l`
		echo "Temperature in farenhit is:"`echo "scale=3; $farenhit" | bc -l`
	else
		 echo "Enter between 0 to 100 Celsius temperature "
	fi
}


function farenhitToCelsius()
{
read -p "Enter farenhit temperature:" farenhitTemp
	if (($farenhitTemp>=32 && $farenhitTemp<=212))
	then
		celsius=`echo "scale=4;(($farenhitTemp-32)) *5/9" | bc -l`
		echo "Temperature in celsius is:"`echo "scale=3; $celsius" | bc -l`
	else
		echo "Enter between 32 to 212 farenhit temperature"
	fi
}


echo "1.Celsius to farenhit"
echo "2.Farenhit to celsius"
read -p "Enter number:" user_input
case $user_input in
	1)
   celsiusToFarenhit
	;;
	2)
   farenhitToCelsius
	;;
	*)
	echo "Invalid Input"
esac
