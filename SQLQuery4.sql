/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [LogID]
      ,[PK]
      ,[FieldName]
      ,[OldValue]
      ,[NewValue]
      ,[EntryDate]
  FROM [Insurance].[dbo].[ClaimLog]
  WHERE FieldName = 'ExaminerCode' and OldValue = 'Unassigned'

  SELECT * FROM Insurance.dbo.Users
  WHERE UserName = 'dclara' OR Supervisor = 'dclara'

SELECT ClaimantID
		, ClosedDate	
		, ReopenedDate
		, try_convert(int, ClosedDate - ReopenedDate) as DateDifference
FROM [Insurance].[dbo].[Claimant]
WHERE ClosedDate IS NOT NULL

/**PRACTICE PROBLEM**/

SELECT *
FROM [Insurance].[dbo].[Claimant]
WHERE year (ClosedDate) = 2018
	AND ReopenedDate IS NULL



















