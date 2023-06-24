-- Q1: Retrieve all the records from the Employees table. --

SELECT * FROM employees

-- Answer: 590 Columbia Boulevard West, Lethbridge, AB, CANADA T1K 5N8 --

-- Q2: Retrieve the FirstName, LastName, Birthdate, Address, City, and State from the Employees table.

SELECT  FirstName,
        LastName,
        Birthdate,
        Address,
        City,
        State
FROM Employees;

-- Answer: Steve

-- Q3: Retrieve all the columns from the Tracks table, but only return 20 rows.

SELECT *
FROM Tracks
LIMIT 20;

