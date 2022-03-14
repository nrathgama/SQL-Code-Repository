/*
UNION, UNION ALL
*/
SELECT *
FROM [SQL Tutorial Project].DBO.EmployeeDemographics
UNION
SELECT *
FROM [SQL Tutorial Project].dbo.WareHouseEmployees

SELECT *
FROM [SQL Tutorial Project].dbo.EmployeeDemographics
FULL OUTER JOIN [SQL Tutorial Project].DBO.WareHouseEmployees
	ON EmployeeDemographics.EmployeeID = WareHouseEmployees.EmployeeID

SELECT *
FROM [SQL Tutorial Project].DBO.EmployeeDemographics
UNION ALL
SELECT *
FROM [SQL Tutorial Project].dbo.WareHouseEmployees
ORDER BY EmployeeID

/* This still WORKS since same amount of columns with same types of data.
like employeeID, FirstName, & Jobtitle are text while Age and salary are Integres.
Yet the first name & job title and age & salary are not compatible data to be in UNION with
*/

SELECT EmployeeID, FirstName, Age
FROM [SQL Tutorial Project].DBO.EmployeeDemographics
UNION
SELECT EmployeeID, JobTitle, Salary
FROM [SQL Tutorial Project].DBO.EmployeeSalary
ORDER BY EmployeeID

