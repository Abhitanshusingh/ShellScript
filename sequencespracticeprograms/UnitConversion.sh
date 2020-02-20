#!/bin/bash -x
feet=`echo  "scale=2 ; 42/12" | bc -l`
echo "42 inches is : $feet  feet"

lengthinmeter=`echo "60 * 0.3048" | bc -l` 
breadthinmeter=`echo "40 * 0.3048" | bc -l`
totalmeter=`echo "scale =2; $lengthinmeter * $breadthinmeter" | bc -l`
echo "Rectangular plot of 60 feet * 40 feet is :  $totalmeter"
 
acre=`echo "scale=2; $totalmeter * 25 / 4046.86 " | bc -l`
echo "Areaa of 25 such plot in acer is : $acre"

