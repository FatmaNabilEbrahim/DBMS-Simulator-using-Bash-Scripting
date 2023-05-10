#!/bin/bash


options=("Create Databases user" "Delete Database user" "Create Database" "Delete Database" "Create Table in Database" "Insert In Table" "Select Data from Table")

select option in "${options[@]}"
do
	case $option in
		
		"Create Databases user") bash createDBUser.sh;;
		"Delete Database user") bash deleteDBUser.sh;;
		"Create Database") bash createDB.sh;;
		"Delete Database") bash deleteDB.sh;;
		"Create Table in Database") bash createTB.sh;;
		"Insert In Table") bash insertTB.sh;;
		"Select Data from Table") bash selectTB.sh;;
		
		*) echo "Invalid option";;
	esac
done