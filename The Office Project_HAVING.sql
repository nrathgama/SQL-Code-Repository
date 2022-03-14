/*
Having Clause
*/

SELECT *
FROM [SQL Tutorial Project].dbo.EmployeeDemographics
JOIN [SQL Tutorial Project].DBO.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT JobTitle, COUNT(JobTitle)
FROM [SQL Tutorial Project].dbo.EmployeeDemographics
JOIN [SQL Tutorial Project].DBO.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
HAVING COUNT(JobTitle) > 1
GROUP BY JobTitle

/*NOTE: This gives "Incorrect syntax near the keyword 'GROUP'." ERROR since HAVING clause cannot be
executed before the GROUBY clause. Since the HAVING aggregate statemnt is base on the GROUBY statement results.*/

SELECT JobTitle, COUNT(JobTitle)
FROM [SQL Tutorial Project].dbo.EmployeeDemographics
JOIN [SQL Tutorial Project].DBO.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING COUNT(JobTitle) > 1

SELECT JobTitle, AVG(Salary)
FROM [SQL Tutorial Project].dbo.EmployeeDemographics
JOIN [SQL Tutorial Project].DBO.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary) > 45000
ORDER BY AVG(Salary)

