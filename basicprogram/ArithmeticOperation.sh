#!/bin/bash -x
read -p 'Enter Value : ' a                    #Taking three input
read -p 'Enter Value : ' b
read -p 'Enter Value : ' c
num1=`echo "scale=2;$a + $b * $c" |bc -l`     #scale=2 is used to print 2 digit fractional value
num2=`echo "scale=2;$a % $b + $c" |bc -l`
num3=`echo "scale=2;$c + $a / $b" |bc -l`
num4=`echo "scale=2;$a * $b + $c" |bc -l`
echo "a+b*c = $num1"
echo "a%b+c = $num2"
echo "c+a/b = $num3"
echo "a*b+c = $num4"



