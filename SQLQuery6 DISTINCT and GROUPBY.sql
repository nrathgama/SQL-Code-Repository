SELECT DISTINCT ExaminerCode
FROM Insurance.dbo.Claim

SELECT DISTINCT ExaminerCode
	, InjuryState
	, JurisdictionID
	, year (EntryDate) as EntryYear
FROM Insurance.dbo.Claim


SELECT ExaminerCode
FROM Insurance.dbo.Claim
GROUP BY ExaminerCode

SELECT ExaminerCode
	, InjuryState
	, JurisdictionID
	, year (EntryDate) as EntryYear
FROM Insurance.dbo.Claim
GROUP BY ExaminerCode
	, InjuryState
	, JurisdictionID
	, year (EntryDate)


SELECT ExaminerCode	
	, COUNT (*) as NumberOfClaimesHandled
FROM Insurance.dbo.Claim
GROUP BY ExaminerCode

/*PROBLEM*/

SELECT EnteredBy
	, COUNT (*) as NumberOfPulishes
FROM Insurance.dbo.ReservingTool
WHERE IsPublished = 1
GROUP BY EnteredBy
