# DBMS-Simulator-using-Bash-Scripting
# DBMS Simulator using Bash Scripting

## Project Description

This project is aimed at building a Database Management System with its tasks using Bash Scripting. The project will simulate the MySQL database and provide the following functionality:

- Create Database User
- Delete Database User
- Create New Database
- Delete an existing Database
- Create a New Table inside Database
- Insert a New Row in a Table
- Select Data from Table
- Delete Row from Table

## Project Steps

The project will be under a directory called MySQL. There will be a main script called MySQL/main.sh, which will be responsible for running the system. The following steps will be implemented:

1. **Create Database User:** By default, the system will have a system user called "oracle". If the user that runs the script is "oracle" or an admin user, then he/she can create a new admin user. If the entered user already exists, a message will appear, indicating that the user already exists. Otherwise, the entered user will be stored in a file called DB_admins.db. DB_admins.db will have a list of admin users, including oracle and other created users.

2. **Delete Database User:** Only users in DB_admins.db can run this script. The script will show the list of users in DB_admins.db. If one is selected, it will be deleted from DB_admins.db.

3. **Create New Database:** Only users in DB_admins.db can run this script. The script will ask for the database name. A directory is created with the entered DB name under the following path: MySQL/DataBases/YOUR_NEW_DB. A file named owner.txt will be created in this path, which will have the user name of the user that created this database. The final output for this script is a directory with the database name.

4. **Delete an Existing Database:** Only users in DB_admins.db can run this script. The script will show all available created databases inside MySQL/DataBases. If the database owner is the same as the user that runs this script, then the database directory and its contents will be deleted.

5. **Create a New Table inside Database:** Only users in DB_admins.db can run this script. The script will show all available created databases inside MySQL/DataBases. If the database owner is the same as the user that runs this script, it will ask for the table name and the number of columns needed to be created. If the table name does not already exist inside this database, then it will ask to enter the column names according to the entered number of columns. The final output for this script must create a file named with the entered table name.

6. **Insert a New Row in a Table:** Only users in DB_admins.db can run this script. The script will show all available created databases inside MySQL/DataBases to select the working database. If the selected database owner is the same as the user that runs this script, then it will show all available tables inside this database to select from. For the selected table, the script will start reading the table header and then ask to enter the data. The first column must be always unique.

7. **Select Data from Table:** The script will show all available created databases inside MySQL/DataBases to select the working database. Then it will show all available tables inside this database to select from. Now you will have two options: (a) show the content of the selected table, which will be shown by cat the table name, or (b) search inside the table to find rows that contain a specific string.

8. **Delete Row from Table:** From the selected table, each row that contains a specific string must be deleted. Then, the updated table will
