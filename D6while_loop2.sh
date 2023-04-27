
read -p "Think of a number between 1 to 100: " magicnum

while true 
do
	read -p "Is $magicnum less than or greater than $(($magicnum/2))? " ans

	if [[ $ans == "less" ]]
	then
		magicnum=$(($magicnum/2))
	elif [[ $ans == "greater" ]]
	then
		magicnum=$(((($magicnum+100))/2))
	else
		echo "Invalid input.Please Enter 'less' or 'greater' "
	fi

	if [[ $magicnum -eq 1 ]] 
	then
		echo "The magic number is 1.  Congrats!"
	break
	fi
done
