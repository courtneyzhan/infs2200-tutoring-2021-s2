-- Delete my user
ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;

DROP USER S4503323;

-- Create my user
ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;

CREATE USER S4503323 IDENTIFIED BY "w" ACCOUNT UNLOCK
DEFAULT TABLESPACE "USERS" TEMPORARY TABLESPACE "TEMP" PROFILE
"DEFAULT";

GRANT DBA TO S4503323;

SELECT * FROM ALL_USERS WHERE USERNAME = 'S4503323';

-- =========================
-- Following the Prac Sheet
-- =========================
-- Drop the table
DROP TABLE EMPLOYEE;
DROP TABLE EMP;

-- Create EMPLOYEE table
CREATE TABLE EMPLOYEE (
EMPNO NUMBER(4) PRIMARY KEY,
ENAME VARCHAR2(20),
JOB VARCHAR2(20),
MGR NUMBER(4),
HIREDATE VARCHAR2(10),
SALARY NUMBER(7, 2),
COMM NUMBER(7, 2)
);

-- Notes: NUMBER(P[, S]). Precision (number of digits),
-- Scale (# of digits to the right of the decimal. Can be negative! :D )

-- Describe the Table to me!
DESC EMPLOYEE;

-- Do a bunch of alterations!
-- Rename table, ALTER TABLE OLD_TABLE_NAME RENAME TO NEW_TABLE_NAME;
-- Rename column, ALTER TABLE TABLE_NAME RENAME COLUMN OLD_NAME TO NEW_NAME;
-- Add column, ALTER TABLE TABLE_NAME ADD COLUMN_NAME DATATYPE;
-- Drop column, ALTER TABLE TABLE_NAME DROP COLUMN COLUMN_NAME;
-- Modify Datatype of a column, ALTER TABLE TABLE_NAME MODIFY COLUMN_NAME NEW_DATATYPE
ALTER TABLE EMPLOYEE RENAME COLUMN SALARY TO SAL;
ALTER TABLE EMPLOYEE MODIFY HIREDATE DATE;
ALTER TABLE EMPLOYEE ADD DEPTNO NUMBER(2);
ALTER TABLE EMPLOYEE DROP COLUMN COMM;
ALTER TABLE EMPLOYEE RENAME TO EMP;
DESC EMP;

-- Insert Data Records
INSERT INTO EMP VALUES(1001, 'JOHN CLAY', 'ACCOUNTANT', NULL, '17-DEC-2010', 75000, 10);

-- View the Records
SELECT * FROM EMP;

-- Insert the rest
-- Replace Nikki Hayes with my own name
INSERT INTO EMP VALUES(1002, 'PAUL HAYES', 'ENGINEER', NULL, '20-JUL-2006', 85000, 30);
INSERT INTO EMP VALUES(1003, 'COURTNEY ZHAN', 'ACCOUNTANT', 1001, '10-FEB-2011', 55000, 10);
INSERT INTO EMP VALUES(1004, 'JAMES STEPHENS', 'ACCOUNTANT', 1001, '10-MAY-2011', 60000, 10);
INSERT INTO EMP VALUES(1005, 'CLARA JONATHAN', 'ENGINEER', 1002, '13-FEB-2011', 60000, 30);

-- View the Records
SELECT * FROM EMP;

-- =========================
-- Export your  work, not in Prac Sheet!
-- =========================
--  If you are using your own computer it will be the same instance, you do NOT need to worry about exporting
-- Important for RDP/Lab Computer students ONLY

-- Export everything
COMMIT; -- You MUST run this command for anything to be exported

-- !! COMMAND ON SHEET NOT WORKING: 
	HOST EXP s1234567/password file=C:\INFS2200\Prac1.dmp owner=s1234567

-- Courtney's Fix
-- Run CMD as Administrator
-- Make sure the file path exists
EXP S4503323/w file=C:\INFS2200\Prac1.dmp owner=S4503323

--  Now file exists as C:\INFS2200\Prac1.dmp; this is still in C:Drive
-- Move it somewhere you can access!!! Do NOT leave in C:Drive, it's as good as gone !
	-- H:Drive, removeable disk or email it to yourself