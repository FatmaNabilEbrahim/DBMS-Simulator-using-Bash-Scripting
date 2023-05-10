#!/bin/bash

Activeuser=$(whoami)

isExist=$(cat DB_admins.db | grep -w $Activeuser | wc -l)

Filename='DB_admins.db'

if [[ $isExist -eq 1 ]];
then
	echo "The list of users:"
	cat $Filename
	echo "Please enter the user name you want to delete:"
	read delete_user 
	isHere=$(cat DB_admins.db | grep -w $delete_user  | wc -l)
	
	if [[ "$delete_user" != "" && $isHere -eq 1 ]]; then
		
		if [[  "$delete_user" != "oracle" ]]; then
			
			sed -i -e "s/$delete_user//g" $Filename
			
			echo "Thank you, the user was deleted successfully"
		
		else 
			echo "Sorry, you can't delete Oracle"
		
		fi
	else 
		echo "Sorry, no user name were given or found."
	fi
else 
	echo " You don't have access, Try with other user. "
fi

