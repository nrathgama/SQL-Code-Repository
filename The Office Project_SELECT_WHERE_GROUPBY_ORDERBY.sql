CREATE TABLE EmployeeDemographics
(EmployeeID int,
FirstName varchar(50),
LastName varchar(50),
Age int,
Gender varchar(50)
)

CREATE TABLE EmployeeSalary 
(EmployeeID int,
JobTitle varchar(50),
Salary int)

--/*EemployeeDemographic table gets values added */

INSERT INTO EmployeeDemographics VALUES 
(1001, 'Jim', 'Halpert', 30, 'Male')
----(1002, 'Pam', 'Beasley', 30, 'Female'),
----(1003, 'Dwight', 'Schrute', 29, 'Male'),
----(1004, 'Angela', 'Martin', 31, 'Female'),
----(1005, 'Toby', 'Flenderson', 32, 'Male'),
----(1006, 'Michael', 'Scott', 35, 'Male'),
----(1007, 'Meredith', 'Palmer', 32, 'Female'),
----(1008, 'Stanley', 'Hudson', 38, 'Male'),
----(1009, 'Kevin', 'Malone', 31, 'Male')

--/*The values gets added to Employee Salary Table */
INSERT INTO EmployeeSalary VALUES
(1001, 'Salesman', 45000)
/*
--(1002, 'Receptionist', 36000),
--(1003, 'Salesman', 63000),
--(1004, 'Accountant', 47000),
--(1005, 'HR', 50000),
--(1006, 'Regional Manager', 65000),
--(1007, 'Supplier Relations', 41000),
--(1008, 'Salesman', 48000),
--(1009, 'Accountant', 42000)*/

SELECT Statement
*, Top, Distinict, Count, As, Max, Min, Avg
*/
/* NOTE: Selects TOP 5 *-raws, *-everything, FirstName- First name, FirstName, LastName- both*/
/* NOTE: DISTINCT(Gender) Two values, DISTINCT(EmployeeID) all 9 values since they are unique to every employee*/

SELECT COUNT(LastName) AS LastNameCount
FROM EmployeeDemographics

/* NOTE: This gives the LastName column a name and the number/count of lastNames*/

--/* NOTE: This gives the Maximum(MAX), Minimum (MIN), & Average(AVG) salary amount of the employee
--SELECT MAX(Salary)
--FROM EmployeeSalary*/

--/*NOTE: When selecting a table from a database inorder the db to be in master, it has to mention;
--dbname-.dbo.-tablename */
--SELECT *
--FROM [SQL Tutorial Project].dbo.EmployeeSalary

/*
WHERE STATEMENT
=, <>- does not eq, <, >, And-2 or more criteria, Or- one or the other, Like, Null, Not Null, In
*/

SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%C%OTT%'

SELECT *
FROM EmployeeDemographics
WHERE FirstName is NOT NULL

SELECT *
FROM EmployeeDemographics
WHERE FirstName IN ('Jim', 'Michael')*/

/* Group By, Order By*/

SELECT *
FROM EmployeeDemographics
ORDER BY Age DESC, Gender DESC

SELECT Gender COUNT(Gender)
FROM EmployeeDemographics
WHERE Age >= 31
GROUP BY Gender
ORDER BY Gender

INSERT INTO [SQL Tutorial Project].dbo.EmployeeDemographics VALUES
(1011, 'Ryan', 'Howard', 26, 'Male'),
(NULL, 'Holly','Flax', NULL, 'Male'),
(1013, 'Darryl', 'Philbin', NULL, 'Male')

Insert into [SQL Tutorial Project].dbo.EmployeeSalary VALUES
(1010, NULL, 47000),
(NULL, 'Salesman', 43000)

SELECT*
FROM EmployeeDemographics

DELETE 
FROM EmployeeDemographics
WHERE EmployeeID = 1001

/* DELETING DUPLICATE VALUES/ROWS*/
WITH EmployeeCTE AS
(
SELECT *, ROW_NUMBER() OVER(PARTITION BY EmployeeID ORDER BY EmployeeID)  as RowNumber 
FROM EmployeeDemographics
)
SELECT * FROM EmployeeCTE

DELETE FROM EmployeeCTE where RowNumber>1

/*EWmployee Salary table duplicates removal*/
SELECT *
FROM [SQL Tutorial Project].dbo.EmployeeSalary


WITH EmployeeCTE AS
(
SELECT *, ROW_NUMBER() OVER(PARTITION BY EmployeeID ORDER BY EmployeeID)  as RowNumber 
FROM EmployeeSalary
)
SELECT * FROM EmployeeCTE

DELETE 
FROM EmployeeCTE
where RowNumber>1

DELETE 
FROM EmployeeSalary
WHERE EmployeeID = 1001