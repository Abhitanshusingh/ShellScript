#!/bin/bash -x
feet=`echo  "scale=2 ; 42/12" | bc -l`   						#Coverting feet into inches
echo "42 inches is : $feet  feet"

lengthInMeter=`echo "60 * 0.3048" | bc -l` 					#Converting feet int meter 
breadthInMeter=`echo "40 * 0.3048" | bc -l`
totalMeter=`echo "scale =2; $lengthInMeter * $breadthInMeter" | bc -l`
echo "Rectangular plot of 60 feet * 40 feet is :  $totalMeter"
 
acre=`echo "scale=2; $totalMeter * 25 / 4046.86 " | bc -l`	#Converting area into acer
echo "Area of 25 such plot in acer is : $acre"

