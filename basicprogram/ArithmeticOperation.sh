read -p 'Enter Value : ' a
read -p 'Enter Value : ' b
read -p 'Enter Value : ' c
num1=$(( $a + (( $b * $c )) ))
num2=$(( (( $a % $b )) + $c ))
num3=$(( $c + (( $a / $b |bc -l )) ))
num4=$(( (( $a * $b )) + $c ))
echo "a+b*c = $num1"
echo "a%b+c = $num2"
echo "c+a/b = $num3"
echo "a*b+c = $num4"
