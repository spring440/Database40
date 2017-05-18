IF EXISTS (SELECT * FROM tempdb.sys.objects WHERE name LIKE '%tmp_Presenters%')
BEGIN
	DROP TABLE #tmp_Presenters 
END;

CREATE TABLE #tmp_Presenters (PresenterName VARCHAR(100));
--bulk insert #tmp_Presenters 
--FROM 'C:\Users\Arin\Documents\COMP 440\Project\Final Project\Presenters.csv'
--WITH
--(
--   FIELDTERMINATOR = ',',
--   ROWTERMINATOR = '\n'
--);
INSERT INTO #tmp_Presenters
SELECT 'Steve Simon' UNION ALL
SELECT 'Jeremiah Peschka' UNION ALL
SELECT 'Jeremiah Peschka' UNION ALL
SELECT 'Kevin Goff' UNION ALL
SELECT 'Chris Seferlis' UNION ALL
SELECT 'Steve Simon' UNION ALL
SELECT 'Mohammad Yusuf' UNION ALL
SELECT 'Kennie Pontoppidan' UNION ALL
SELECT 'John Sterrett' UNION ALL
SELECT 'Thomas Grohser' UNION ALL
SELECT 'Thomas Grohser' UNION ALL
SELECT 'Joe Chang' UNION ALL
SELECT 'Joe Chang' UNION ALL
SELECT 'Michael Wharton' UNION ALL
SELECT 'Sunil Kadimdiwan' UNION ALL
SELECT 'Mike Walsh' UNION ALL
SELECT 'John Miner' UNION ALL
SELECT 'John Miner' UNION ALL
SELECT 'James Serra' UNION ALL
SELECT 'Joseph DAntoni' UNION ALL
SELECT 'Paresh Motiwala' UNION ALL
SELECT 'Mickey Stuewe' UNION ALL
SELECT 'John Miner' UNION ALL
SELECT 'Stacia Misner' UNION ALL
SELECT 'James Serra' UNION ALL
SELECT 'James Serra' UNION ALL
SELECT 'David Peter Hansen' UNION ALL
SELECT 'Steve Simon' UNION ALL
SELECT 'Steve Simon' UNION ALL
SELECT 'Kevin Goff' UNION ALL
SELECT 'Mickey Stuewe' UNION ALL
SELECT 'Allan Hirt' UNION ALL
SELECT 'Allan Hirt' UNION ALL
SELECT 'Robert Pearl' UNION ALL
SELECT 'Steve Simon' UNION ALL
SELECT 'Steve Simon' UNION ALL
SELECT 'John Flannery' UNION ALL
SELECT 'John Flannery' UNION ALL
SELECT 'Steve Simon' UNION ALL
SELECT 'Steve Simon' UNION ALL
SELECT 'Edward Pollack' UNION ALL
SELECT 'Mohammad Yusuf' UNION ALL
SELECT 'Michael Corey' UNION ALL
SELECT 'Steve Simon' UNION ALL
SELECT 'Robert Pearl' UNION ALL
SELECT 'Gigi Bell' UNION ALL
SELECT 'John Flannery' UNION ALL
SELECT 'Allan Hirt' UNION ALL
SELECT 'Jason Horner' UNION ALL
SELECT 'Jason Horner' UNION ALL
SELECT 'Edward Pollack' UNION ALL
SELECT 'Edward Pollack' UNION ALL
SELECT 'Brent Ozar' UNION ALL
SELECT 'James Serra' UNION ALL
SELECT 'Thomas Grohser' UNION ALL
SELECT 'Paul Rizza' UNION ALL
SELECT 'Grant Fritchey' UNION ALL
SELECT 'Sayed Saeed' UNION ALL
SELECT 'John Miner' UNION ALL
SELECT 'Steve Simon' UNION ALL
SELECT 'Paul Rizza' UNION ALL
SELECT 'Stéphane Fréchette' UNION ALL
SELECT 'Chris Bell' UNION ALL
SELECT 'Andy Leonard' UNION ALL
SELECT 'Varsham Papikian' UNION ALL
SELECT 'David Bermingham' UNION ALL
SELECT 'James Serra' UNION ALL
SELECT 'Brent Ozar' UNION ALL
SELECT 'George Walters' UNION ALL
SELECT 'Allan Hirt' UNION ALL
SELECT 'Kevin Goff' UNION ALL
SELECT 'Jack Corbett' UNION ALL
SELECT 'Kevin Goff' UNION ALL
SELECT 'David Peter Hansen' UNION ALL
SELECT 'Stacia Misner' UNION ALL
SELECT 'John Flannery' UNION ALL
SELECT 'John Sterrett' UNION ALL
SELECT 'John Sterrett' UNION ALL
SELECT 'Brandon Leach' UNION ALL
SELECT 'Brandon Leach' UNION ALL
SELECT 'Allan Hirt' UNION ALL
SELECT 'Jeremiah Peschka' UNION ALL
SELECT 'SQLSaturday 364' UNION ALL
SELECT 'SQLSaturday 364' UNION ALL
SELECT 'Steve Simon' UNION ALL
SELECT 'Steve Simon' UNION ALL
SELECT 'Steve Simon' UNION ALL
SELECT 'James Serra' UNION ALL
SELECT 'Steve Simon' UNION ALL
SELECT 'Hilary Cotter' UNION ALL
SELECT 'Stacia Misner' UNION ALL
SELECT 'Jason Brimhall' UNION ALL
SELECT 'Mike Walsh' UNION ALL
SELECT 'Steve Simon' UNION ALL
SELECT 'Kevin Schenega' UNION ALL
SELECT 'Chris Bell' UNION ALL
SELECT 'Kennie Pontoppidan' UNION ALL
SELECT 'Todd Chittenden' UNION ALL
SELECT 'Steve Simon' UNION ALL
SELECT 'Michael Wharton' UNION ALL
SELECT 'Jason Horner' UNION ALL
SELECT 'Chris Bell' UNION ALL
SELECT 'Edward Pollack' UNION ALL
SELECT 'SQLSaturday 364' UNION ALL
SELECT 'Steve Simon' UNION ALL
SELECT 'Mike Hillwig' UNION ALL
SELECT 'Stacia Misner' UNION ALL
SELECT 'SQLSaturday 364' UNION ALL
SELECT 'Hilary Cotter' UNION ALL
SELECT 'Jason Brimhall' UNION ALL
SELECT 'Hilary Cotter' UNION ALL
SELECT 'Hilary Cotter' UNION ALL
SELECT 'Stéphane Fréchette' UNION ALL
SELECT 'Paul Rizza' UNION ALL
SELECT 'Allan Hirt' UNION ALL
SELECT 'Kennie Pontoppidan' UNION ALL
SELECT 'Kevin Goff' UNION ALL
SELECT 'George Walters' UNION ALL
SELECT 'Steve Simon' UNION ALL
SELECT 'George Walters' UNION ALL
SELECT 'George Walters' UNION ALL
SELECT 'David Peter Hansen' UNION ALL
SELECT 'Jason Brimhall' UNION ALL
SELECT 'Steve Simon' UNION ALL
SELECT 'Steve Simon' UNION ALL
SELECT 'Kevin Goff' UNION ALL
SELECT 'Thomas Grohser' UNION ALL
SELECT 'Brandon Leach' UNION ALL
SELECT 'Andy Leonard' UNION ALL
SELECT 'Carl Berglund' UNION ALL
SELECT 'Hilary Cotter' UNION ALL
SELECT 'John Miner' UNION ALL
SELECT 'Melissa Riley' UNION ALL
SELECT 'Adam Jorgensen' UNION ALL
SELECT 'Dennis Messina' UNION ALL
SELECT 'Richie Rump' UNION ALL
SELECT 'Chris Bell' UNION ALL
SELECT 'Jack Corbett' UNION ALL
SELECT 'Aaron Bertrand' UNION ALL
SELECT 'Greg Moore' UNION ALL
SELECT 'Aaron Bertrand' UNION ALL
SELECT 'Kevin Goff' UNION ALL
SELECT 'Grant Fritchey' UNION ALL
SELECT 'Jason Brimhall' UNION ALL
SELECT 'Brent Ozar' UNION ALL
SELECT 'David Bermingham' UNION ALL
SELECT 'James Serra' UNION ALL
SELECT 'James Serra' UNION ALL
SELECT 'Kevin Goff' UNION ALL
SELECT 'Paresh Motiwala' UNION ALL
SELECT 'Kevin Goff' UNION ALL
SELECT 'Mike Walsh' 


