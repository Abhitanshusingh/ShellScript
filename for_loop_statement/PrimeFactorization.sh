#!/bin/bash -x
read -p 'Enter number to find prime factorization :'  number
for(( iter=2 ; $number > 1; iter++ ))
do 
	if(( $number%$iter == 0 ))
	then
		for(( ; $number%$iter==0; ))
		do
			echo "$iter"
			number=$(( number/iter ))
		done
	fi
done
