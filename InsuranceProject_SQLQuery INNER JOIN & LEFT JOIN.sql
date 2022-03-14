--INNER JOIN
\SELECT Reserve.ClaimantID
	, ReserveType.ReserveTypeDesc as ReserveType
	, Reserve.ReserveAmount
FROM Reserve
INNER JOIN ReserveType ON Reserve.ReserveTypeID = ReserveType.ReserveTypeID 

SELECT C.ClaimNumber, CT.ClaimantTypeDesc as ClaimantType 
FROM Claim C
INNER JOIN Claimant Clmt ON C.ClaimID = Clmt.ClaimID
INNER JOIN ClaimantType CT ON Clmt.ClaimantTypeID = CT.ClaimantTypeID

--claim table to claimlog table
SELECT TOP 100 ClaimNumber, CL.*
FROM Claim C
INNER JOIN ClaimLog CL ON C.ClaimID = CL.PK
ORDER BY PK

--LEFT JOIN
SELECT ClaimNumber 
FROM Claim
ORDER BY ClaimNumber

SELECT C.ClaimNumber, SUM(RT.ExpenseReservingAmount) as ExpensesSum
FROM Claim C
INNER JOIN ReservingTool RT ON C. ClaimNumber = RT.ClaimNumber
GROUP BY C.ClaimNumber
ORDER BY SUM(RT.ExpenseReservingAmount)

SELECT C.ClaimNumber, SUM(RT.ExpenseReservingAmount) as ExpensesSum
FROM Claim C
LEFT JOIN ReservingTool RT ON C. ClaimNumber = RT.ClaimNumber
GROUP BY C.ClaimNumber
ORDER BY SUM(RT.ExpenseReservingAmount)

/*PRACTICE PROBLEM*/
SELECT CS.ClaimStatusDesc, Clmt.ClaimantID, P.MiddleName
FROM Claimant Clmt
INNER JOIN ClaimStatus CS ON CS.ClaimStatusID = Clmt . claimStatusID 
INNER JOIN Patient P ON Clmt.PatientID = P.PatientID
WHERE P.MiddleName <>''

SELECT *
FROM Patient


--PROBLEM#2
--Only 91 resulted 
SELECT C.ClaimNumber, COUNT(CL.PK) as LockCount 
FROM Claim C
LEFT JOIN ClaimLog CL ON C.ClaimID = CL.PK
WHERE FieldName = 'LockedBy'
GROUP BY C.ClaimNumber
ORDER BY LockCount 

SELECT *
FROM ClaimLog

--ALL 100 RECORDS 
SELECT C.ClaimNumber, COUNT(CL.PK) as LockCount 
FROM Claim C
LEFT JOIN ClaimLog CL ON C.ClaimID = CL.PK AND FieldName = 'LockedBy'
--WHERE FieldName = 'LockedBy'
GROUP BY C.ClaimNumber
ORDER BY LockCount 







