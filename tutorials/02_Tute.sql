-- Part B
CREATE TABLE Emp (
    eid INTEGER,
    ename CHAR(10),
    age INTEGER,
    salary REAL,
    -- Primary key goes here
    PRIMARY KEY (eid)
);

CREATE TABLE Dept (
    did INTEGER,
    dname CHAR(20),
    budget REAL,
    managerid INTEGER,
    -- Primary key goes here
    PRIMARY KEY (did),
    -- Foreign key goes here
    FOREIGN KEY (managerid) REFERENCES Emp(eid)
    -- Foreign key option
);

CREATE TABLE Works (
    eid INTEGER,
    did INTEGER,
    pcttime INTEGER,
    -- Primary key goes here
    PRIMARY KEY (eid, did), -- composite pk
    -- Foreign key goes here
    FOREIGN KEY (eid) REFERENCES Emp(eid),
    FOREIGN KEY (did) REFERENCES Dept(did),
    -- Foreign key option
);

-- Part C - Every department is guaranteed a manager
CREATE TABLE Dept (
    did INTEGER,
    dname CHAR(20),
    budget REAL,
    managerid INTEGER NOT NULL,
    -- Primary key goes here
    PRIMARY KEY (did),
    -- Foreign key goes here
    FOREIGN KEY (managerid) REFERENCES Emp(eid),
    -- Foreign key option
	ON DELETE CASCAE,
);

-- Part D - What happens when Toy department is deleted (Part B not Part C)
DELETE FROM Dept
WHERE dname = 'Toy';

/*
Answers in Tute solutions. :)
*/

-- Part E - Emp Constraint minimum salary of 10,000
CREATE TABLE Emp (
    eid INTEGER,
    ename CHAR(10),
    age INTEGER,
    salary REAL,
    -- Primary key goes here
    PRIMARY KEY (eid)
    -- Constraint goes here
    CHECK (salary >= 10000)
);

-- Part F - Assert all managers age > 30
CREATE ASSERTION ManagerAge CHECK (
    NOT EXISTS (
    	SELECT *
		FROM Emp E, Dept D
		WHERE E.eid = D.managerid --  managers only
		AND E.age <= 30 -- can't be less than or eq 30
    )
);

-- Part G - Assert total percentage of all appointments for an employee is under 100%
CREATE ASSERTION Under100 CHECK (
    NOT EXISTS (
    	SELECT * 
		FROM Works W
		GROUP BY eid
		HAVING SUM(pcttime > 100) 
    )
);

-- Part H - Assert a manager must always have a higher salary than any employee that they manage
CREATE ASSERTION ManagerHigherSalary CHECK (
    NOT EXISTS (
    	SELECT * 
		FROM Emp E, Emp M, Dept D, Works W
		WHERE E.eid = W.eid
		AND D.did = W.did
		AND D.managerid = M.eid
		AND M.salary < E.salary
    )
);