;WITH CTE 
AS
(
	SELECT * 
		,ROW_NUMBER() OVER(PARTITION BY LTRIM(RTRIM(PresenterName)) ORDER BY PresenterName) AS RowNo 
	FROM #tmp_Presenters
)
DELETE FROM CTE WHERE RowNo > 1

--SELECT SUBSTRING(PresenterName, 1, CHARINDEX(' ', PresenterName, 1)) AS FirstName, LTRIM(RTRIM(SUBSTRING(PresenterName, CHARINDEX(' ', PresenterName, 1), LEN(PresenterName)))) AS LastName FROM #tmp_Presenters ORDER BY PresenterName;

DECLARE @LastPersonID INT = 0;

SELECT @LastPersonID = COALESCE(MAX(personID), 0) FROM dbo.person;

merge dbo.person AS target
USING (
		SELECT @LastPersonID + ROW_NUMBER() OVER(ORDER BY MainQry.PresenterName) AS NewPersonID 
			,SUBSTRING(PresenterName, 1, CHARINDEX(' ', PresenterName, 1)) AS FirstName
			,LTRIM(RTRIM(SUBSTRING(PresenterName, CHARINDEX(' ', PresenterName, 1), LEN(PresenterName)))) AS LastName 
		FROM 
			#tmp_Presenters AS MainQry 
	) As source 
ON target.personFirstName = source.FirstName AND target.personLastName = source.LastName
WHEN NOT MATCHED THEN 
	INSERT (personID, personFirstName, personLastName, personEmail)
	VALUES (source.NewPersonID, source.FirstName, source.LastName, source.FirstName+'@'+source.LastName+'.com'); 
SELECT * FROM dbo.person;
DROP TABLE #tmp_Presenters;