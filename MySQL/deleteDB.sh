#!/bin/bash

whichuser=$(whoami)

isexist=$(cat DB_admins.db | grep $whichuser  | wc -l )
if [[ $isexist -eq 1 ]]
then
	
	echo "Enter Database name "
	read DBname
	if [ -d "DataBases/$DBname" ]; then
		rm -r DataBases/$DBname
		echo "$DBname  Database is deleted successfully."
	else
		echo "This database doesn't exists"
	fi

else
	echo "Sorry You are not can't delete database, check user privilege."
fi