SELECT MAX (PaymentLimit) as MaximumPaymentLimit
	, MIN(PaymentLimit) as MinimumPaymentLimit 
	, MIN(ReserveLimit) as MinimumResLimit 
	, AVG(ReserveLimit) as AvgResLimit 	
FROM Insurance.dbo.Users

SELECT 
	COUNT (ReopenedDate) as ReopnededCount 
	, COUNT (ClosedDate) as ClosedCount
	, COUNT (ClosedDate) - COUNT (ReopenedDate)  as ClosedReopenedDifference 
FROM Insurance.dbo.Claimant

/*PRACTICE PROBLEM*/

SELECT AVG(ReserveAmount) as AverageReserveAmount
FROM Insurance.dbo.Reserve






