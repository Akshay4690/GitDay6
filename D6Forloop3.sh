
read -p "Enter a number: " num

prime=true

if [ $num -lt 2 ]
then
	prime=false
fi

for(( i=2; i<$num; i++ ))
do
	if [ $(($num%$i)) -eq 0 ]
	then
		prime=false
	fi
done

if [ $prime ]
then
	echo "$num is prime number"

else
	echo "$num is not a prime number"
fi 
