/*
	Sample stored procedure to be used by application;
*/
DECLARE @strSQL NVARCHAR(MAX) = ''
IF NOT EXISTS (SELECT 1 FROM sys.procedures WHERE Name = 'usp_Person_Insert')
BEGIN 
	SET @strSQL = 'CREATE PROCEDURE dbo.usp_Person_Insert AS SELECT 1 AS Col1;'
	EXEC sp_EXECUTESQL @strSQL;
END;
GO
ALTER PROCEDURE dbo.usp_Person_Insert 
(
	@PersonID INT 
	,@PersonFirstName NVARCHAR(50) 
	,@PersonLastName NVARCHAR(50) 
	,@PersonAddress1 NVARCHAR(50) 
	,@PersonAddress2 NVARCHAR(50) 
	,@PersonZipCode NVARCHAR(10) 
	,@PersonCityID INT 
	,@PersonEmail NVARCHAR(50)
)
AS
INSERT INTO dbo.person (personID, personFirstName, personLastName, personAdress1, personAdress2, personZipCode, personCityID, personEmail) 
VALUES (@PersonID, @PersonFirstName, @PersonLastName, @PersonAddress1, @PersonAddress2, @PersonZipCode, @PersonCityID, @PersonEmail);

Go

DECLARE @strSQL NVARCHAR(MAX) = ''
IF NOT EXISTS (SELECT 1 FROM sys.procedures WHERE Name = 'usp_Person_Update')
BEGIN 
	SET @strSQL = 'CREATE PROCEDURE dbo.usp_Person_Update AS SELECT 1 AS Col1;'
	EXEC sp_EXECUTESQL @strSQL;
END;
GO
ALTER PROCEDURE dbo.usp_Person_Update 
(
	@PersonID INT 
	,@PersonFirstName NVARCHAR(50) 
	,@PersonLastName NVARCHAR(50) 
	,@PersonAddress1 NVARCHAR(50) 
	,@PersonAddress2 NVARCHAR(50) 
	,@PersonZipCode NVARCHAR(10) 
	,@PersonCityID INT 
	,@PersonEmail NVARCHAR(50)
)
AS
UPDATE dbo.person 
SET 
	personFirstName = @PersonFirstName
	, personLastName = @PersonLastName
	, personAdress1 = @PersonAddress1
	, personAdress2 = @PersonAddress2
	, personZipCode = @PersonZipCode
	, personCityID = @PersonCityID
	, personEmail = @PersonEmail 
WHERE 
	personID = @PersonID;

GO

DECLARE @strSQL NVARCHAR(MAX) = ''
IF NOT EXISTS (SELECT 1 FROM sys.procedures WHERE Name = 'usp_Person_Delete')
BEGIN 
	SET @strSQL = 'CREATE PROCEDURE dbo.usp_Person_Delete AS SELECT 1 AS Col1;'
	EXEC sp_EXECUTESQL @strSQL;
END;
GO
ALTER PROCEDURE dbo.usp_Person_Delete 
(
	@PersonID INT 
)
AS
DELETE FROM dbo.person 
WHERE 
	personID = @PersonID;
 
GO

DECLARE @strSQL NVARCHAR(MAX) = ''
IF NOT EXISTS (SELECT 1 FROM sys.procedures WHERE Name = 'usp_Insert_PresenterPresentation')
BEGIN 
	SET @strSQL = 'CREATE PROCEDURE dbo.usp_Insert_PresenterPresentation AS SELECT 1 AS Col1;'
	EXEC sp_EXECUTESQL @strSQL;
END;
GO
ALTER PROCEDURE dbo.usp_Insert_PresenterPresentation
	@PresenterFirstName NVARCHAR(100)
	,@PresenterLastName NVARCHAR(100) 
	,@ClassTitle NVARCHAR(30)
	,@EventName NVARCHAR(100) = 'SQLSaturday #626 - Budapest 2017'
AS

--CHeck to see if presenter exist or not. If not insert with firstnamne+ lastnamne as email with roleid = 3
--check to see if class title exist or not. if not added it
IF NOT EXISTS (SELECT 1 FROM dbo.person p WHERE p.PersonFirstName = @PresenterFirstName AND p.PersonLastName = @PresenterLastName)
BEGIN
	DECLARE @maxPersonID INT = 0 
	SELECT @maxPersonID = MAX(personID) FROM dbo.person
	INSERT INTO dbo.person (personID, personFirstName, personLastName, personEmail)
	VALUES (COALESCE(@MaxpersonID, 0) + 1, @PresenterFirstName, @PresenterLastName, @PresenterFirstName + '@' + @PresenterLastName + '.com') 
END;

