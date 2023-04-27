heads=0
tails=0

while [[ $heads -ne 11 && $tails -ne 11 ]]
do
	flip=$(($RANDOM%2))
	if [ $flip -eq 0 ]
	then
		((heads++))
		echo "Heads: $heads"
	else
		((tails++))
		echo "Tails: $tails"
	fi
done

if [ $heads -eq 11 ]
then
	echo "Heads wins!"
else
	echo "Tails wins!"
fi
