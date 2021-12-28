This will take a while and requires at least 3GB of space.

# Create a folder to store 12c in
	mkdir ~/oracle_data
This will create a folder called `oracle_data` in your home directory

# Run the Container
	docker run -d -p 8080:8080 -p 1521:1521 -v ~/oracle_data/:/u01/app/oracle absolutapps/oracle-12c-ee


# Wait for
It's going to do a lot of stuff now to set up, be patient ~5 - 10mins for the console to say:  
"Done with scripts we are ready to go"


# Sign In
The following is from Set up, just here for your convenience - How to create a user in SQLPLUS.  
(Of course, replace 'S4503323' with your own 7 digit username, and w with a password of your choice)

	sqlplus system/oracle@//localhost:1521/orcl

	ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;

	CREATE USER S4503323 IDENTIFIED BY w ACCOUNT UNLOCK DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP" PROFILE "DEFAULT";

	GRANT DBA TO S4503323;

	SELECT * FROM ALL_USERS WHERE USERNAME LIKE 'S4503323';

	EXIT;

**How to login.**
Either works:
	sqlplus 'S4503323'/w@//localhost:1521/orcl

	sqlplus S4503323/w@//localhost:1521/orcl
