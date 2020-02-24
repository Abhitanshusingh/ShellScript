#!/bin/bash -x
read -p 'Enter Value : ' a                    #Taking three input
read -p 'Enter Value : ' b
read -p 'Enter Value : ' c
number1=`echo "scale=2;$a + $b * $c" |bc -l`     #scale=2 is used to print 2 digit fractional value
number2=`echo "scale=2;$a % $b + $c" |bc -l`
number3=`echo "scale=2;$c + $a / $b" |bc -l`
number4=`echo "scale=2;$a * $b + $c" |bc -l`
echo "a+b*c = $number1"
echo "a%b+c = $number2"
echo "c+a/b = $number3"
echo "a*b+c = $number4"



