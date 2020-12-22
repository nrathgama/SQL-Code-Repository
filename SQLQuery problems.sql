/*Select all the PDF files in the Attachment table that were entered by lnikki*/

SELECT *
FROM Insurance.dbo.Attachment
WHERE EnteredBy = 'lnikki' 
and filename like '%.pdf%'

/*Find all the medical reserve type records in the Reserve Type table */

SELECT *
FROM Insurance.dbo.ReserveType
WHERE ReserveTypeID = 1 OR ParentID = 1

/*Which claimants (denoted by ClaimantID) have at least 15 reserve changes? */

SELECT ClaimantID, COUNT(*) AS ReserveChangeCount 
FROM Insurance.dbo.Reserve
GROUP BY ClaimantID
HAVING COUNT(*) >= 15


/*Copy the Claim table schema (i.e. the table without any of the data) into a table called Claim2 */

SELECT TOP 0 *
INTO Insurance.dbo.claim2
FROM Insurance.dbo.claim

/*How many of each document type are in the attachment table? */

SELECT RIGHT (fileName, 4) as AttchmentType, COUNT(1) as Counts 
FROM Insurance.dbo.Attachment
GROUP BY RIGHT (fileName, 4)
ORDER BY COUNT (1) DESC
