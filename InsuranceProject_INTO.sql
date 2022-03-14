SELECT *
INTO Insurance.dbo.office2
FROM Insurance.dbo.office

SELECT TOP 10 BusinessName, COUNT (BusinessName) as Employees
INTO Insurance.dbo.Top10Inc2
FROM Insurance.dbo.Patient
WHERE BusinessName like '%inc%'
GROUP BY BusinessName
ORDER BY COUNT (BusinessName) DESC


SELECT *
FROM Insurance.dbo.Attachment
WHERE EnteredBy = 'qkemp' OR EnteredBy = 'kgus' OR EnteredBy = 'unassigned'

/*Easier to use IN Syntax instead*/

SELECT *
FROM Insurance.dbo.Attachment
WHERE EnteredBy IN ( 'qkemp','kgus', 'unassigned')

/*in this instance IN ysntax does not work*/

SELECT *
FROM Insurance.dbo.Attachment
WHERE filename like '%.ppt%' or filename like '%.doc%'

/*HAVING Syntax*/

 SELECT EnteredBy
	, COUNT (*) as NumberOfPulishes
FROM Insurance.dbo.ReservingTool
WHERE IsPublished = 1
GROUP BY EnteredBy  
HAVING COUNT (*)>50
