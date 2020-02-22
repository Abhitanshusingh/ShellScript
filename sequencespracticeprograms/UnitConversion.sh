#!/bin/bash -x
feet=`echo  "scale=2 ; 42/12" | bc -l`
echo "42 inches is : $feet  feet"

length_in_meter=`echo "60 * 0.3048" | bc -l` 
breadth_in_meter=`echo "40 * 0.3048" | bc -l`
total_meter=`echo "scale =2; $length_in_meter * $breadth_in_meter" | bc -l`
echo "Rectangular plot of 60 feet * 40 feet is :  $total_meter"
 
acre=`echo "scale=2; $total_meter * 25 / 4046.86 " | bc -l`
echo "Areaa of 25 such plot in acer is : $acre"

