IF EXISTS (SELECT * FROM tempdb.sys.objects WHERE name LIKE '%tmp_Classes%')
BEGIN
	DROP TABLE #tmp_Classes 
END;

CREATE TABLE #tmp_Classes (classTitle VARCHAR(250), PresenterFistName VARCHAR(100), PresenterLastName VARCHAR(100), difficulty VARCHAR(50), CityName VARCHAR(20));
--bulk insert #tmp_Classes 
--FROM 'C:\Users\Arin\Documents\COMP 440\Project\Final Project\Classes.csv'
--WITH
--(
--   FIELDTERMINATOR = ',',
--   ROWTERMINATOR = '\n'
--);
INSERT INTO #tmp_Classes
SELECT 'A dive into Data Quality Services','Steve ','Simon','Intermediate','New York' UNION ALL
SELECT 'A Dynamic World Demands Dynamic SQL','Jeremiah ','Peschka','Intermediate','Kyiv' UNION ALL
SELECT 'A Dynamic World Demands Dynamic SQL','Jeremiah ','Peschka','Intermediate','Kyiv' UNION ALL
SELECT 'Absolute Introductory Session on SQL Server 2014 In-Memory Optimized Databases (Hekaton)','Kevin ','Goff','Beginner','Budapest' UNION ALL
SELECT 'AlwaysOn: Improve reliability and reporting performance with one cool tech','Chris ','Seferlis','Beginner','New York' UNION ALL
SELECT 'An introduction to Data Mining','Steve ','Simon','Intermediate','Kyiv' UNION ALL
SELECT 'An Introduction to Database Design','Mohammad ','Yusuf','Beginner','New York' UNION ALL
SELECT 'Autogenerating a process data warehouse','Kennie ','Pontoppidan','Advanced','New York' UNION ALL
SELECT 'Automate your daily checklist with PBM and CMS','John ','Sterrett','Intermediate','Budapest' UNION ALL
SELECT 'Automated Installing and Configuration of SQL2014/SQL2012 AlwaysOn Across Multiple Datacenters','Thomas ','Grohser','Intermediate','New York' UNION ALL
SELECT 'Automated Installing and Configuration of SQL2014/SQL2012 AlwaysOn Across Multiple Datacenters','Thomas ','Grohser','Intermediate','Kyiv' UNION ALL
SELECT 'Automating Execution Plan Analysis','Joe ','Chang','Advanced','Kyiv' UNION ALL
SELECT 'Automating Execution Plan Analysis','Joe ','Chang','Advanced','New York' UNION ALL
SELECT 'Automating SQL Server using PowerShell','Michael ','Wharton','Intermediate','New York' UNION ALL
SELECT 'Balanced Scorecards using SSRS','Sunil ','Kadimdiwan','Intermediate','Budapest' UNION ALL
SELECT 'Baselines and Performance Monitoring with PAL','Mike ','Walsh','Beginner','New York' UNION ALL
SELECT 'Basic Database Design','John ','Miner','Beginner','New York' UNION ALL
SELECT 'Basic Database Programming','John ','Miner','Beginner','Kyiv' UNION ALL
SELECT 'Become a BI Independent Consultant!','James ','Serra','Beginner','Budapest' UNION ALL
SELECT 'Becoming a Top DBA--Learning Automation in SQL Server','Joseph ','DAntoni','Beginner','Kyiv' UNION ALL
SELECT 'Best Practices Document','Paresh ','Motiwala','Intermediate','Kyiv' UNION ALL
SELECT 'Best Practices for Efficient SSRS Report Creation','Mickey ','Stuewe','Beginner','New York' UNION ALL
SELECT 'Biggest Loser: Database Edition','John ','Miner','Intermediate','New York' UNION ALL
SELECT 'Building a BI Solution in the Cloud','Stacia ','Misner','Intermediate','Budapest' UNION ALL
SELECT 'Building an Effective Data Warehouse Architecture','James ','Serra','Beginner','New York' UNION ALL
SELECT 'Building an Effective Data Warehouse Architecture with the cloud and MPP','James ','Serra','Beginner','New York' UNION ALL
SELECT 'Bulk load and minimal logged inserts','David ','Peter Hansen','Advanced','New York' UNION ALL
SELECT 'Business Analytics with SQL Server & Power Map:Everything you want to know but were afraid to ask','Steve ','Simon','Intermediate','New York' UNION ALL
SELECT 'Challenges to designing financial warehouses, lessons learnt','Steve ','Simon','Intermediate','New York' UNION ALL
SELECT 'Change Data Capture in SQL Server 2008/2012','Kevin ','Goff','Intermediate','New York' UNION ALL
SELECT 'Changing Your Habits to Improve the Performance of Your T-SQL','Mickey ','Stuewe','Beginner','Kyiv' UNION ALL
SELECT 'Clusters Your Way: #SANLess Clusters for Physical, Virtual, and Cloud Environments','Allan ','Hirt','Non-Technical','Kyiv' UNION ALL
SELECT 'Creating A Performance Health Repository - using MDW','Robert ','Pearl','Beginner','Kyiv' UNION ALL
SELECT 'Creating efficient and effective SSRS BI Solutions','Steve ','Simon','Intermediate','Kyiv' UNION ALL
SELECT 'Creating efficient and effective SSRS BI Solutions','Steve ','Simon','Intermediate','New York' UNION ALL
SELECT 'Data Partitioning','John ','Flannery','Intermediate','New York' UNION ALL
SELECT 'Data Tier Application Testing with NUnit and Distributed Replay','John ','Flannery','Intermediate','New York' UNION ALL
SELECT 'Database design for mere developers','Steve ','Simon','Intermediate','Budapest' UNION ALL
SELECT 'Database design for mere developers','Steve ','Simon','Intermediate','New York' UNION ALL
SELECT 'Database Design: Solving Problems Before they Start!','Edward ','Pollack','Beginner','New York' UNION ALL
SELECT 'Database Modeling and Design','Mohammad ','Yusuf','Intermediate','New York' UNION ALL
SELECT 'Database Virtualization and Drinking out of the Fire Hose','Michael ','Corey','Intermediate','New York' UNION ALL
SELECT 'DAX and the tabular model','Steve ','Simon','Intermediate','Kyiv' UNION ALL
SELECT 'DBA FOR DUMMIES','Robert ','Pearl','Beginner','Budapest' UNION ALL
SELECT 'Dealing With Difficult People','Gigi ','Bell','Beginner','Kyiv' UNION ALL
SELECT 'Development Lifecycle with SQL Server Data Tools and DACFx','John ','Flannery','Intermediate','Kyiv' UNION ALL
SELECT 'Did You Vote Today? A DBAs Guide to Cluster Quorum','Allan ','Hirt','Advanced','Kyiv' UNION ALL
SELECT 'Dimensional Modeling Design Patterns: Beyond Basics','Jason ','Horner','Intermediate','Kyiv' UNION ALL
SELECT 'Dimensional Modeling Design Patterns: Beyond Basics','Jason ','Horner','Intermediate','Budapest' UNION ALL
SELECT 'Diving Into Query Execution Plans','Edward ','Pollack','Intermediate','New York' UNION ALL
SELECT 'Dynamic SQL: Writing Efficient Queries on the Fly','Edward ','Pollack','Beginner','Kyiv' UNION ALL
SELECT 'Easy Architecture Design for HA and DR','Brent ','Ozar','Intermediate','New York' UNION ALL
SELECT 'Enhancing your career: Building your personal brand','James ','Serra','Beginner','New York' UNION ALL
SELECT 'Establishing a SLA','Thomas ','Grohser','Intermediate','New York' UNION ALL
SELECT 'ETL not ELT! Common mistakes and misconceptions about SSIS','Paul ','Rizza','Advanced','Budapest' UNION ALL
SELECT 'Execution Plans: What Can You Do With Them?','Grant ','Fritchey','Intermediate','New York' UNION ALL
SELECT 'Faster, Better Decisions with Self Service Business Analytics','Sayed ','Saeed','Intermediate','New York' UNION ALL
SELECT 'Full Text Indexing Basics','John ','Miner','Beginner','Budapest' UNION ALL
SELECT 'Get your Mining Model Predictions out to all','Steve ','Simon','Intermediate','New York' UNION ALL
SELECT 'Getting a job with Microsoft','Paul ','Rizza','Non-Technical','New York' UNION ALL
SELECT 'Graph Databases for SQL Server Professionals','Stéphane ','Fréchette','Intermediate','New York' UNION ALL
SELECT 'Hacking Exposé - Using SSL to Protect SQL Connections','Chris ','Bell','Intermediate','New York' UNION ALL
SELECT 'Hacking the SSIS 2012 Catalog','Andy ','Leonard','Beginner','Budapest' UNION ALL
SELECT 'Hidden in plain sight: master your tools','Varsham ','Papikian','Intermediate','New York' UNION ALL
SELECT 'Highly Available SQL Server in Windows Azure IaaS','David ','Bermingham','Intermediate','New York' UNION ALL
SELECT 'How to Make a LOT More Money as a Consultant','James ','Serra','Beginner','New York' UNION ALL
SELECT 'How to Think Like the Engine','Brent ','Ozar','Intermediate','New York' UNION ALL
SELECT 'Hybrid Cloud Scenarios with SQL Server 2014','George ','Walters','Intermediate','Budapest' UNION ALL
SELECT 'Hybrid Solutions: The Future of SQL Server Disaster Recovery','Allan ','Hirt','Intermediate','Budapest' UNION ALL
SELECT 'Implementing Data Warehouse Patterns with the Microsoft BI Tools','Kevin ','Goff','Intermediate','Budapest' UNION ALL
SELECT 'Inroduction to Triggers','Jack ','Corbett','Beginner','Budapest' UNION ALL
SELECT 'Integrating Reporting Services with SharePoint','Kevin ','Goff','Intermediate','New York' UNION ALL
SELECT 'Integration Services (SSIS) for the DBA','David','Peter Hansen','Intermediate','New York' UNION ALL
SELECT 'Introducing Power BI','Stacia ','Misner','Beginner','New York' UNION ALL
SELECT 'Introduction to Database Recovery','John ','Flannery','Beginner','New York' UNION ALL
SELECT 'Introduction to High Availability with SQL Server','John ','Sterrett','Beginner','New York' UNION ALL
SELECT 'Introduction to Powershell for DBAs','John ','Sterrett','Beginner','New York' UNION ALL
SELECT 'Introduction to SQL Server - Part 1','Brandon ','Leach','Beginner','New York' UNION ALL
SELECT 'Introduction to SQL Server - Part 2','Brandon ','Leach','Beginner','New York' UNION ALL
SELECT 'Is That A Failover Cluster On Your Laptop/Desktop?','Allan ','Hirt','Intermediate','New York' UNION ALL
SELECT 'Leaving the Windows Open','Jeremiah ','Peschka','Intermediate','New York' UNION ALL
SELECT 'Master Data Services Best Practices','Steve ','Simon','Intermediate','New York' UNION ALL
SELECT 'Master Data Services Disaster Recovery','Steve ','Simon','Intermediate','New York' UNION ALL
SELECT 'Mind your language!! Cursors are a dirty word','Steve ','Simon','Intermediate','New York' UNION ALL
SELECT 'Modern Data Warehousing','James ','Serra','Beginner','New York' UNION ALL
SELECT 'Monitoring Server health via Reporting Services dashboards','Steve ','Simon','Intermediate','New York' UNION ALL
SELECT 'Monitoring SQL Server using Extended Events','Hilary ','Cotter','Beginner','New York' UNION ALL
SELECT 'Multidimensional vs Tabular - May the Best Model Win','Stacia ','Misner','Intermediate','New York' UNION ALL
SELECT 'Murder They Wrote','Jason ','Brimhall','Intermediate','New York' UNION ALL
SELECT 'Never Have to Say "Mayday!!!" Again','Mike ','Walsh','Beginner','New York' UNION ALL
SELECT 'Now you see it! Now you don’t! Conjuring many reports utilizing only one SSRS report.','Steve ','Simon','Intermediate','New York' UNION ALL
SELECT 'Optimal Infrastructure Strategies for Cisco UCS, Nexus and SQL Server','Kevin ','Schenega','Non-Technical','Budapest' UNION ALL
SELECT 'Optimizing Protected Indexes','Chris ','Bell','Intermediate','Budapest' UNION ALL
SELECT 'Partitioning as a design pattern','Kennie ','Pontoppidan','Advanced','Budapest' UNION ALL
SELECT 'Power BI Components in Microsofts Self-Service BI Suite','Todd ','Chittenden','Beginner','New York' UNION ALL
SELECT 'Power to the people!!','Steve ','Simon','Intermediate','Kyiv' UNION ALL
SELECT 'PowerShell Basics for SQLServer','Michael ','Wharton','Beginner','Kyiv' UNION ALL
SELECT 'PowerShell for the Reluctant DBA / Developer','Jason ','Horner','Beginner','Kyiv' UNION ALL
SELECT 'Prevent Recovery Amnesia – Forget the Backups','Chris ','Bell','Beginner','Kyiv' UNION ALL
SELECT 'Query Optimization Crash Course','Edward ','Pollack','Beginner','Kyiv' UNION ALL
SELECT 'Rapid Application Development with Master Data Services','Steve ','Simon','Intermediate','Kyiv' UNION ALL
SELECT 'Recovery and Backup for Beginners','Mike ','Hillwig','Beginner','Kyiv' UNION ALL
SELECT 'Reduce, Reuse, Recycle: Automating Your BI Framework','Stacia ','Misner','Intermediate','Kyiv' UNION ALL
SELECT 'Replicaton Technologies','Hilary ','Cotter','Advanced','Kyiv' UNION ALL
SELECT 'Reporting Services for Mere DBAs','Jason ','Brimhall','Intermediate','Kyiv' UNION ALL
SELECT 'Scaling with SQL Server Service Broker','Hilary ','Cotter','Advanced','Kyiv' UNION ALL
SELECT 'Scaling with SQL Server Service Broker','Hilary ','Cotter','Advanced','Kyiv' UNION ALL
SELECT 'Self-Service Data Integration with Power Query','Stéphane ','Fréchette','Beginner','Kyiv' UNION ALL
SELECT 'Shortcuts to Building SSIS in .Net','Paul ','Rizza','Beginner','Kyiv' UNION ALL
SELECT 'So You Want To Be A Consultant?','Allan ','Hirt','Beginner','Kyiv' UNION ALL
SELECT 'SQL anti patterns','Kennie ','Pontoppidan','Advanced','Kyiv' UNION ALL
SELECT 'SQL Server 2012/2014 Columnstore index','Kevin ','Goff','Intermediate','Kyiv' UNION ALL
SELECT 'SQL Server 2012/2014 Performance Tuning All Up','George ','Walters','Intermediate','Kyiv' UNION ALL
SELECT 'SQL Server 2014 Data Access Layers','Steve ','Simon','Intermediate','Kyiv' UNION ALL
SELECT 'SQL Server 2014 New Features','George ','Walters','Intermediate','Kyiv' UNION ALL
SELECT 'SQL Server AlwaysOn Availability Groups','George ','Walters','Beginner','Kyiv' UNION ALL
SELECT 'SQL Server and the Cloud','David','Peter Hansen','Beginner','Kyiv' UNION ALL
SELECT 'SQL Server Compression and what it can do for you','Jason ','Brimhall','Advanced','Kyiv' UNION ALL
SELECT 'SQL Server Reporting Services 2014 on Steroids!!','Steve ','Simon','Intermediate','Kyiv' UNION ALL
SELECT 'SQL Server Reporting Services Best Practices','Steve ','Simon','Intermediate','Kyiv' UNION ALL
SELECT 'SQL Server Reporting Services, attendees choose','Kevin ','Goff','Intermediate','Kyiv' UNION ALL
SELECT 'SQL Server Storage Engine under the hood','Thomas ','Grohser','Intermediate','Kyiv' UNION ALL
SELECT 'SQL Server Storage internals: Looking under the hood.','Brandon ','Leach','Advanced','Kyiv' UNION ALL
SELECT 'SSIS 2014 Data Flow Tuning Tips and Tricks','Andy ','Leonard','Beginner','Kyiv' UNION ALL
SELECT 'Standalone to High-Availability Clusters over Lunch—with Time to Spare','Carl ','Berglund','Intermediate','Budapest' UNION ALL
SELECT 'Stress testing SQL Server','Hilary ','Cotter','Advanced','Kyiv' UNION ALL
SELECT 'Table partitioning for Azure SQL Databases','John ','Miner','Beginner','Kyiv' UNION ALL
SELECT 'Testing','Melissa ','Riley','Beginner','Kyiv' UNION ALL
SELECT 'The future of the data professional','Adam ','Jorgensen','Beginner','Kyiv' UNION ALL
SELECT 'The Quest for the Golden Record:MDM Best Practices','Dennis ','Messina','Beginner','Budapest' UNION ALL
SELECT 'The Quest to Find Bad Data With Data Profiling','Richie ','Rump','Intermediate','Budapest' UNION ALL
SELECT 'The Spy Who Loathed Me - An Intro to SQL Security','Chris ','Bell','Beginner','Budapest' UNION ALL
SELECT 'Tired of the CRUD? Automate it!','Jack ','Corbett','Intermediate','Budapest' UNION ALL
SELECT 'Top 5 Ways to Improve Your triggers','Aaron ','Bertrand','Intermediate','Budapest' UNION ALL
SELECT 'Tricks that have saved my bacon','Greg ','Moore','Beginner','Budapest' UNION ALL
SELECT 'T-SQL : Bad Habits & Best Practices','Aaron ','Bertrand','Beginner','Budapest' UNION ALL
SELECT 'T-SQL for Application Developers - Attendees chose','Kevin ','Goff','Intermediate','Budapest' UNION ALL
SELECT 'Tune Queries By Fixing Bad Parameter Sniffing','Grant ','Fritchey','Intermediate','Budapest' UNION ALL
SELECT 'Using Extended Events in SQL Server','Jason ','Brimhall','Advanced','Budapest' UNION ALL
SELECT 'Watch Brent Tune Queries','Brent ','Ozar','Intermediate','Budapest' UNION ALL
SELECT 'What every SQL Server DBA needs to know about Windows Server 10 Technical Preview','David ','Bermingham','Intermediate','Budapest' UNION ALL
SELECT 'What exactly is big data and why should I care?','James ','Serra','Beginner','Budapest' UNION ALL
SELECT 'What is it like to work for Microsoft?','James ','Serra','Beginner','Budapest' UNION ALL
SELECT 'What’s new in SQL Server Integration Services 2012','Kevin ','Goff','Intermediate','Budapest' UNION ALL
SELECT 'Why do we shun using tools for DBA job?','Paresh ','Motiwala','Intermediate','Budapest' UNION ALL
SELECT 'Why OLAP? Building SSAS cubes and benefits of OLAP','Kevin ','Goff','Intermediate','Budapest' UNION ALL
SELECT 'Youre Doing It Wrong!!','Mike ','Walsh','Intermediate','Budapest' 


