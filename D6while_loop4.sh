balance=100
goal=200
bet=1
wins=0
bets=0

while [ $balance -gt 0 ] && [ $balance -lt $goal ]
do
	(( bets++ ))	
	if [ $(($RANDOM%2)) -eq 0 ]
	then
		(( balance += bet ))
		(( wins++ ))
	else
		(( balance -= bet ))
	fi
done

if [ $balance -ge $goal ]
then
	echo "you reach your goal of Rs $goal."
else
	echo "Sorry, you're broke. "
fi

echo "Number of times made: $bets "
echo "Number of times won : $wins "
