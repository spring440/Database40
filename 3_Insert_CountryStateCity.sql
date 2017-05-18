IF EXISTS (SELECT * FROM tempdb.sys.objects WHERE name LIKE '%tmp_CountryStateCity%')
BEGIN
	DROP TABLE #tmp_CountryStateCity 
END;

CREATE TABLE #tmp_CountryStateCity (CityName VARCHAR(100), StateName VARCHAR(100), CountryName VARCHAR(100));
--bulk insert #tmp_CountryStateCity 
--FROM 'C:\\Users\Arin\Documents\COMP 440\Project\Final Project\CountryStateCity.csv'
--WITH
--(
--   FIELDTERMINATOR = ',',
--   ROWTERMINATOR = '\n'
--);
INSERT INTO #tmp_CountryStateCity
SELECT 'Lebanon','Oregon','USA' UNION ALL
SELECT 'Haney','British Columbia','Canada' UNION ALL
SELECT 'Hervey Bay','Queensland','Australia' UNION ALL
SELECT 'Cambridge','England','England' UNION ALL
SELECT 'Mill Valley','California','USA' UNION ALL
SELECT 'Corvallis','Oregon','USA' UNION ALL
SELECT 'Milsons Point','New South Wales','Australia' UNION ALL
SELECT 'Bellflower','California','USA' UNION ALL
SELECT 'Torrance','California','USA' UNION ALL
SELECT 'Coffs Harbour','New South Wales','Australia' UNION ALL
SELECT 'Puyallup','Washington','USA' UNION ALL
SELECT 'Peterborough','England','England' UNION ALL
SELECT 'Baltimore','Maryland','USA' UNION ALL
SELECT 'Berkeley','California','USA' UNION ALL
SELECT 'N. Vancouver','British Columbia','Canada' UNION ALL
SELECT 'Bremerton','Washington','USA' UNION ALL
SELECT 'Gateshead','England','England' UNION ALL
SELECT 'Metchosin','British Columbia','Canada' UNION ALL
SELECT 'Burien','Washington','USA' UNION ALL
SELECT 'London','England','England' UNION ALL
SELECT 'Santa Monica','California','USA' UNION ALL
SELECT 'Matraville','New South Wales','Australia' UNION ALL
SELECT 'Santa Cruz','California','USA' UNION ALL
SELECT 'Colma','California','USA' UNION ALL
SELECT 'Leeds','England','England' UNION ALL
SELECT 'Kirkland','Washington','USA' UNION ALL
SELECT 'Oregon City','Oregon','USA' UNION ALL
SELECT 'Chula Vista','California','USA' UNION ALL
SELECT 'Stoke-on-Trent','England','England' UNION ALL
SELECT 'West Covina','California','USA' UNION ALL
SELECT 'Springwood','New South Wales','Australia' UNION ALL
SELECT 'Portland','Oregon','USA' UNION ALL
SELECT 'Silverwater','New South Wales','Australia' UNION ALL
SELECT 'Cincinnati','Ohio','USA' UNION ALL
SELECT 'Townsville','Queensland','Australia' UNION ALL
SELECT 'North Sydney','New South Wales','Australia' UNION ALL
SELECT 'Walla Walla','Washington','USA' UNION ALL
SELECT 'Wollongong','New South Wales','Australia' UNION ALL
SELECT 'Port Macquarie','New South Wales','Australia' UNION ALL
SELECT 'Bellingham','Washington','USA' UNION ALL
SELECT 'Seattle','Washington','USA' UNION ALL
SELECT 'Los Angeles','California','USA' UNION ALL
SELECT 'Everett','Washington','USA' UNION ALL
SELECT 'Langley','British Columbia','Canada' UNION ALL
SELECT 'El Cajon','California','USA' UNION ALL
SELECT 'Burbank','California','USA' UNION ALL
SELECT 'Redmond','Washington','USA' UNION ALL
SELECT 'Yakima','Washington','USA' UNION ALL
SELECT 'Rhodes','New South Wales','Australia' UNION ALL
SELECT 'Woodland Hills','California','USA' UNION ALL
SELECT 'Sedro Woolley','Washington','USA' UNION ALL
SELECT 'Lake Oswego','Oregon','USA' UNION ALL
SELECT 'Marysville','Washington','USA' UNION ALL
SELECT 'Milton Keynes','England','England' UNION ALL
SELECT 'Calgary','Alberta','Canada' UNION ALL
SELECT 'Oxford','England','England' UNION ALL
SELECT 'Lynnwood','Washington','USA' UNION ALL
SELECT 'South Melbourne','Victoria','Australia' UNION ALL
SELECT 'Issaquah','Washington','USA' UNION ALL
SELECT 'Warrnambool','Victoria','Canada' UNION ALL
SELECT 'Burlingame','California','USA' UNION ALL
SELECT 'Olympia','Washington','USA' UNION ALL
SELECT 'Bury','England','England' UNION ALL
SELECT 'North Ryde','New South Wales','Australia' UNION ALL
SELECT 'San Diego','California','USA' UNION ALL
SELECT 'Port Orchard','Washington','USA' UNION ALL
SELECT 'Concord','California','USA' UNION ALL
SELECT 'Newton','British Columbia','Canada' UNION ALL
SELECT 'Newcastle','New South Wales','Australia' UNION ALL
SELECT 'Shawnee','British Columbia','Canada' UNION ALL
SELECT 'Oak Bay','British Columbia','Canada' UNION ALL
SELECT 'Oakland','California','USA' UNION ALL
SELECT 'Lane Cove','New South Wales','Australia' 

