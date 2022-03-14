/*
PARTITION BY
*/

/*
--NOTE:
GROUP BY- reduces the number of rows in the output by rolling them up and then calculating the sums or 
averages for each group.
PARTIOTION BY- divides the results into partitions and changes how the window fuction is calculated.
This does not reduce the number of rows returned in an output. 
*/

SELECT *
FROM [SQL Tutorial Project].DBO.WareHouseEmployeeDemographics

SELECT *
FROM [SQL Tutorial Project].DBO.EmployeeSalary

SELECT *
FROM [SQL Tutorial Project].DBO.EmployeeDemographics Dem
JOIN [SQL Tutorial Project].DBO.EmployeeSalary Sal
	ON Dem.EmployeeID = Sal.EmployeeID

SELECT FirstName, LastName, Gender, Salary, COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender
FROM [SQL Tutorial Project].DBO.EmployeeDemographics Dem
JOIN [SQL Tutorial Project].DBO.EmployeeSalary Sal
	ON Dem.EmployeeID = Sal.EmployeeID

SELECT FirstName, LastName, Gender, Salary, COUNT(Gender)
FROM [SQL Tutorial Project].DBO.EmployeeDemographics Dem
JOIN [SQL Tutorial Project].DBO.EmployeeSalary Sal
	ON Dem.EmployeeID = Sal.EmployeeID
GROUP BY FirstName, LastName, Gender, Salary 
/*This would not give the PARTITION BY aggregate column*/

SELECT Gender, COUNT(Gender)
FROM [SQL Tutorial Project].DBO.EmployeeDemographics Dem
JOIN [SQL Tutorial Project].DBO.EmployeeSalary Sal
	ON Dem.EmployeeID = Sal.EmployeeID
GROUP BY Gender
/*This statement gives one row for each gender unlike PARTITION BY clause.
It is very useful if used properly */