### ORA-12560 - TNS:Protocol Adapter Error
##### Your personal computer:  
It's an intermittent error. Try these 3 things:  
	1. Close SQL Plus and reopen  
	2. Power off then power on your device  
	3. Restart your device  
##### Lab/RDP Computers:
Solution is in the Oracle Setup PDF file on BB under Practicals also the [RDP/Lab PC Set Up Guide](https://raw.githubusercontent.com/courtneyzhan/infs2200-tutoring-2021-s2/master/practicals/RDP_Lab_Comp_Guide.md).

### ORA-01045 - User lacks CREATE SESSION privilege; logon denied
Login as the admin (sys as sysdba), and grant the privilege to your user, like the following:  
`GRANT CREATE SESSION TO USERNAME`  
But fill the username with the username of the user you wish to use.

### ORA-12988 - Cannot drop column from table owned by SYS
Oracle protects things that the admin has created (understandably). To complete your prac work, you need to have created your own user and login as that user and NOT as the sys admin (sys as sysdba).  

To check who you are logged in as, type:  
	`SHOW USER;`  

If you need to logout use `exit`, then open sqlplus again.
You will need to redo all the work as your own user.

### ORA-00904 - Invalid Identifier
Don't use double quotation ("), use single quotation (').


### ORA-01172 - Recovery of thread 1 stuck at block
Seen in conjunction with ORA-01151  
`SHUTDOWN IMMEDIATE;`  
`STARTUP MOUNT;`  
`RECOVER DATABASE:`  
`ALTER DATABASE OPEN;`   

### ORA-01151 - File was not restored
Seen in conjunction with ORA-01172  
`SHUTDOWN IMMEDIATE;`  
`STARTUP MOUNT;`  
`RECOVER DATABASE:`  
`ALTER DATABASE OPEN;`   
