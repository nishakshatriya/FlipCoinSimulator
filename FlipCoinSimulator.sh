#!/bin/bash/ -x

#LOCAL VARIABLES
isHead=1
isTail=0

echo "WELCOME TO FLIPCOIN SIMULATOR"

result=$((RANDOM%2))
if [ $result -eq $isHead ]
then
	echo "Head"
else
	echo "Tail"
fi
