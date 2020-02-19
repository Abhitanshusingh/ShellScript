echo $1
number=$1
harmonic_number=0
for(( i=1 ; i <= $number ; i++ ))
do 
   harmonic_number=`echo "$harmonic_number + 1 / $i" | bc -l`
done
echo "$harmonic_number"

