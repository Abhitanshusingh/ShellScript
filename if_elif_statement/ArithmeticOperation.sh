#!/bin/bash -x
#Taking three input from user
read -p 'Enter Value : ' a
read -p 'Enter Value : ' b
read -p 'Enter Value : ' c
#Performing arithmetic operation
number1=`echo "scale=2;$a + $b * $c" |bc -l`       #using bc -l  for fractional value
number2=`echo "scale=2;$a % $b + $c" |bc -l`
number3=`echo "scale=2;$c + $a / $b" |bc -l`
number4=`echo "scale=2;$a * $b + $c" |bc -l`
echo "a+b*c = $number1"
echo "a%b+c = $number2"
echo "c+a/b = $number3"
echo "a*b+c = $number4"

#finding mamimum value
max=$number1
if ((`echo "$max < $number2" | bc -q` == 1 ))	 #bc -q  it  return true and false value and using for compair fractional value 
then
   max=$number2
fi
if ((`echo "$max < $number3" | bc -q` == 1 ))
then
   max=$number3
fi
if ((`echo "$max < $number4" | bc -q` == 1 ))
then
   max=$number4
fi
echo "Maximum value is : $max"

#finding minimum value
min=$number1
if ((`echo "$min > $number2" | bc -q` == 1 ))
then
   min=$number2
fi
if ((`echo "$min > $number3" | bc -q` == 1 ))
then
   min=$number3
fi
if ((`echo "$min > $number4" | bc -q` == 1 ))
then
   min=$number4
fi
echo "Minimum value is : $min"


