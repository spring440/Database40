CREATE TABLE #Events (EventID INT, EventName VARCHAR(50), CityName VARCHAR(50), StateName VARCHAR(20), CountryName VARCHAR(20)) 
CREATE TABLE #City (CityName VARCHAR(100)) 
/*
Manually added State and Country for the list of events, in order to get proper CityStateCountryID.
*/
INSERT INTO #Events (EventID, EventName, StateName, CountryName)
SELECT 1,'SQLSaturday #626 - Budapest 2017', 'BD', 'Hungary' UNION ALL
SELECT 2,'SQLSaturday #615 - Baltimore 2017', 'Maryland', 'USA' UNION ALL
SELECT 3,'SQLSaturday #608 - Bogota 2017', 'BO', 'Colombia' UNION ALL
SELECT 4,'SQLSaturday #616 - Kyiv 2017', 'KV', 'Ukrain' UNION ALL
SELECT 5,'SQLSaturday #588 - New York 2017', 'New York', 'USA' UNION ALL
SELECT 6,'SQLSaturday #630 - Brisbane 2017', 'BR', 'Australia' UNION ALL
SELECT 7,'SQLSaturday #599 - Plovdiv 2017', 'PL', 'Bulgaria' UNION ALL
SELECT 8,'SQLSaturday #638 - Philadelphia 2017', 'Pennsylvania', 'USA'


INSERT INTO #City
SELECT LTRIM(RTRIM(SUBSTRING(EventName, CHARINDEX('-', EventName, 1) + 1, LEN(EventName) - CHARINDEX('-', EventName, 1) - CHARINDEX(' ', REVERSE(EventName), 1)))) AS CityName   
FROM 
	#Events AS MainQry 

INSERT INTO dbo.City 
SELECT CityName 
FROM 
	#City AS MainQry 
WHERE 
	NOT EXISTS (SELECT 1 FROM dbo.city WHERE MainQry.CityName = City.cityName)

UPDATE MainQry 
SET CityName  = LTRIM(RTRIM(SUBSTRING(EventName, CHARINDEX('-', EventName, 1) + 1, LEN(EventName) - CHARINDEX('-', EventName, 1) - CHARINDEX(' ', REVERSE(EventName), 1))))
FROM 
	#Events AS MainQry 
	
;WITH CTE_State
AS
(
	SELECT
		StateName
	FROM 
		#Events AS MainQry 
	WHERE 
		NOT EXISTS (SELECT 1 FROM dbo.stateTable ST WHERE ST.stateName = MainQry.StateName)
)
INSERT INTO dbo.stateTable (stateName)
SELECT * FROM CTE_State

;WITH CTE_Country
AS
(
	SELECT
		CountryName
	FROM 
		#Events AS MainQry 
	WHERE 
		NOT EXISTS (SELECT 1 FROM dbo.country C WHERE C.countryName = MainQry.CountryName)
)
INSERT INTO dbo.country
SELECT * FROM CTE_Country

INSERT INTO dbo.cityStateCountry (countryID, stateID, cityID)
SELECT C.countryID, ST.stateID, CT.cityID
FROM 
	#Events AS MainQry 
	INNER JOIN dbo.city CT ON MainQry.CityName = CT.cityName
	INNER JOIN dbo.stateTable ST ON ST.stateName = MainQry.StateName 
	INNER JOIN dbo.country C ON MainQry.CountryName = C.countryName
WHERE 
	NOT EXISTS (SELECT 1 FROM dbo.cityStateCountry AS SubQry WHERE SubQry.cityID = CT.CityID AND SubQry.stateID = ST.StateID AND SubQry.countryID = C.countryID);

DECLARE @MaxVenueID INT = 0 
SELECT @MaxVenueID = MAX(venueID) FROM dbo.venue;

INSERT INTO dbo.venue (venueID, venueName, venueAddress, venueCityID)
SELECT COALESCE(@MaxVenueID, 0) + ROW_NUMBER() OVER(ORDER BY MainQry.CityName) AS NewVenueID  
	,MainQry.CityName + ' City Hall' 
	,'Address1'
	,CSC.cityStateCountryID
FROM 
	#Events AS MainQry 
	INNER JOIN dbo.city CT ON MainQry.CityName = CT.cityName
	INNER JOIN dbo.stateTable ST ON ST.stateName = MainQry.StateName 
	INNER JOIN dbo.country C ON MainQry.CountryName = C.countryName
	INNER JOIN dbo.cityStateCountry CSC ON CT.cityID = CSC.cityID AND CSC.stateID = ST.stateID AND CSC.countryID = C.countryID
WHERE 
	NOT EXISTS (SELECT 1 FROM dbo.venue AS SubQry WHERE SubQry.venueName = MainQry.CityName + ' City Hall');

DECLARE @maxEventVenueID INT = 0 
SELECT @maxEventVenueID = MAX(eventVenueID) FROM dbo.eventVenue;

INSERT INTO dbo.eventVenue (eventVenueID, eventID, venueID)
SELECT COALESCE(@maxEventVenueID, 0) + ROW_NUMBER() OVER(ORDER BY E.eventID, V.VenueID) AS NewEventVenueID, E.eventID, V.venueID 
FROM #Events AS MainQry 
	INNER JOIN dbo.event E ON MainQry.EventName = E.eventName
	INNER JOIN dbo.venue V ON MainQry.CityName + ' City Hall' = V.venueName
WHERE 
	NOT EXISTS (SELECT 1 FROM dbo.eventVenue EV WHERE EV.eventID = E.eventID AND EV.venueID = V.venueID);

DECLARE @maxRoomID INT = 0;
SELECT @MaxVenueID = MAX(RoomID) FROM dbo.room;

INSERT INTO dbo.room (roomID, roomName, venueID, roomCapacity)
SELECT COALESCE(@MaxVenueID, 0) + ROW_NUMBER() OVER(ORDER BY MainQry.EventName) AS NewRoomID 
	,MainQry.CityName + ' Room' AS NewRoomName 
	,V.venueID
	,100 
FROM 
	#Events AS MainQry 
	INNER JOIN dbo.venue V On MainQry.CityName + ' City Hall' = v.venueName
WHERE 
	NOT EXISTS (SELECT 1 FROM dbo.room R WHERE R.roomName = MainQry.CityName + ' Room');

SELECT * FROM dbo.room;		
	 


DROP TABLE #Events;
DROP TABLE #City;
