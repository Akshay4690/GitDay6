echo "Enter a temperature value within the freezing and boiling point of water:"
read temperature

echo "Do you want to convert to (F)ahereneit or (C)elsius?"
read conversion

case $conversion in
F) 
	if [[ temperature -ge 0 && temperature -lt 100 ]]
	then
		degF=$(((($temperature * 9/5 ))*32))
		echo "$temperature C is equal to $defF F"
	else
		echo "Temprature must be between 0C and 100C to convert to fahreheit"
	fi
	;;
C)
	if [[ temperature -gt 32 && temprature -lt 212 ]]
	then
		degC=$(((($temperature-32))*5/9))
		echo "$temperature F is equal to $degC C"
	else
		echo "Temperature must be between 32F and 212F to convert to celsius"
	fi
	;;
*)
	echo "Invalid conversion type . please enter 'F' or 'C'"
	;;
esac
