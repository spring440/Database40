IF EXISTS (SELECT * FROM tempdb.sys.objects WHERE name LIKE '%tmp_Sponsors%')
BEGIN
	DROP TABLE #tmp_Sponsors 
END;

CREATE TABLE #tmp_Sponsors (SponsorName VARCHAR(50), SponsorLevel VARCHAR(50));
INSERT INTO #tmp_Sponsors
		SELECT 'VMWare','Platinum Sponsor' UNION ALL
		SELECT 'Verizon Digital Media Services','Platinum Sponsor' UNION ALL
		SELECT 'Microsoft Corporation (GAP) (GAP Sponsor)','Platinum Sponsor' UNION ALL
		SELECT 'Tintri','Platinum Sponsor' UNION ALL
		SELECT 'Amazon Web Services, LLC','Gold Sponsor' UNION ALL
		SELECT 'Pyramid Analytics (GAP Sponsor)','Gold Sponsor' UNION ALL
		SELECT 'Pure Storage','Gold Sponsor' UNION ALL
		SELECT 'Profisee','Gold Sponsor' UNION ALL
		SELECT 'NetLib Security','Silver Sponsor' UNION ALL
		SELECT 'Melissa Data Corp.','Silver Sponsor' UNION ALL
		SELECT 'Red Gate Software','Silver Sponsor' UNION ALL
		SELECT 'SentryOne','Silver Sponsor' UNION ALL
		SELECT 'Hush Hush','Bronze Sponsor' UNION ALL
		SELECT 'COZYROC','Bronze Sponsor' UNION ALL
		SELECT 'SQLDocKit by Acceleratio Ltd.','Bronze Sponsor'

DECLARE @maxSponsorID INT = 0;
SELECT @maxSponsorID = MAX(SponsorID) FROM dbo.sponsor;
;WITH CTE 
AS
(
	SELECT 
		MaiNQry.SponsorName
		,MainQry.SponsorLevel 
		,COALESCE(@maxSponsorID, 0) + ROW_NUMBER() OVER(ORDER BY MainQry.SponsorName) AS NewSponsorID 
	FROM 
		#tmp_Sponsors AS MainQry 
	WHERE 
		NOT EXISTS (SELECT 1 FROM dbo.sponsor S WHERE S.sponsorName = MainQry.SponsorName)
)
INSERT INTO dbo.sponsor (sponsorID, sponsorName, sponsorLevel)
SELECT 
	CTE.NewSponsorID
	,CTE.SponsorName 
	,CTE.SponsorLevel 
FROM 
	CTE 
		 
SELECT *FROM dbo.sponsor;
