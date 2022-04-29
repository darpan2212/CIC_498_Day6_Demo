#!/bin/bash

function checkPrimeNum() {

	n=$1;
	isPrime=1;

	for ((i=2;i<n/2;i++))
	do
		if [ $((n%i)) -eq 0 ]
		then
			isPrime=0;
			break;
		fi
	done

	echo $isPrime;
}

read -p "Enter the number to check prime : " num;

isNumPrime=$(checkPrimeNum $num);

if [ $isNumPrime -eq 1 ]
then
	echo "$num is prime number.";
else
	echo "$num is not prime number.";
fi

rev="";

while [ $num -ne 0 ]
do
	lastDigit=$((num%10));
	rev=`echo $rev$lastDigit`
	num=$((num/10));
done

isRevPrime=$(checkPrimeNum $rev);

if [ $isRevPrime -eq 1 ]
then
	echo "$rev is prime";
else
	echo "$rev is not prime";
fi
