#!/bin/bash -x
echo "Welcome to Pin Code Validation"

#constant
PIN_CODE_IS_SIX_DIGIT="^[0-9]{6}$"
PIN_CODE_PATTERN="^[0-9]{3}[ ]{1}[0-9]{3}$"

#function check all pattern 
function checkPattern()
{
	if [[ $1 =~ $2 ]]
	then
		echo "Valid"
	else

		echo "InValid"
	fi
}
#check pin code contain 6 digit
#check pin code do not Contain Alphabets and Numeric Character At First Position 
#Check pin Code do not Contain alphabets and Numeric character At last position
read -p "enter pin number:" pincode
checkPattern $pincode $PIN_CODE_IS_SIX_DIGIT

#check valid pin code pattern
read -p "enter pin number:" pincode
checkPattern $pincode $PIN_CODE_PATTERN



