/*PROJECT ONE-Part 1*/

use Insurance
GO
--Query 1
SELECT ClaimantID, ReopenedDate 
FROM Claimant

--Query 2
SELECT PK, max(EntryDate) as ExaminerAssignedDate 
FROM ClaimLog
WHERE FieldName = 'ExaminerCode'
GROUP BY PK

--Query 3
SELECT ClaimNumber, max(EnteredOn) as LastSavedON
FROM ReservingTool
WHERE Ispublished = 1
GROUP BY ClaimNumber

