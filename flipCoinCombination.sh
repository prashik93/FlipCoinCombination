#! /bin/bash/ -x

echo "Welcome to Flip coin combination"

isHead=1
isTail=0

headCount=0
tailCount=0

countHH=0
countHT=0
countTH=0
countTT=0

whileIteration=50


declare -A singletDictionary
declare -A doubletDictionary

while ((count < $whileIteration))
do
	flipCoin1=$((RANDOM%2))
	flipCoin2=$((RANDOM%2))
	if [ $flipCoin1 -eq $isHead ]
	then
		headCount=$((headCount + 1))
		percentageOfHeadCount=$(( (($headCount*100)/$whileIteration) ))
		singletDictionary["Head"]=$headCount

	elif [ $flipCoin1 -eq $isTail ]
	then
		tailCount=$((tailCount + 1))
		percentageOfTailCount=$(( (($tailCount*100)/$whileIteration) ))
		singletDictionary["Tail"]=$tailCount
	fi


	if [[ ($flipCoin1 -eq $isHead) && ($flipCoin2 -eq $isHead) ]]
	then
		countHH=$((countHH + 1))
		countPercentage_HH=$(( (($countHH*100)/$whileIteration) ))
		doubletDictionary["HH"]=$countHH
		doubletDictionary["HH_per"]=$countPercentage_HH

	elif [[ ($flipCoin1 -eq $isHead) && ($flipCoin2 -eq $isTail) ]]
	then
		countHT=$((countHT +1))
		countPercentage_HT=$(( (($countHT*100)/$whileIteration) ))
		doubletDictionary["HT"]=$countHT
		doubletDictionary["HT_per"]=$countPercentage_HT

	elif [[ ($flipCoin1 -eq $isTail) && ($flipCoin2 -eq $isHead) ]]
	then
		countTH=$((countTH +1))
		countPercentage_TH=$(( (($countTH*100)/$whileIteration) ))
		doubletDictionary["TH"]=$countTH
		doubletDictionary["TH_per"]=$countPercentage_TH

	elif [[ ($flipCoin1 -eq $isTail) && ($flipCoin2 -eq $isTail) ]]
	then
		countTT=$((countTT +1))
		countPercentage_TT=$(( (($countTT*100)/$whileIteration) ))
		doubletDictionary["TT"]=$countTT
		doubletDictionary["TT_per"]=$countPercentage_TT

	fi
	((count++))
done

echo "--------Singlet Combination-------"

echo "Singlet dictionary Head Count :- ${singletDictionary["Head"]}"
echo "Singlet dictionary Tail Count :- ${singletDictionary["Tail"]}"
echo "Singlet dictionary Keys :- ${!singletDictionary[@]}"
echo "Singlet dictionary Values :- ${singletDictionary[@]}"
echo "Percentage Head count is :- $percentageOfHeadCount %"
echo "Percentage Tail count is :- $percentageOfTailCount %"


echo "--------Doublet Combination--------"

echo "Doublet dictionary HH Count :- ${doubletDictionary["HH"]}"
echo "Doublet dictionary HT Count :- ${doubletDictionary["HT"]}"
echo "Doublet dictionary TH Count :- ${doubletDictionary["TH"]}"
echo "Doublet dictionary TT Count :- ${doubletDictionary["TT"]}"
echo "Doublet dictionary Keys :- ${!doubletDictionary[@]}"
echo "Doublet dictionary Values :- ${doubletDictionary[@]}"
