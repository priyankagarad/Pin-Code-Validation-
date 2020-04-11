#!/bin/bash -x
echo "Welcome to Pin Code Validation"

#constant
PIN_CODE_IS_SIX_DIGIT="^[0-9]{6}$"
function checkPattern()
{
	if [[ $1 =~ $2 ]]
	then
		echo "Valid"
	else

		echo "InValid"
	fi
}

#check pin code contain 6 digit & restricted for alphabets and Numeric character
read -p "enter pin number:" pincode
checkPattern $pincode $PIN_CODE_IS_SIX_DIGIT


