/*
ALIASING
*/

/*
Aliasing COLUMN Names
*/
SELECT *
FROM [SQL Tutorial Project].DBO.EmployeeDemographics


SELECT FirstName AS Fname /*AS can be replaced with a SPACE*/
FROM [SQL Tutorial Project].DBO.EmployeeDemographics


SELECT FirstName + ' ' + LastName AS FullName /*AS FullName is removed it will be an unnamed column */
FROM [SQL Tutorial Project].DBO.EmployeeDemographics


SELECT AVG(Age) AS AvgAge
FROM [SQL Tutorial Project].DBO.EmployeeDemographics

/*
Aliasing TABLE Names
*/
/*
--NOTE: It is IMPORTANT to give table names Proper aliases that the table can be easily recognized with. 
Aliasing tables with one letter is not idle since that can be confusing to diffrentiate. As the queries
gets complicated recognizable aliases can be very useful and eaily recognizable.
*/

SELECT Demo.EmployeeID, Sal.Salary
FROM [SQL Tutorial Project].DBO.EmployeeDemographics AS Demo
JOIN [SQL Tutorial Project].DBO.EmployeeSalary AS Sal
	ON Demo.EmployeeID = Sal.EmployeeID

SELECT Demo.EmployeeID, Demo.FirstName, Demo.LastName, Sal.JobTitle, Ware.Age 
FROM [SQL Tutorial Project].DBO.EmployeeDemographics AS Demo
LEFT JOIN [SQL Tutorial Project].DBO.EmployeeSalary AS Sal
	ON Demo.EmployeeID = Sal.EmployeeID
LEFT JOIN [SQL Tutorial Project].DBO.WareHouseEmployees AS Ware
	ON Demo.EmployeeID = Ware.EmployeeID