#! /bin/bash/ -x

echo "Welcome to Flip coin combination"

flipCoin=$((RANDOM%2))

isHead=1
isTail=0

if [ $flipCoin -eq $isHead ]
then
	echo "Heads"

elif [ $flipCoin -eq $isTail ]
then
	echo "Tails"

fi
