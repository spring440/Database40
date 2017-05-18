IF EXISTS (SELECT * FROM tempdb.sys.objects WHERE name LIKE '%tmp_Lectures%')
BEGIN
	DROP TABLE #tmp_Lectures 
END;

CREATE TABLE #tmp_Lectures (LectureTitle VARCHAR(250));
--bulk insert #tmp_Lectures 
--FROM 'C:\Users\Arin\Documents\COMP 440\Project\Final Project\Classes.csv'
--WITH
--(
--   FIELDTERMINATOR = ',',
--   ROWTERMINATOR = '\n'
--);
INSERT INTO #tmp_Lectures
SELECT 'A dive into Data Quality Services' UNION ALL
SELECT 'A Dynamic World Demands Dynamic SQL' UNION ALL
SELECT 'Absolute Introductory Session on SQL Server 2014 In-Memory Optimized Databases (Hekaton)' UNION ALL
SELECT 'AlwaysOn: Improve reliability and reporting performance with one cool tech' UNION ALL
SELECT 'An introduction to Data Mining' UNION ALL
SELECT 'An Introduction to Database Design' UNION ALL
SELECT 'Autogenerating a process data warehouse' UNION ALL
SELECT 'Automate your daily checklist with PBM and CMS' UNION ALL
SELECT 'Automated Installing and Configuration of SQL2014/SQL2012 AlwaysOn Across Multiple Datacenters' UNION ALL
SELECT 'Automating Execution Plan Analysis' UNION ALL
SELECT 'Automating SQL Server using PowerShell' UNION ALL
SELECT 'Balanced Scorecards using SSRS' UNION ALL
SELECT 'Baselines and Performance Monitoring with PAL' UNION ALL
SELECT 'Basic Database Design' UNION ALL
SELECT 'Basic Database Programming' UNION ALL
SELECT 'Become a BI Independent Consultant!' UNION ALL
SELECT 'Becoming a Top DBA--Learning Automation in SQL Server' UNION ALL
SELECT 'Best Practices Document' UNION ALL
SELECT 'Best Practices for Efficient SSRS Report Creation' UNION ALL
SELECT 'Biggest Loser: Database Edition' UNION ALL
SELECT 'Building a BI Solution in the Cloud' UNION ALL
SELECT 'Building an Effective Data Warehouse Architecture' UNION ALL
SELECT 'Building an Effective Data Warehouse Architecture with the cloud and MPP' UNION ALL
SELECT 'Bulk load and minimal logged inserts' UNION ALL
SELECT 'Business Analytics with SQL Server & Power Map:Everything you want to know but were afraid to ask' UNION ALL
SELECT 'Challenges to designing financial warehouses - lessons learnt' UNION ALL
SELECT 'Change Data Capture in SQL Server 2008/2012' UNION ALL
SELECT 'Changing Your Habits to Improve the Performance of Your T-SQL' UNION ALL
SELECT 'Clusters Your Way: #SANLess Clusters for Physical - Virtual - and Cloud Environments' UNION ALL
SELECT 'Creating A Performance Health Repository - using MDW' UNION ALL
SELECT 'Creating efficient and effective SSRS BI Solutions' UNION ALL
SELECT 'Data Partitioning' UNION ALL
SELECT 'Data Tier Application Testing with NUnit and Distributed Replay' UNION ALL
SELECT 'Database design for mere developers' UNION ALL
SELECT 'Database Design: Solving Problems Before they Start!' UNION ALL
SELECT 'Database Modeling and Design' UNION ALL
SELECT 'Database Virtualization and Drinking out of the Fire Hose' UNION ALL
SELECT 'DAX and the tabular model' UNION ALL
SELECT 'DBA FOR DUMMIES' UNION ALL
SELECT 'Dealing With Difficult People' UNION ALL
SELECT 'Development Lifecycle with SQL Server Data Tools and DACFx' UNION ALL
SELECT 'Did You Vote Today? A DBAs Guide to Cluster Quorum' UNION ALL
SELECT 'Dimensional Modeling Design Patterns: Beyond Basics' UNION ALL
SELECT 'Diving Into Query Execution Plans' UNION ALL
SELECT 'Dynamic SQL: Writing Efficient Queries on the Fly' UNION ALL
SELECT 'Easy Architecture Design for HA and DR' UNION ALL
SELECT 'Enhancing your career: Building your personal brand' UNION ALL
SELECT 'Establishing a SLA' UNION ALL
SELECT 'ETL not ELT! Common mistakes and misconceptions about SSIS' UNION ALL
SELECT 'Execution Plans: What Can You Do With Them?' UNION ALL
SELECT 'Faster- Better Decisions with Self Service Business Analytics' UNION ALL
SELECT 'Full Text Indexing Basics' UNION ALL
SELECT 'Get your Mining Model Predictions out to all' UNION ALL
SELECT 'Getting a job with Microsoft' UNION ALL
SELECT 'Graph Databases for SQL Server Professionals' UNION ALL
SELECT 'Hacking Exposé - Using SSL to Protect SQL Connections' UNION ALL
SELECT 'Hacking the SSIS 2012 Catalog' UNION ALL
SELECT 'Hidden in plain sight: master your tools' UNION ALL
SELECT 'Highly Available SQL Server in Windows Azure IaaS' UNION ALL
SELECT 'How to Make a LOT More Money as a Consultant' UNION ALL
SELECT 'How to Think Like the Engine' UNION ALL
SELECT 'Hybrid Cloud Scenarios with SQL Server 2014' UNION ALL
SELECT 'Hybrid Solutions: The Future of SQL Server Disaster Recovery' UNION ALL
SELECT 'Implementing Data Warehouse Patterns with the Microsoft BI Tools' UNION ALL
SELECT 'Inroduction to Triggers' UNION ALL
SELECT 'Integrating Reporting Services with SharePoint' UNION ALL
SELECT 'Integration Services (SSIS) for the DBA' UNION ALL
SELECT 'Introducing Power BI' UNION ALL
SELECT 'Introduction to Database Recovery' UNION ALL
SELECT 'Introduction to High Availability with SQL Server' UNION ALL
SELECT 'Introduction to Powershell for DBAs' UNION ALL
SELECT 'Introduction to SQL Server - Part 1' UNION ALL
SELECT 'Introduction to SQL Server - Part 2' UNION ALL
SELECT 'Is That A Failover Cluster On Your Laptop/Desktop?' UNION ALL
SELECT 'Leaving the Windows Open' UNION ALL
SELECT 'Master Data Services Best Practices' UNION ALL
SELECT 'Master Data Services Disaster Recovery' UNION ALL
SELECT 'Mind your language!! Cursors are a dirty word' UNION ALL
SELECT 'Modern Data Warehousing' UNION ALL
SELECT 'Monitoring Server health via Reporting Services dashboards' UNION ALL
SELECT 'Monitoring SQL Server using Extended Events' UNION ALL
SELECT 'Multidimensional vs Tabular - May the Best Model Win' UNION ALL
SELECT 'Murder They Wrote' UNION ALL
SELECT 'Never Have to Say "Mayday!!!" Again' UNION ALL
SELECT 'Now you see it! Now you don’t! Conjuring many reports utilizing only one SSRS report.' UNION ALL
SELECT 'Optimal Infrastructure Strategies for Cisco UCS- Nexus and SQL Server' UNION ALL
SELECT 'Optimizing Protected Indexes' UNION ALL
SELECT 'Partitioning as a design pattern' UNION ALL
SELECT 'Power BI Components in Microsofts Self-Service BI Suite' UNION ALL
SELECT 'Power to the people!!' UNION ALL
SELECT 'PowerShell Basics for SQLServer' UNION ALL
SELECT 'PowerShell for the Reluctant DBA / Developer' UNION ALL
SELECT 'Prevent Recovery Amnesia – Forget the Backups' UNION ALL
SELECT 'Query Optimization Crash Course' UNION ALL
SELECT 'Rapid Application Development with Master Data Services' UNION ALL
SELECT 'Recovery and Backup for Beginners' UNION ALL
SELECT 'Reduce- Reuse- Recycle: Automating Your BI Framework' UNION ALL
SELECT 'Replicaton Technologies' UNION ALL
SELECT 'Reporting Services for Mere DBAs' UNION ALL
SELECT 'Scaling with SQL Server Service Broker' UNION ALL
SELECT 'Self-Service Data Integration with Power Query' UNION ALL
SELECT 'Shortcuts to Building SSIS in .Net' UNION ALL
SELECT 'So You Want To Be A Consultant?' UNION ALL
SELECT 'SQL anti patterns' UNION ALL
SELECT 'SQL Server 2012/2014 Columnstore index' UNION ALL
SELECT 'SQL Server 2012/2014 Performance Tuning All Up' UNION ALL
SELECT 'SQL Server 2014 Data Access Layers' UNION ALL
SELECT 'SQL Server 2014 New Features' UNION ALL
SELECT 'SQL Server AlwaysOn Availability Groups' UNION ALL
SELECT 'SQL Server and the Cloud' UNION ALL
SELECT 'SQL Server Compression and what it can do for you' UNION ALL
SELECT 'SQL Server Reporting Services 2014 on Steroids!!' UNION ALL
SELECT 'SQL Server Reporting Services Best Practices' UNION ALL
SELECT 'SQL Server Reporting Services - attendees choose' UNION ALL
SELECT 'SQL Server Storage Engine under the hood' UNION ALL
SELECT 'SQL Server Storage internals: Looking under the hood.' UNION ALL
SELECT 'SSIS 2014 Data Flow Tuning Tips and Tricks' UNION ALL
SELECT 'Standalone to High-Availability Clusters over Lunch—with Time to Spare' UNION ALL
SELECT 'Stress testing SQL Server' UNION ALL
SELECT 'Table partitioning for Azure SQL Databases' UNION ALL
SELECT 'Testing' UNION ALL
SELECT 'The future of the data professional' UNION ALL
SELECT 'The Quest for the Golden Record:MDM Best Practices' UNION ALL
SELECT 'The Quest to Find Bad Data With Data Profiling' UNION ALL
SELECT 'The Spy Who Loathed Me - An Intro to SQL Security' UNION ALL
SELECT 'Tired of the CRUD? Automate it!' UNION ALL
SELECT 'Top 5 Ways to Improve Your triggers' UNION ALL
SELECT 'Tricks that have saved my bacon' UNION ALL
SELECT 'T-SQL : Bad Habits & Best Practices' UNION ALL
SELECT 'T-SQL for Application Developers - Attendees chose' UNION ALL
SELECT 'Tune Queries By Fixing Bad Parameter Sniffing' UNION ALL
SELECT 'Using Extended Events in SQL Server' UNION ALL
SELECT 'Watch Brent Tune Queries' UNION ALL
SELECT 'What every SQL Server DBA needs to know about Windows Server 10 Technical Preview' UNION ALL
SELECT 'What exactly is big data and why should I care?' UNION ALL
SELECT 'What is it like to work for Microsoft?' UNION ALL
SELECT 'What’s new in SQL Server Integration Services 2012' UNION ALL
SELECT 'Why do we shun using tools for DBA job?' UNION ALL
SELECT 'Why OLAP? Building SSAS cubes and benefits of OLAP' UNION ALL
SELECT 'Youre Doing It Wrong!!' 

