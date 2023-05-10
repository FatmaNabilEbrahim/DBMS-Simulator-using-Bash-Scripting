# DBMS Simulator using Bash Scripting

The purpose of this project is to build a Database Management System with its tasks using Bash Scripting.

## Project Description

This is a Bash project that simulates the MySQL database and provides the following functionalities. When a user runs it, the screen will be cleared, and the user will be prompted to select an option from the menu, which will run a specific script.

1. Create Database user.
2. Delete Database User.
3. Create new Database.
4. Delete an existing Database.
5. Create a new Table inside Database.
6. Insert a new Row in a Table.
7. Select Data from Table.
8. Delete Row from Table.

## Project Steps

The Project will be under Directory Called MySQL. There will be a main script called MySQL/main.sh.

1. Create Database user:

By default, there will be a system user called “oracle.” If the user that runs the script is “oracle” or an admin user, they can do the following:

- The script will prompt the user to enter a new admin user.
- If the entered user already exists, an error message will appear telling the user that the user already exists.
- If not, the entered user will be added to a file called DB_admins.db.
- DB_admins.db will contain a list of admin users, including oracle and other created users.

2. Delete Database User:

Only users in DB_admins.db can run this script. The script will show the list of users in DB_admins.db, and the user can select a user to delete.

3. Create new Database:

Only users in DB_admins.db can run this script. The script will prompt the user to enter a new database name. Then, a directory is created with the entered DB name under the following path: MySQL/DataBases/YOUR_NEW_DB. A file will be in this path called owner.txt containing the user name of the user that created this database. The final output for this script is a directory with a database name.

4. Delete an existing Database:

Only users in DB_admins.db can run this script. The script will show all available created Databases inside MySQL/DataBases. If the database owner is the same as the user that runs this script, then the database directory and its contents will be deleted.

5. Create a new Table inside Database:

Only users in DB_admins.db can run this script. The script will show all available created Databases inside MySQL/DataBases. If the database owner is the same as the user that runs this script, then the script will prompt the user to enter a Table Name and the number of columns that need to be created. If the Table Name does not already exist inside this Database, then the user will be asked to enter the Column Names according to the entered number of columns. The final output for this script will create a file named with the entered Table Name.

6. Insert a New Row in a Table:

Only users in DB_admins.db can run this script. The script will show all available created Databases inside MySQL/DataBases to select the working database. If the selected database owner is the same as the user that runs this script, then the script will show all available tables inside this database to select from it. For the selected table, the script will prompt the user to enter the required data. The first column must always be unique.

7. Select Data from Table:

The script will show all available created Databases inside MySQL/DataBases to select the working database. Then, it will show all available tables inside this database to select from it. Now, the user will have two options: 

- Show the content of the selected table.
- Search inside the table for a specific string
