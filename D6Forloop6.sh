read -p "Ente a nummber : " num

i=2

while [ $((i*i)) -le $num ]
do

	if [ $((num%i)) -eq 0 ]
	then
		echo $i
	
		num=$((num/i))

	else

		i=$((i+1))

	fi
done

if [ $num -gt 1 ]
then
	echo $num
fi
