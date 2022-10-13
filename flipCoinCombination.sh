#! /bin/bash/ -x

echo "Welcome to Flip coin combination"

isHead=1
isTail=0

headCount=0
tailCount=0

count=0
whileIteration=20

declare -A resultDictionary

while ((count < $whileIteration))
do
	flipCoin=$((RANDOM%2))

	if [ $flipCoin -eq $isHead ]
	then
		headCount=$((headCount + 1))
		resultDictionary["Head"]=$headCount

	elif [ $flipCoin -eq $isTail ]
	then
		tailCount=$((tailCount + 1))
		resultDictionary["Tail"]=$tailCount

	fi
	((count++))
done

echo "Result dictionary Head Count :- ${resultDictionary["Head"]}"
echo "Result dictionary Tail Count :- ${resultDictionary["Tail"]}"
echo "Result dictionary Keys :- ${!resultDictionary[@]}"
echo "Result dictionary Values :- ${resultDictionary[@]}"

percentageOfHeadCount=$(( (($headCount*100)/$whileIteration) ))
echo "Percentage Head count is :- $percentageOfHeadCount %"

percentageOfTailCount=$(( (($tailCount*100)/$whileIteration) ))
echo "Percentage Tail count is :- $percentageOfTailCount %"
