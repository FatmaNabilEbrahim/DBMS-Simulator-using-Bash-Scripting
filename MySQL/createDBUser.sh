#!/bin/bash

Activeuser=$(whoami)

isExist=$(cat DB_admins.db | grep -w $Activeuser | wc -l)
Filename='DB_admins.db'
if [[ $isExist -eq 1 ]];
then
	echo "Please enter New User Name"
	read user_name 
	
	if [[ "$user_name" != "" ]]; then
		echo $user_name >> $Filename
		echo "Thank you, the user is created."
	else 
		echo "Sorry, no name was given."
	fi
else 
	echo " You don't have access, Try with other user. "
fi
