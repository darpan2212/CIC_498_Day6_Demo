#!/bin/bash

echo "How many planets are there in our solar system?"

select opt in 7 8 9 10
do
	if [ $opt -eq 8 ]
	then
		echo "Answer is correct";
	else
		echo "Answer is wrong";
	fi
	break;
done
