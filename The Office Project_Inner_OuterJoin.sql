/*
Inner Joins, Full/Left/Right Outer Joins
*/

Select *
FROM [SQL Tutorial Project].DBO.EmployeeDemographics

SELECT *
FROM [SQL Tutorial Project].dbo.EmployeeSalary

SELECT *
FROM [SQL Tutorial Project].DBO.EmployeeDemographics
INNER JOIN [SQL Tutorial Project].DBO.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT *
FROM [SQL Tutorial Project].DBO.EmployeeDemographics
FULL OUTER JOIN [SQL Tutorial Project].DBO.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT *
FROM [SQL Tutorial Project].DBO.EmployeeDemographics
LEFT OUTER JOIN [SQL Tutorial Project].DBO.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT *
FROM [SQL Tutorial Project].DBO.EmployeeDemographics
RIGHT OUTER JOIN [SQL Tutorial Project].DBO.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

/*
INNER JOIN of Employee Demographics and Employee Salary tables both give same results
since it is an INNER JOIN where common data columns are picked
*/
SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM [SQL Tutorial Project].DBO.EmployeeDemographics
INNER JOIN [SQL Tutorial Project].DBO.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM [SQL Tutorial Project].DBO.EmployeeDemographics
INNER JOIN [SQL Tutorial Project].DBO.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM [SQL Tutorial Project].DBO.EmployeeDemographics
RIGHT OUTER JOIN [SQL Tutorial Project].DBO.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM [SQL Tutorial Project].DBO.EmployeeDemographics
RIGHT OUTER JOIN [SQL Tutorial Project].DBO.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM [SQL Tutorial Project].DBO.EmployeeDemographics
LEFT OUTER JOIN [SQL Tutorial Project].DBO.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

	/*The Regional Manager, Michael Scott wants to know
	Who earns the highest salary?
	***except himself***
	*/
SELECT *
FROM [SQL Tutorial Project].DBO.EmployeeDemographics
FULL OUTER JOIN [SQL Tutorial Project].DBO.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
FROM [SQL Tutorial Project].DBO.EmployeeDemographics
INNER JOIN [SQL Tutorial Project].DBO.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE FirstName <> 'Michael' 
ORDER BY Salary DESC 
/* Dwight makes the highst salary after Michael!!*/

/* Kevin Malone might have made a mistake calculating av salary for salesmen. 
Angel Martin is trying to figure out the error!
*/
SELECT JobTitle, Salary
FROM [SQL Tutorial Project].DBO.EmployeeDemographics
INNER JOIN [SQL Tutorial Project].DBO.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE JobTitle = 'Salesman' 

SELECT JobTitle, AVG(Salary)
FROM [SQL Tutorial Project].DBO.EmployeeDemographics
INNER JOIN [SQL Tutorial Project].DBO.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE JobTitle = 'Salesman' 
GROUP BY JobTitle