--SELECT * FROM #tmp_CountryStateCity;

--INSERT DISTINCT Countries to a temp table
DECLARE @countries TABLE (CountryName VARCHAR(100)) 
INSERT INTO @countries
SELECT DISTINCT CountryName
FROM #tmp_CountryStateCity;

--Using merge to add new countries to the table
MERGE dbo.country AS target 
USING (SELECT CountryName FROM @countries) as source (CountryName) 
ON source.countryName = target.countryName 
WHEN NOT MATCHED THEN 
	INSERT (countryName) 
	VALUES (source.CountryName); 

--INSERT distinct States to temp table
DECLARE @states TABLE (stateName VARCHAR(100)) 
INSERT INTO @states
SELECT DISTINCT stateName
FROM #tmp_CountryStateCity;

--Using merge to add new states to the table
MERGE dbo.stateTable AS target 
USING (SELECT StateName FROM @states) as source (StateName) 
ON source.stateName = target.stateName 
WHEN NOT MATCHED THEN 
	INSERT (StateName) 
	VALUES (source.StateName); 

--INSERT distinct Cities to the temp table
DECLARE @cities TABLE (cityName VARCHAR(100)) 
INSERT INTO @cities
SELECT DISTINCT CityName
FROM #tmp_CountryStateCity;

--Using merge to add new cities to the main table
MERGE dbo.city AS target 
USING (SELECT cityName FROM @cities) as source (cityName) 
ON source.cityName = target.cityName 
WHEN NOT MATCHED THEN 
	INSERT (cityName) 
	VALUES (source.cityName); 

SELECT * FROM dbo.country ORDER BY countryID;
SELECT * FROM dbo.stateTable ORDER BY stateID;
SELECT * FROM dbo.city ORDER BY cityID;

INSERT INTO dbo.cityStateCountry (countryID, stateID, cityID)
SELECT C.countryID, ST.stateID, CC.cityID
FROM 
	#tmp_CountryStateCity AS MainQry 
	INNER JOIN dbo.country AS C ON MainQry.CountryName = C.countryName
	INNER JOIN dbo.stateTable AS ST ON MainQry.StateName = ST.stateName
	INNER JOIN dbo.city AS CC ON MainQry.CityName = CC.cityName
WHERE 
	NOT EXISTS (SELECT 1 FROM dbo.cityStateCountry AS CSC WHERE C.countryID = CSC.countryID AND CSC.stateID = ST.stateID AND CSC.cityID = CC.cityID);

SELECT * FROM dbo.cityStateCountry ORDER BY cityStateCountryID;

DROP TABLE #tmp_CountryStateCity;