#!/bin/bash

function num_of_files_checker
{
	if [[ $1 -eq $2 ]]
	then
		echo "1"

	elif [[ $1 -lt $2 ]]
	then
		echo "0"

	elif [[ $1 -gt $2 ]]
	then
		echo "2"
	fi
}

cur_dir=`pwd`
num_of_files=`ls -l ${cur_dir}|grep "^[-]"|wc -l`
result=0

echo -e "\nHow many files are in the current directory?\n\nCan you guess?:\n "

while [[ ${result} -ne 1 ]]
do
	read guess
	result=$(num_of_files_checker $guess $num_of_files)
	
	if [[ ${result} -eq 1 ]]
	then
		echo "Congratulations! Your guess is correct."

	elif [[ ${result} -eq 0 ]]
	then
		echo "Your guess is too low! Try again."

	elif [[ ${result} -eq 2 ]]
	then
		echo "Your guess is too high! Try again."
	fi
done
