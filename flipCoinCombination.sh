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

countHHH=0
countHTH=0
countHHT=0
countTTT=0
countTTH=0
countTHT=0
countHTT=0
countTHH=0

whileIteration=50


declare -A singletDictionary
declare -A doubletDictionary
declare -A tripletDictionary

while ((count < $whileIteration))
do
	flipCoin1=$((RANDOM%2))
	flipCoin2=$((RANDOM%2))
	flipCoin3=$((RANDOM%2))
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

	if [[ ($flipCoin1 -eq $isHead) && ($flipCoin2 -eq $isHead) && ($flipCoin3 -eq $isHead) ]]
	then
		countHHH=$((countHHH+1))
		countPercentage_HHH=$(( (($countHHH*100)/$whileIteration) ))
		tripletDictionary["HHH"]=$countHHH
		tripletDictionary["HHH_per"]=$countPercentage_HHH

	elif [[ ($flipCoin1 -eq $isHead) && ($flipCoin2 -eq $isTail) && ($flipCoin3 -eq $isHead) ]]
	then
		countHTH=$((countHTH+1))
		countPercentage_HTH=$(( (($countHTH*100)/$whileIteration) ))
		tripletDictionary["HTH"]=$countHTH
		tripletDictionary["HTH_per"]=$countPercentage_HTH

	elif [[ ($flipCoin1 -eq $isHead) && ($flipCoin2 -eq $isHead) && ($flipCoin3 -eq $isTail) ]]
	then
		countHHT=$((countHHT+1))
		countPercentage_HHT=$(( (($countHHT*100)/$whileIteration) ))
		tripletDictionary["HHT"]=$countHHT
		tripletDictionary["HHT_per"]=$countPercentage_HHT

	elif [[ ($flipCoin1 -eq $isTail) && ($flipCoin2 -eq $isTail) && ($flipCoin3 -eq $isTail) ]]
	then
		countTTT=$((countTTT+1))
		countPercentage_TTT=$(( (($countTTT*100)/$whileIteration) ))
		tripletDictionary["TTT"]=$countTTT
		tripletDictionary["TTT_per"]=$countPercentage_TTT

	elif [[ ($flipCoin1 -eq $isTail) && ($flipCoin2 -eq $isTail) && ($flipCoin3 -eq $isHead) ]]
	then
		countTTH=$((countTTH+1))
		countPercentage_TTH=$(( (($countTTH*100)/$whileIteration) ))
		tripletDictionary["TTH"]=$countTTH
		tripletDictionary["TTH_per"]=$countPercentage_TTH

	elif [[ ($flipCoin1 -eq $isTail) && ($flipCoin2 -eq $isHead) && ($flipCoin3 -eq $isTail) ]]
	then
		countTHT=$((countTHT+1))
		countPercentage_THT=$(( (($countTHT*100)/$whileIteration) ))
		tripletDictionary["THT"]=$countTHT
		tripletDictionary["THT_per"]=$countPercentage_THT

	elif [[ ($flipCoin1 -eq $isHead) && ($flipCoin2 -eq $isTail) && ($flipCoin3 -eq $isTail) ]]
	then
		countHTT=$((countHTT+1))
		countPercentage_HTT=$(( (($countHTT*100)/$whileIteration) ))
		tripletDictionary["HTT"]=$countHTT
		tripletDictionary["HTT_per"]=$countPercentage_HTT

	elif [[ ($flipCoin1 -eq $isTail) && ($flipCoin2 -eq $isHead) && ($flipCoin3 -eq $isHead) ]]
	then
		countTHH=$((countTHH+1))
		countPercentage_THH=$(( (($countTHH*100)/$whileIteration) ))
		tripletDictionary["THH"]=$countTHH
		tripletDictionary["THH_per"]=$countPercentage_THH

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

echo "HH Count Percentages :- $countPercentage_HH %"
echo "HT Count Percentages :- $countPercentage_HT %"
echo "TH Count Percentages :- $countPercentage_TH %"
echo "TT Count Percentages :- $countPercentage_TT %"

echo "Doublet dictionary Keys :- ${!doubletDictionary[@]}"
echo "Doublet dictionary Values :- ${doubletDictionary[@]}"

echo "--------Triplet Combination--------"

echo "Triplet dictionary HHH Count :- ${tripletDictionary["HHH"]}"
echo "Triplet dictionary HTH Count :- ${tripletDictionary["HTH"]}"
echo "Triplet dictionary HHT Count :- ${tripletDictionary["HHT"]}"
echo "Triplet dictionary TTT Count :- ${tripletDictionary["TTT"]}"
echo "Triplet dictionary TTH Count :- ${tripletDictionary["TTH"]}"
echo "Triplet dictionary THT Count :- ${tripletDictionary["THT"]}"
echo "Triplet dictionary HTT Count :- ${tripletDictionary["HTT"]}"
echo "Triplet dictionary THH Count :- ${tripletDictionary["THH"]}"

echo "HHH Count Percentages :- $countPercentage_HHH %"
echo "HTH Count Percentages :- $countPercentage_HTH %"
echo "HHT Count Percentages :- $countPercentage_HHT %"
echo "TTT Count Percentages :- $countPercentage_TTT %"
echo "TTH Count Percentages :- $countPercentage_TTH %"
echo "THT Count Percentages :- $countPercentage_THT %"
echo "HTT Count Percentages :- $countPercentage_HTT %"
echo "THH Count Percentages :- $countPercentage_THH %"

echo "Triplet dictionary Keys :- ${!tripletDictionary[@]}"
echo "Triplet dictionary Values :- ${tripletDictionary[@]}"

