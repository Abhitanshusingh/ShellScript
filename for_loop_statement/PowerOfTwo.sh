read -p 'Enter Number :' number
power=$(( 2**number ))
p=2
for(( i=1 ; p <= $power ; i++ ))
do 
   echo "$p"
   p=$(( p*2 ))
done 