DECLARE @LastLectureID INT = 0;
SELECT @LastLectureID = COALESCE(MAX(lectureID), 0) FROM dbo.lecture;

merge dbo.lecture AS target
USING (
		SELECT @LastLectureID + ROW_NUMBER() OVER(ORDER BY MainQry.LectureTitle) AS NewLectureID 
			,MainQry.LectureTitle
		FROM 
			#tmp_Lectures AS MainQry
	) As source 
ON target.lectureTitle = source.LectureTitle
WHEN NOT MATCHED THEN 
	INSERT (lectureID, lectureTitle)
	VALUES (source.NewLectureID, source.LectureTitle);

SELECT * FROM dbo.lecture;

DECLARE @Tracks TABLE (TrackID INT, Subject VARCHAR(20))
INSERT INTO @Tracks
SELECT 1, 't-SQL' UNION ALL 
SELECT 2, 'SSIS' UNION ALL 
SELECT 3, 'SSRS' UNION ALL 
SELECT 4, 'Hadoop' UNION ALL 
SELECT 5, 'Business'

merge dbo.track AS target
USING (
		SELECT TrackID, Subject
		FROM 
			@Tracks AS MainQry
	) As source 
ON target.Subject = source.Subject
WHEN NOT MATCHED THEN 
	INSERT (TrackID, Subject)
	VALUES (source.TrackID, source.Subject);

SELECT * FROM dbo.track;

--Populate Sample data in LectureTrack data
INSERT INTO dbo.lectureTrack (lectureID, trackID) 
SELECT L.lectureID, T.trackID 
FROM 
	dbo.lecture L 
	INNER JOIN dbo.track T ON 1 = 1 
WHERE 
	T.trackID = 1 
	AND NOT EXISTS (SELECT 1 FROM dbo.lectureTrack LT WHERE LT.lectureID = L.lectureID AND LT.trackID = T.trackID);

	--Populate Sample data in LectureTrack data
INSERT INTO dbo.lectureTrack (lectureID, trackID) 
SELECT L.lectureID, T.trackID 
FROM 
	dbo.lecture L 
	INNER JOIN dbo.track T ON 1 = 1 
WHERE 
	T.trackID = 3 
	AND NOT EXISTS (SELECT 1 FROM dbo.lectureTrack LT WHERE LT.lectureID = L.lectureID AND LT.trackID = T.trackID);

DROP TABLE #tmp_Lectures;