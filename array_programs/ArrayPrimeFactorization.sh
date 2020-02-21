read -p 'Enter Number :' number
i=0
for(( iter=2 ; $number > 1; iter++ ))
do 
	if(( $number%$iter == 0 ))
	then
		while((  $number%$iter==0 ))
		do
			number=$(( number/iter ))
                        arr[i]=$iter
			i=$(( i+1 ))
		done
	fi
done
echo "${arr[@]}"
