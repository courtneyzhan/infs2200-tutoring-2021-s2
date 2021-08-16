-- Part B
CREATE TABLE Emp (
    eid INTEGER,
    ename CHAR(10),
    age INTEGER,
    salary REAL,
    -- Primary key goes here
    
);

CREATE TABLE Dept (
    did INTEGER,
    dname CHAR(20),
    budget REAL,
    managerid INTEGER,
    -- Primary key goes here
    
    -- Foreign key goes here
    
    -- Foreign key option
);

CREATE TABLE Works (
    eid INTEGER,
    did INTEGER,
    pcttime INTEGER,
    -- Primary key goes here
    
    -- Foreign key goes here
    
    -- Foreign key option
);

-- Part C - Every department is guaranteed a manager
CREATE TABLE Dept (
    did INTEGER,
    dname CHAR(20),
    budget REAL,
    managerid INTEGER,
    -- Primary key goes here
    
    -- Foreign key goes here
    
    -- Foreign key option
);

-- Part D - What happens when Toy department is deleted (Part B not Part C)
DELETE FROM Dept
WHERE dname = 'Toy';

/*

*/

-- Part E - Emp Constraint minimum salary of 10,000
CREATE TABLE Emp (
    eid INTEGER,
    ename CHAR(10),
    age INTEGER,
    salary REAL,
    -- Primary key goes here
    
    -- Constraint goes here
    
);

-- Part F - Assert all managers age > 30
CREATE ASSERTION ManagerAge CHECK (
    
);

-- Part G - Assert total percentage of all appointments for an employee is under 100%
CREATE ASSERTION Under100 CHECK (
    
);

-- Part H - Assert a manager must always have a higher salary than any employee that they manage
CREATE ASSERTION ManagerHigherSalary CHECK (
    
);