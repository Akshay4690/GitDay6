read -p "Enter the start number : " start

read -p "Enter the End number : " end

for (( num=$start; num<=$end; num++ ))
do
	prime=true
	
	for (( i=2; i<$num; i++ ))
	do
		if [ $num%i==0 ]
		then
			prime=false
			break
		fi
	done

	if [ $prime ]
	then
		echo $num
	fi
done