DECLARE @LastClassID INT = 0;
SELECT @LastClassID = COALESCE(MAX(classID), 0) FROM dbo.class;

merge dbo.class AS target
USING (
		SELECT @LastClassID + ROW_NUMBER() OVER(ORDER BY MainQry.ClassTitle, MainQry.Difficulty) AS NewClassID 
			,MainQry.ClassTitle
			,MainQry.Difficulty 
		FROM 
			#tmp_Classes AS MainQry
	) As source 
ON target.classTitle = source.ClassTitle AND target.difficulty = source.Difficulty
WHEN NOT MATCHED THEN 
	INSERT (classID, className, classTitle, difficulty)
	VALUES (source.NewClassID, source.ClassTitle, source.ClassTitle, source.Difficulty);

SELECT * FROM dbo.class;

/*
	Populating the reference table for Rooms and Classes
*/
DECLARE @maxRoomClassID INT = 0;
SELECT @maxRoomClassID = MAX(RoomClassID) FROM dbo.roomClass;

--Populating RoomClass table based on Cities in Presentations table and one-on-one relationship as of now based on one venue, one city
INSERT INTO dbo.roomClass (roomClassID, roomID, classID)
SELECT COALESCE(@maxRoomClassID, 0) + ROW_NUMBER() OVER(ORDER BY r.RoomID, CL.ClassID) AS NewRoomClassID, r.roomID, CL.classID 
FROM 
	#tmp_Classes AS MainQry 
	INNER JOIN dbo.city C ON MainQry.CityName = C.cityName 
	INNER JOIN dbo.cityStateCountry AS CSC ON CSC.cityID = C.cityID 
	INNER JOIN dbo.venue AS V On V.venueCityID = CSC.cityStateCountryID
	INNER JOIN dbo.room AS R ON R.venueID = V.venueID
	INNER JOIN dbo.class AS CL ON MainQry.classTitle = CL.classTitle