IF NOT EXISTS (SELECT 1 FROM dbo.class C WHERE C.classTitle = @ClassTitle)
BEGIN 
	DECLARE @maxClassID INT = 0; 
	SELECT @maxClassID = MAX(classID) FROM dbo.class 
	INSERT INTO dbo.class (classID, classTitle, className) 
	VALUES (COALESCE(@maxClassID, 0) + 1, @ClassTitle, @ClassTitle)
END; 

DECLARE @maxRoomClassID INT = 0;
SELECT @maxRoomClassID = MAX(RoomClassID) FROM dbo.roomClass;

INSERT INTO dbo.roomClass (roomClassID, roomID, classID)
SELECT COALESCE(@maxRoomClassID, 0) + ROW_NUMBER() OVER(ORDER BY r.RoomID, CL.ClassID) AS NewRoomClassID, r.roomID, CL.classID 
FROM 
	dbo.Class CL 
	INNER JOIN dbo.event E ON 1 = 1 
	INNER JOIN dbo.eventVenue EV ON E.eventID = EV.eventID 
	INNER JOIN dbo.venue V ON EV.venueID = V.venueID 
	INNER JOIN dbo.room R ON V.venueID = R.venueID 
WHERE 
	1 = 1
	AND E.eventName = @EventName 
	AND CL.classTitle = @ClassTitle
	AND NOT EXISTS (SELECT 1 FROM dbo.roomClass RC WHERE RC.roomID = r.roomID AND RC.classID = CL.classID);

INSERT INTO dbo.classPersonRole (personID, roleID, roomClassID)
SELECT 
	P.personID 
	,3 AS RoleID 
	,RC.roomClassID  
FROM 
	dbo.roomClass RC 
	INNER JOIN dbo.class C ON RC.classID = C.classID
	INNER JOIN dbo.room R ON RC.roomID = R.roomID
	INNER JOIN dbo.venue V ON R.venueID = V.venueID 
	INNER JOIN dbo.eventVenue EV ON V.venueID = EV.venueID
	INNER JOIN dbo.event E ON E.eventID = EV.eventID
	INNER JOIN dbo.person P ON 1 = 1 
WHERE 
	C.classTitle = @ClassTitle 
	AND E.eventName = @EventName 
	AND P.personFirstName = @PresenterFirstName 
	AND P.personLastName = @PresenterLastName 
	AND NOT EXISTS (SELECT 1 FROM dbo.classPersonRole CPR WHERE CPR.personID = P.personID AND CPR.roomClassID = RC.roomClassID AND CPR.roleID = 3);

SELECT 
	P.personID 
	,P.personFirstName
	,P.personLastName 
	,V.venueName 
	,E.eventName 
	,R.roomName 
	,C.classTitle 
FROM 
	dbo.roomClass RC 
	INNER JOIN dbo.class C ON RC.classID = C.classID
	INNER JOIN dbo.room R ON RC.roomID = R.roomID
	INNER JOIN dbo.venue V ON R.venueID = V.venueID 
	INNER JOIN dbo.eventVenue EV ON V.venueID = EV.venueID
	INNER JOIN dbo.event E ON E.eventID = EV.eventID
	INNER JOIN dbo.classPersonRole CPR ON CPR.roomClassID = CPR.roomClassID 
	INNER JOIN dbo.person P ON CPR.personID = P.personID  
WHERE 
	C.classTitle = @ClassTitle 
	AND E.eventName = @EventName 
	AND P.personFirstName = @PresenterFirstName 
	AND P.personLastName = @PresenterLastName
	AND CPR.roleID = 3; 

GO

DECLARE @strSQL NVARCHAR(MAX) = ''
IF NOT EXISTS (SELECT 1 FROM sys.procedures WHERE Name = 'usp_Search_Event_Class_Track')
BEGIN 
	SET @strSQL = 'CREATE PROCEDURE dbo.usp_Search_Event_Class_Track AS SELECT 1 AS Col1;'
	EXEC sp_EXECUTESQL @strSQL;
END;
GO
ALTER PROCEDURE dbo.usp_Search_Event_Class_Track
	@EventName NVARCHAR(100) = 'SQLSaturday #626 - Budapest 2017'
AS

SELECT 
	E.eventName 
	,V.venueName 
	,R.roomName 
	,C.classTitle 
	,T.subject AS TrackSubject  
FROM 
	dbo.event E 
	INNER JOIN dbo.eventVenue EV ON E.eventID = EV.eventID
	INNER JOIN dbo.venue V ON EV.venueID = V.venueID 
	INNER JOIN dbo.room R ON V.venueID = R.venueID 
	INNER JOIN dbo.roomClass RC ON R.roomID = RC.roomID 
	INNER JOIN dbo.class C ON RC.classID = C.classID 
	INNER JOIN dbo.classLecture CL ON C.classID = CL.classID
	INNER JOIN dbo.lectureTrack LT ON LT.lectureID = CL.lectureID 
	INNER JOIN dbo.track T ON LT.trackID = T.trackID  
WHERE 
	E.eventName = @EventName; 
	