#!/bin/bash

whichuser=$(whoami)

isexist=$(cat DB_admins.db | grep $whichuser  | wc -l )
if [[ $isexist -eq 1 ]]
then
	
	echo "Please Enter database name you want to create. "
	read DBname
	
	DBsearch=$(ls ./DataBases | grep $DBname)
	
	if [[ -z $DBsearch ]]; then
		mkdir -p DataBases/$DBname
		echo "new database $DBname  created successfully"
		
		echo $whichuser >> DataBases/$DBname/owner.txt
	else
		echo "This database already exists. "
	fi
else
	echo "your are not allowed to do this job. "
fi