WHERE 
	1 = 1
	AND NOT EXISTS (SELECT 1 FROM dbo.roomClass RC WHERE RC.roomID = r.roomID AND RC.classID = CL.classID);

SELECT * FROM dbo.roomClass;

--Populating Class Person Role Table for All Students 
INSERT INTO dbo.classPersonRole (personID, roomClassID, roleID)
SELECT P.personID, RC.roomClassID, 1 
FROM 
	dbo.person P 
	INNER JOIN dbo.roomClass RC ON 1 = 1 
WHERE 
	NOT EXISTS (SELECT 1 FROM dbo.classPersonRole CPR WHERE CPR.personID = P.personID AND CPR.roomClassID = RC.roomClassID AND CPR.roleID = 1)
	AND P.personID < 101;
	

--Populating Class Person Role Table for All Presenters
INSERT INTO dbo.classPersonRole (personID, roomClassID, roleID)
SELECT P.personID, RC.roomClassID, 3 
FROM 
	#tmp_Classes AS MainQry 
	INNER JOIN dbo.person P ON MainQry.PresenterFistName = P.personFirstName AND MainQry.PresenterLastName = P.personLastName 
	INNER JOIN dbo.class CL ON MainQry.classTitle = CL.classTitle 
	INNER JOIN dbo.city C ON MainQry.CityName = C.cityName 
	INNER JOIN dbo.cityStateCountry AS CSC ON CSC.cityID = C.cityID 
	INNER JOIN dbo.venue AS V On V.venueCityID = CSC.cityStateCountryID
	INNER JOIN dbo.room AS R ON R.venueID = V.venueID
	INNER JOIN dbo.roomClass RC ON R.roomID = RC.roomID AND CL.classID = RC.classID
WHERE 
	1 = 1 
	AND NOT EXISTS (SELECT 1 FROM dbo.classPersonRole CPR WHERE CPR.personID = P.personID AND CPR.roomClassID = RC.roomClassID AND CPR.roleID = 3)
	AND P.personID >= 101
ORDER BY P.personID;
	

--Populate ClassLecture with Sample data
INSERT INTO dbo.classLecture (classID, lectureID) 
SELECT 
	C.classID
	,L.lectureID
FROM 
	dbo.class C 
	INNER JOIN dbo.lecture L ON C.classTitle = L.lectureTitle
WHERE 
	NOT EXISTS (SELECT 1 FROM dbo.classLecture CL WHERE CL.classID = C.classID AND CL.lectureID = L.lectureID);


DROP TABLE #tmp_Classes;
