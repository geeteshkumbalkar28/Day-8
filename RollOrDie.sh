#!/bin/bash -x

i=0
n1=0
n2=0
n3=0
n4=0
n4=0
n5=0
n6=0
declare -A Rolldie
while (( ($n1<10) && ($n2<10) && ($n3<10) && ($n4<10) && ($n5<10) && ($n6<10) ))
do
	dienum=$(( $((RANDOM%6)) + 1 ))
	case $dienum in
		1)
		  Rolldie[($((i++))]=1
		  ((n1++)) ;;
		2)
		  Rolldie[$((i++))]=2
		  ((n2++)) ;;
		3)
		  Rolldie[$((i++))]=3
		  ((n3++)) ;;
		4)
		  Rolldie[$((i++))]=4
		  ((n4++)) ;;
		5)
		  Rolldie[$((i++))]=5
		  ((n5++)) ;;
		6)
		  Rolldie[$((i++))]=6
		  ((n6++)) ;;
	esac

done

	echo "${Rolldie[@]}"


min=$n1
MAX=$min

for (( i=1; i<=6; i++ ))
do
	if [[ n$i -gt $max ]]
	then
		max=n$i
	elif [[ n$i -lt $min ]]
	then
		min=n$i
	fi
done

for (( i=1; i<=6; i++ ))
do
	if (( $max==n$i ))
	then
		echo "Maximum times repeated number = $i"
	fi

	if (( $min==n$i ))
	then
		echo "Minimum times repeated number = $i"
	fi
done

