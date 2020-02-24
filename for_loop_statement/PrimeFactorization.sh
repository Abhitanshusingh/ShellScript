#!/bin/bash -x
read -p 'Enter number to find prime factorization :'  userInput
#logic for prime factorization
for(( iterator=2 ; $userInput > 1; iterator++ ))
do 
	if(( $userInput%$iterator == 0 ))
	then
		for(( ; $userInput%$iterator==0;  ))
		do
			echo "$iterator"
			userInput=$(( userInput/iterator ))
		done
	fi
done
