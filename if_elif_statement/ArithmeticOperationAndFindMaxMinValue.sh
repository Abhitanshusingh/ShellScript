read -p 'Enter Value : ' a
read -p 'Enter Value : ' b
read -p 'Enter Value : ' c
num1=`echo "scale=2;$a + $b * $c" |bc -l`
num2=`echo "scale=2;$a % $b + $c" |bc -l`
num3=`echo "scale=2;$c + $a / $b" |bc -l`
num4=`echo "scale=2;$a * $b + $c" |bc -l`
echo "a+b*c = $num1"
echo "a%b+c = $num2"
echo "c+a/b = $num3"
echo "a*b+c = $num4"

max=$num1
if ((`echo "$max < $num2" | bc -q` == 1 ))
then
   max=$num2
fi
if ((`echo "$max < $num3" | bc -q` == 1 ))
then
   max=$num3
fi
if ((`echo "$max < $num4" | bc -q` == 1 ))
then
   max=$num4
fi
echo "Maximum value is : $max"


min=$num1
if ((`echo "$min > $num2" | bc -q` == 1 ))
then
   min=$num2
fi
if ((`echo "$min > $num3" | bc -q` == 1 ))
then
   min=$num3
fi
if ((`echo "$min > $num4" | bc -q` == 1 ))
then
   min=$num4
fi
echo "Minimum value is : $min"


