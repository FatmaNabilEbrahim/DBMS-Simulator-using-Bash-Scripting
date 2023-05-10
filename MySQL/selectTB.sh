#!/bin/bash

echo "The database names is :"

search_dir=$(ls ./DataBases)

for entry in $search_dir
do
	echo "$entry"
done

echo "Please Enter a Database Name:"

read dbName


echo "Database $dbName was Successfully Selected"

echo "The tables of this database are:"

ls ./DataBases/$dbName 

echo "Please Enter a table Name:"

read tbName

echo "Table $tbName was Successfully Selected"

options=("Show table data" "Search inside table" "Delete a String in a table" "Delete a row in the table")

select ch in "${options[@]}"
do 
case $ch  in
	
	"Show table data") 
		
		cat ./DataBases/$dbName/$tbName;;
	
	"Search inside table")
		
		echo "Please Enter a string:"
		read string_user 
		cat ./DataBases/$dbName/$tbName | grep $string_user;;
	
	"Delete a String in a table")
		
		echo "Please Enter a string to be deleted:"
		read string_userd 
		
		sed -i -e "s/$string_userd//g" ./DataBases/$dbName/$tbName
		
		cat ./DataBases/$dbName/$tbName;;
	
	"Delete a row in the table")
		
		echo "Please Enter a string to delete the row:"
		read string_userd_row
		
		sed -i '' "/$string_userd_row/d" ./DataBases/$dbName/$tbName
		
		cat ./DataBases/$dbName/$tbName;;
	
	*) echo "Invalid option";;
esac
done



