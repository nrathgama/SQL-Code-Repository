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
