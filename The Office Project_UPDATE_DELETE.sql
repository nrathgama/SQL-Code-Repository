/*
Updating/Deleting Data
*/
/*
--NOTE: 
INSERT INTO - create a NEW row into the table
UPDATING - will ALTER pre-existing row
DELETING - will REMOVE specific rows from a table
*/

############################################################
--UPDATE
############################################################

SELECT *
FROM [SQL Tutorial Project].DBO.EmployeeDemographics

/*Updating EmployeeID of Holly Flax*/
UPDATE [SQL Tutorial Project].DBO.EmployeeDemographics
SET  EmployeeID = 1012
WHERE FirstName = 'Holly' AND LastName = 'Flax'

/*Updating Employee info of Holly Flax*/

UPDATE [SQL Tutorial Project].DBO.EmployeeDemographics
SET  Age = '31', Gender = 'Female'
WHERE FirstName = 'Holly' AND LastName = 'Flax'

 /*Using UNIQUE KEY to update info*/
 UPDATE [SQL Tutorial Project].DBO.EmployeeDemographics
SET  Age = '31', Gender = 'Female'
WHERE EmployeeID = 1012

############################################################
--DELETE
############################################################

/* Toby Flenderson moved to CostaRica */

--DELETE FROM [SQL Tutorial Project].DBO.EmployeeDemographics
--WHERE EmployeeID = 1005

/*DELETE FROM [SQL Tutorial Project].DBO.EmployeeDemographics
statement will delete the whole table and the data can NOT be recovered!!!

--NOTE: We can use a SELECT statement to verify the DELETE statement data to make sure we
are deleting the CORRECT informatio. 

SELECT * 
FROM [SQL Tutorial Project].DBO.EmployeeDemographics
WHERE EmployeeID = 1005

*/

