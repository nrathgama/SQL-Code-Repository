/*
CASE STATEMENT
*/
SELECT FirstName, LastName, Age,
CASE
	WHEN Age > 30 THEN 'Old'
	WHEN Age BETWEEN 27 AND 30 THEN 'Young'
	ELSE 'Baby'
END
FROM [SQL Tutorial Project].DBO.EmployeeDemographics
WHERE Age is NOT NULL
ORDER BY Age

/* This statement still gives the same results as above since
following "WHEN Age > 30 THEN 'Old'" the Age requirement is met 
therefore 'Stanley' will not be displayed when Age=38
*/
SELECT FirstName, LastName, Age,
CASE
	WHEN Age > 30 THEN 'Old'
	WHEN Age = 38 THEN 'Stanley'
	ELSE 'Baby'
END
FROM [SQL Tutorial Project].DBO.EmployeeDemographics
WHERE Age is NOT NULL
ORDER BY Age

/*In order to get the 'Stanley' when age=38, the WHEN statements have to be rearranged*/
SELECT FirstName, LastName, Age,
CASE
	WHEN Age = 38 THEN 'Stanley'
	WHEN Age > 30 THEN 'Old'
	ELSE 'Baby'
END
FROM [SQL Tutorial Project].DBO.EmployeeDemographics
WHERE Age is NOT NULL
ORDER BY Age

##################################################################

SELECT *
FROM [SQL Tutorial Project].DBO.EmployeeDemographics
JOIN [SQL Tutorial Project].DBO.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

/* Salary and Raises*/

SELECT FirstName, LastName, JobTitle, Salary,
CASE
	WHEN JobTitle = 'Salesman' THEN Salary + (Salary * .10)
	WHEN JobTitle = 'Accountant' THEN Salary + (Salary * .05)
	WHEN JobTitle = 'HR' THEN Salary + (Salary * .000001)
	ELSE Salary + (Salary * .03)
END AS SalaryAfterRasie
FROM [SQL Tutorial Project].DBO.EmployeeDemographics
JOIN [SQL Tutorial Project].DBO.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
