/*
TEMP Tables
*/

CREATE TABLE #temp_Employee (
EmployeeID int,
JobTitle varchar(100),
Salary int
)

SELECT *
FROM #temp_Employee

INSERT INTO #temp_Employee VALUES (
'1001', 'HR', '45000'
)

INSERT INTO #temp_Employee
SELECT *
FROM [SQL Tutorial Project].dbo.EmployeeSalary


DROP TABLE IF EXISTS #Temp_Employee2 /*This will make sure the temp table would get deleted if pne already existed*/
CREATE TABLE #Temp_Employee2 (
JobTitle varchar (50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int)

INSERT INTO #Temp_Employee2
SELECT JobTitle, COUNT(JobTitle), AVG(AGE), AVG(Salary)
FROM [SQL Tutorial Project].dbo.EmployeeDemographics emp
JOIN [SQL Tutorial Project].dbo.EmployeeSalary sal
	ON EMP.EmployeeID = sal.EmployeeID
GROUP BY JobTitle

SELECT *
FROM #Temp_Employee2

