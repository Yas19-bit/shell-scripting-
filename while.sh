#!/bin/bash


num=0

while [[ $num -le 10 ]]
do
     if [[ $((num % 2)) == 0 ]]; then
	echo "$num"
     fi
	num=$((num+1))
done
num=2
while [[ $num -le 10 ]]
do 
	echo "$num"
	num=$((num+2))
done
