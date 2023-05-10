whichuser=$(whoami)

isexist=$(cat DB_admins.db | grep $whichuser  | wc -l )

if [[ $isexist -eq 1 ]];
then
	ls DataBases
	echo "Select Database name from above"
	read DataBase_name
	cd DataBases/$DataBase_name
	
	isexist2=$(cat owner.txt | grep $whichuser)
	if [[ ! -z $isexist2 ]];
	then
		echo "Enter Table Name:"
		read table_name
		echo "column_no"
		read column_no
		isexist3=$(ls | grep $table_name)
		columns=""
		if [[ -z $isexist3 ]];
		then
			touch $table_name
			for (( c=1; c<=$column_no; c++ ))
			do
				echo "Name of the columns"
				read y  
				if [[ $c -eq 1 ]];
				then 
					columns="$y"
				else 
					columns+=",$y"		
				fi
			done
		echo $columns >> $table_name.table
		else 
			echo "Table name is existed"
		fi 

	else
		echo "You are not the DB owner "
	fi
else 
	echo "You are not admin "
fi 