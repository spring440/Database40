CREATE TABLE #Events (EventID INT, EventName VARCHAR(50), EventDate SMALLDATETIME) 
INSERT INTO #Events
SELECT 1,'SQLSaturday #626 - Budapest 2017','05/06/2017' UNION ALL
SELECT 2,'SQLSaturday #615 - Baltimore 2017','05/06/2017' UNION ALL
SELECT 3,'SQLSaturday #608 - Bogota 2017','05/13/2017' UNION ALL
SELECT 4,'SQLSaturday #616 - Kyiv 2017','05/20/2017' UNION ALL
SELECT 5,'SQLSaturday #588 - New York City 2017','05/20/2017' UNION ALL
SELECT 6,'SQLSaturday #630 - Brisbane 2017','05/27/2017' UNION ALL
SELECT 7,'SQLSaturday #599 - Plovdiv 2017','05/27/2017' UNION ALL
SELECT 8,'SQLSaturday #638 - Philadelphia 2017','06/03/2017' 


INSERT INTO dbo.event(eventID, eventName, eventStarDateTime, eventEndDateTime)
SELECT EventID, EventName, EventDate, DATEADD(MINUTE, -1, DATEADD(DAY, 1, EventDate)) 
FROM 
	#Events AS MainQry 
WHERE NOT EXISTS (SELECT 1 FROM dbo.event e WHERE e.eventID=MainQry.eventID)
		 
SELECT * FROM dbo.event;

DROP TABLE #Events;



