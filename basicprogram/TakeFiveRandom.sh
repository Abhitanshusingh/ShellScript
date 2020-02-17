arr=[5]
max=0
min=999
for i in {0..4} 
   do
      randomvalue=$(( ((RANDOM%900))+100 ))
      arr[i]="$randomvalue" 
echo "Random Value Is : ${arr[i]}"
   done
echo
for j in {0..4}
do
   if (( ${arr[j]} > $max ))
   then
         max=${arr[j]}
   fi
done
echo "MaxValue is : $max"

for k in {0..4}
do
   if (( ${arr[k]} < $min ))
   then
         min=${arr[k]}
   fi
done
echo "MinValue is : $min"


