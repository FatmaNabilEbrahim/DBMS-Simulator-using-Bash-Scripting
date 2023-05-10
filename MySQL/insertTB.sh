whichuser=$(whoami)

isexist=$(cat DB_admins.db | grep $whichuser  | wc -l )
if [[ $isexist -eq 1 ]]
then
ls DataBases
echo "Select Database name from above"
read DataBase_name
cd DataBases/$DataBase_name
isexist2=$(cat owner.txt | grep $whichuser)
if [[ ! -flag $isexist2 ]]
then
  ls	
  echo "Enter Table Name: "
  read table_name
 
header=$(cat $table_name.table |head -1)
echo $header
IFS="," read -a header_1 <<< $header 

fields=""
flag=0
for field in "${header_1[@]}"
do 
echo $field
read field_value
if [[ $flag -eq 1 ]]
then  
fields+=",$field_value"
fi 

if [[ $flag -eq 0 ]]
then
fields=$field_value
flag=1
fi


done
echo $fields >> $table_name.table  
cat  $table_name.table 
fi
fi
