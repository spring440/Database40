/****** Arin Zargarian - Database number 40- COMP 440 - SQL Saturday Project ******/
USE [s17guest40]
GO
ALTER TABLE [dbo].[venue] DROP CONSTRAINT [FK_venue_cityStateCountry]
GO
ALTER TABLE [dbo].[roomClass] DROP CONSTRAINT [FK_roomClass_room]
GO
ALTER TABLE [dbo].[roomClass] DROP CONSTRAINT [FK_roomClass_class]
GO
ALTER TABLE [dbo].[room] DROP CONSTRAINT [FK_room_venue]
GO
ALTER TABLE [dbo].[person] DROP CONSTRAINT [FK_person_cityStateCountry]
GO
ALTER TABLE [dbo].[lectureTrack] DROP CONSTRAINT [FK_lectureTrack_track]
GO
ALTER TABLE [dbo].[lectureTrack] DROP CONSTRAINT [FK_lectureTrack_lecture]
GO
ALTER TABLE [dbo].[eventVenueSponsor] DROP CONSTRAINT [FK_eventVenueSponsor_sponsor]
GO
ALTER TABLE [dbo].[eventVenueSponsor] DROP CONSTRAINT [FK_eventVenueSponsor_eventVenue]
GO
ALTER TABLE [dbo].[eventVenuePerson] DROP CONSTRAINT [FK_eventVenuePerson_person]
GO
ALTER TABLE [dbo].[eventVenuePerson] DROP CONSTRAINT [FK_eventVenuePerson_eventVenue]
GO
ALTER TABLE [dbo].[eventVenue] DROP CONSTRAINT [FK_eventVenue_venue]
GO
ALTER TABLE [dbo].[eventVenue] DROP CONSTRAINT [FK_eventVenue_event]
GO
ALTER TABLE [dbo].[classPersonRole] DROP CONSTRAINT [FK_classPersonRole_roomClass]
GO
ALTER TABLE [dbo].[classPersonRole] DROP CONSTRAINT [FK_classPersonRole_role]
GO
ALTER TABLE [dbo].[classPersonRole] DROP CONSTRAINT [FK_classPersonRole_person]
GO
ALTER TABLE [dbo].[classLecture] DROP CONSTRAINT [FK_classLecture_lecture]
GO
ALTER TABLE [dbo].[classLecture] DROP CONSTRAINT [FK_classLecture_class]
GO
ALTER TABLE [dbo].[classEventVenue] DROP CONSTRAINT [FK_classEventVenue_eventVenue]
GO
ALTER TABLE [dbo].[classEventVenue] DROP CONSTRAINT [FK_classEventVenue_class]
GO
ALTER TABLE [dbo].[cityStateCountry] DROP CONSTRAINT [FK_cityStateCountry_stateTable]
GO
ALTER TABLE [dbo].[cityStateCountry] DROP CONSTRAINT [FK_cityStateCountry_Country]
GO
ALTER TABLE [dbo].[cityStateCountry] DROP CONSTRAINT [FK_cityStateCountry_City]
GO
/****** Object:  Index [IX_eventVenueSponsor]    Script Date: 5/13/2017 3:24:33 PM ******/
DROP INDEX [IX_eventVenueSponsor] ON [dbo].[eventVenueSponsor]
GO
/****** Object:  Index [IX_eventVenuePerson]    Script Date: 5/13/2017 3:24:33 PM ******/
DROP INDEX [IX_eventVenuePerson] ON [dbo].[eventVenuePerson]
GO
/****** Object:  Index [IX_classLecture]    Script Date: 5/13/2017 3:24:33 PM ******/
DROP INDEX [IX_classLecture] ON [dbo].[classLecture]
GO
/****** Object:  Index [IX_classEventVenue]    Script Date: 5/13/2017 3:24:33 PM ******/
DROP INDEX [IX_classEventVenue] ON [dbo].[classEventVenue]
GO
/****** Object:  Index [IX_person_Unique]    Script Date: 5/13/2017 3:24:33 PM ******/
DROP INDEX [IX_person_Unique] ON [dbo].[person]
GO
/****** Object:  Index [IX_cityStateCountry_Unique]    Script Date: 5/13/2017 3:24:33 PM ******/
DROP INDEX [IX_cityStateCountry_Unique] ON [dbo].[cityStateCountry]
GO
/****** Object:  Table [dbo].[venue]    Script Date: 5/13/2017 3:24:33 PM ******/
DROP TABLE [dbo].[venue]
GO
/****** Object:  Table [dbo].[track]    Script Date: 5/13/2017 3:24:33 PM ******/
DROP TABLE [dbo].[track]
GO
/****** Object:  Table [dbo].[stateTable]    Script Date: 5/13/2017 3:24:33 PM ******/
DROP TABLE [dbo].[stateTable]
GO
/****** Object:  Table [dbo].[sponsor]    Script Date: 5/13/2017 3:24:33 PM ******/
DROP TABLE [dbo].[sponsor]
GO
/****** Object:  Table [dbo].[roomClass]    Script Date: 5/13/2017 3:24:33 PM ******/
DROP TABLE [dbo].[roomClass]
GO
/****** Object:  Table [dbo].[room]    Script Date: 5/13/2017 3:24:33 PM ******/
DROP TABLE [dbo].[room]
GO
/****** Object:  Table [dbo].[role]    Script Date: 5/13/2017 3:24:33 PM ******/
DROP TABLE [dbo].[role]
GO
/****** Object:  Table [dbo].[person]    Script Date: 5/13/2017 3:24:33 PM ******/
DROP TABLE [dbo].[person]
GO
/****** Object:  Table [dbo].[lectureTrack]    Script Date: 5/13/2017 3:24:33 PM ******/
DROP TABLE [dbo].[lectureTrack]
GO
/****** Object:  Table [dbo].[lecture]    Script Date: 5/13/2017 3:24:33 PM ******/
DROP TABLE [dbo].[lecture]
GO
/****** Object:  Table [dbo].[eventVenueSponsor]    Script Date: 5/13/2017 3:24:33 PM ******/
DROP TABLE [dbo].[eventVenueSponsor]
GO
/****** Object:  Table [dbo].[eventVenuePerson]    Script Date: 5/13/2017 3:24:33 PM ******/
DROP TABLE [dbo].[eventVenuePerson]
GO
/****** Object:  Table [dbo].[eventVenue]    Script Date: 5/13/2017 3:24:33 PM ******/
DROP TABLE [dbo].[eventVenue]
GO
/****** Object:  Table [dbo].[event]    Script Date: 5/13/2017 3:24:33 PM ******/
DROP TABLE [dbo].[event]
GO
/****** Object:  Table [dbo].[country]    Script Date: 5/13/2017 3:24:33 PM ******/
DROP TABLE [dbo].[country]
GO
/****** Object:  Table [dbo].[classPersonRole]    Script Date: 5/13/2017 3:24:33 PM ******/
DROP TABLE [dbo].[classPersonRole]
GO
/****** Object:  Table [dbo].[classLecture]    Script Date: 5/13/2017 3:24:33 PM ******/
DROP TABLE [dbo].[classLecture]
GO
/****** Object:  Table [dbo].[classEventVenue]    Script Date: 5/13/2017 3:24:33 PM ******/
DROP TABLE [dbo].[classEventVenue]
GO
/****** Object:  Table [dbo].[class]    Script Date: 5/13/2017 3:24:33 PM ******/
DROP TABLE [dbo].[class]
GO
/****** Object:  Table [dbo].[cityStateCountry]    Script Date: 5/13/2017 3:24:33 PM ******/
DROP TABLE [dbo].[cityStateCountry]
GO
/****** Object:  Table [dbo].[city]    Script Date: 5/13/2017 3:24:33 PM ******/
DROP TABLE [dbo].[city]
GO
ALTER ROLE [db_owner] ADD MEMBER [s17guest40]
GO
/****** Object:  Table [dbo].[city]    Script Date: 5/13/2017 3:24:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[city](
	[cityID] [int] IDENTITY(1, 1) NOT NULL, -- using IDENTITY column to facilitate INSERT
	[cityName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[cityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Cross reference table: Object:  Table [dbo].[cityStateCountry]    Script Date: 5/13/2017 3:24:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cityStateCountry](
	[cityStateCountryID] [int] IDENTITY(1, 1) NOT NULL, -- using IDENTITY column to facilitate INSERT
	[countryID] [smallint] NOT NULL,
	[stateID] [smallint] NOT NULL,
	[cityID] [int] NOT NULL,
 CONSTRAINT [PK_cityStateCountry] PRIMARY KEY CLUSTERED 
(
	[cityStateCountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[class]    Script Date: 5/13/2017 3:24:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[class](
	[classID] [int] NOT NULL,
	[className] [nvarchar](250) NULL,
	[classTitle] [nvarchar](250) NULL,
	[duration] [INT] NULL,
	[difficulty] [nvarchar](50) NULL,
	[classStartDateTime] [smalldatetime] NULL,
	[classEndDateTime] [smalldatetime] NULL,
 CONSTRAINT [PK_class] PRIMARY KEY CLUSTERED 
(
	[classID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Cross reference table: Object:  Table [dbo].[classEventVenue]    Script Date: 5/13/2017 3:24:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[classEventVenue](
	[classID] [int] NOT NULL,
	[eventVenueID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Cross reference table: Object:  Table [dbo].[classLecture]    Script Date: 5/13/2017 3:24:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[classLecture](
	[classID] [int] NOT NULL,
	[lectureID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Cross reference table: Object:  Table [dbo].[classPersonRole]    Script Date: 5/13/2017 3:24:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[classPersonRole](
	[personID] [int] NOT NULL,
	[roleID] [int] NOT NULL,
	[roomClassID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[country]    Script Date: 5/13/2017 3:24:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[country](
	[countryID] [smallint] IDENTITY(1, 1) NOT NULL,-- using IDENTITY column to facilitate INSERT
	[countryName] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[countryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[event]    Script Date: 5/13/2017 3:24:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[event](
	[eventID] [int] NOT NULL,
	[eventName] [nvarchar](50) NULL,
	[eventStarDateTime] [smalldatetime] NULL,
	[eventEndDateTime] [smalldatetime] NULL,
 CONSTRAINT [PK_event] PRIMARY KEY CLUSTERED 
(
	[eventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Cross reference table: Object:  Table [dbo].[eventVenue]    Script Date: 5/13/2017 3:24:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eventVenue](
	[eventVenueID] [int] NOT NULL,
	[eventID] [int] NOT NULL,
	[venueID] [int] NOT NULL,
 CONSTRAINT [PK_eventVenue] PRIMARY KEY CLUSTERED 
(
	[eventVenueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Cross reference table: Object:  Table [dbo].[eventVenuePerson]    Script Date: 5/13/2017 3:24:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eventVenuePerson](
	[eventVenueID] [int] NULL,
	[personID] [int] NULL,
	[wonRaffle] [bit] NULL
) ON [PRIMARY]
GO
/****** Cross reference table: Object:  Table [dbo].[eventVenueSponsor]    Script Date: 5/13/2017 3:24:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eventVenueSponsor](
	[eventVenueID] [int] NOT NULL,
	[sponsorID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lecture]    Script Date: 5/13/2017 3:24:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lecture](
	[lectureID] [int] NOT NULL,
	[lectureTitle] [nvarchar](250) NULL,
 CONSTRAINT [PK_lecture] PRIMARY KEY CLUSTERED 
(
	[lectureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Cross reference table: To keep track of subject and its relation with lectures (presentations)
Object:  Table [dbo].[lectureTrack]    Script Date: 5/13/2017 3:24:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lectureTrack](
	[lectureID] [int] NULL,
	[trackID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[person]    Script Date: 5/13/2017 3:24:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[person](
	[personID] [int] NOT NULL,
	[personFirstName] [nvarchar](50) NULL,
	[personLastName] [nvarchar](50) NULL,
	[personAdress1] [nvarchar](50) NULL,
	[personAdress2] [nvarchar](50) NULL,
	[personZipCode] [nvarchar](10) NULL,
	[personCityID] [int] NULL,
	[personEmail] [nvarchar](50) NULL,
 CONSTRAINT [PK_person] PRIMARY KEY CLUSTERED 
(
	[personID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 5/13/2017 3:24:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[roleD] [int] NOT NULL,
	[roleDescription] [nvarchar](30) NULL,
 CONSTRAINT [PK_role] PRIMARY KEY CLUSTERED 
(
	[roleD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[room]    Script Date: 5/13/2017 3:24:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[room](
	[roomID] [int] NOT NULL,
	[venueID] [int] NOT NULL,
	[roomName] [nvarchar](100) NOT NULL,
	[roomCapacity] [smallint] NOT NULL,
 CONSTRAINT [PK_room] PRIMARY KEY CLUSTERED 
(
	[roomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Cross reference table: Object:  Table [dbo].[roomClass]    Script Date: 5/13/2017 3:24:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roomClass](
	[roomClassID] [int] NOT NULL,
	[roomID] [int] NOT NULL,
	[classID] [int] NOT NULL,
 CONSTRAINT [PK_roomClass] PRIMARY KEY CLUSTERED 
(
	[roomClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** This is sponcer as a company different from sponser as a role for person 
Object:  Table [dbo].[sponsor]    Script Date: 5/13/2017 3:24:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sponsor](
	[sponsorID] [int] NOT NULL,
	[sponsorName] [nvarchar](50) NOT NULL,
	[sponsorLevel] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_sponsor] PRIMARY KEY CLUSTERED 
(
	[sponsorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stateTable]    Script Date: 5/13/2017 3:24:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stateTable](
	[stateID] [smallint] IDENTITY(1, 1) NOT NULL,-- using IDENTITY column to facilitate INSERT
	[stateName] [nvarchar](50) NOT NULL,
	[stateCode] [nvarchar](6) NULL, 
 CONSTRAINT [PK_CountryState] PRIMARY KEY CLUSTERED 
(
	[stateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** To keep track of subject and its relation with lectures (presentations) in lectureTrack Cross reference table
Object:  Table [dbo].[track]    Script Date: 5/13/2017 3:24:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[track](
	[trackID] [int] NOT NULL,
	[subject] [nvarchar](30) NULL,
 CONSTRAINT [PK_track] PRIMARY KEY CLUSTERED 
(
	[trackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[venue]    Script Date: 5/13/2017 3:24:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venue](
	[venueID] [int] NOT NULL,
	[venueName] [nvarchar](40) NULL,
	[venueAddress] [nvarchar](100) NULL,
	[venueCityID] [int] NULL,
 CONSTRAINT [PK_venue] PRIMARY KEY CLUSTERED 
(
	[venueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_person_Unique]    Script Date: 5/13/2017 3:24:33 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_person_Unique] ON [dbo].[person]
(
	[personFirstName] ASC,
	[personLastName] ASC,
	[personEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_cityStateCountry_Unique]    Script Date: 5/13/2017 3:24:33 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_cityStateCountry_Unique] ON [dbo].[cityStateCountry]
(
	[countryID] ASC,
	[stateID] ASC,
	[cityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_classEventVenue]    Script Date: 5/13/2017 3:24:33 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_classEventVenue] ON [dbo].[classEventVenue]
(
	[classID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_classLecture]    Script Date: 5/13/2017 3:24:33 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_classLecture] ON [dbo].[classLecture]
(
	[classID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_eventVenuePerson]    Script Date: 5/13/2017 3:24:33 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_eventVenuePerson] ON [dbo].[eventVenuePerson]
(
	[eventVenueID] ASC,
	[personID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_eventVenueSponsor]    Script Date: 5/13/2017 3:24:33 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_eventVenueSponsor] ON [dbo].[eventVenueSponsor]
(
	[eventVenueID] ASC,
	[sponsorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cityStateCountry]  WITH CHECK ADD  CONSTRAINT [FK_cityStateCountry_City] FOREIGN KEY([cityID])
REFERENCES [dbo].[city] ([cityID])
GO
ALTER TABLE [dbo].[cityStateCountry] CHECK CONSTRAINT [FK_cityStateCountry_City]
GO
ALTER TABLE [dbo].[cityStateCountry]  WITH CHECK ADD  CONSTRAINT [FK_cityStateCountry_Country] FOREIGN KEY([countryID])
REFERENCES [dbo].[country] ([countryID])
GO
ALTER TABLE [dbo].[cityStateCountry] CHECK CONSTRAINT [FK_cityStateCountry_Country]
GO
ALTER TABLE [dbo].[cityStateCountry]  WITH CHECK ADD  CONSTRAINT [FK_cityStateCountry_stateTable] FOREIGN KEY([stateID])
REFERENCES [dbo].[stateTable] ([stateID])
GO
ALTER TABLE [dbo].[cityStateCountry] CHECK CONSTRAINT [FK_cityStateCountry_stateTable]
GO
ALTER TABLE [dbo].[classEventVenue]  WITH CHECK ADD  CONSTRAINT [FK_classEventVenue_class] FOREIGN KEY([classID])
REFERENCES [dbo].[class] ([classID])
GO
ALTER TABLE [dbo].[classEventVenue] CHECK CONSTRAINT [FK_classEventVenue_class]
GO
ALTER TABLE [dbo].[classEventVenue]  WITH CHECK ADD  CONSTRAINT [FK_classEventVenue_eventVenue] FOREIGN KEY([eventVenueID])
REFERENCES [dbo].[eventVenue] ([eventVenueID])
GO
ALTER TABLE [dbo].[classEventVenue] CHECK CONSTRAINT [FK_classEventVenue_eventVenue]
GO
ALTER TABLE [dbo].[classLecture]  WITH CHECK ADD  CONSTRAINT [FK_classLecture_class] FOREIGN KEY([classID])
REFERENCES [dbo].[class] ([classID])
GO
ALTER TABLE [dbo].[classLecture] CHECK CONSTRAINT [FK_classLecture_class]
GO
ALTER TABLE [dbo].[classLecture]  WITH CHECK ADD  CONSTRAINT [FK_classLecture_lecture] FOREIGN KEY([lectureID])
REFERENCES [dbo].[lecture] ([lectureID])
GO
ALTER TABLE [dbo].[classLecture] CHECK CONSTRAINT [FK_classLecture_lecture]
GO
ALTER TABLE [dbo].[classPersonRole]  WITH CHECK ADD  CONSTRAINT [FK_classPersonRole_person] FOREIGN KEY([personID])
REFERENCES [dbo].[person] ([personID])
GO
ALTER TABLE [dbo].[classPersonRole] CHECK CONSTRAINT [FK_classPersonRole_person]
GO
ALTER TABLE [dbo].[classPersonRole]  WITH CHECK ADD  CONSTRAINT [FK_classPersonRole_role] FOREIGN KEY([roleID])
REFERENCES [dbo].[role] ([roleD])
GO
ALTER TABLE [dbo].[classPersonRole] CHECK CONSTRAINT [FK_classPersonRole_role]
GO
ALTER TABLE [dbo].[classPersonRole]  WITH CHECK ADD  CONSTRAINT [FK_classPersonRole_roomClass] FOREIGN KEY([roomClassID])
REFERENCES [dbo].[roomClass] ([roomClassID])
GO
ALTER TABLE [dbo].[classPersonRole] CHECK CONSTRAINT [FK_classPersonRole_roomClass]
GO
ALTER TABLE [dbo].[eventVenue]  WITH CHECK ADD  CONSTRAINT [FK_eventVenue_event] FOREIGN KEY([eventID])
REFERENCES [dbo].[event] ([eventID])
GO
ALTER TABLE [dbo].[eventVenue] CHECK CONSTRAINT [FK_eventVenue_event]
GO
ALTER TABLE [dbo].[eventVenue]  WITH CHECK ADD  CONSTRAINT [FK_eventVenue_venue] FOREIGN KEY([venueID])
REFERENCES [dbo].[venue] ([venueID])
GO
ALTER TABLE [dbo].[eventVenue] CHECK CONSTRAINT [FK_eventVenue_venue]
GO
ALTER TABLE [dbo].[eventVenuePerson]  WITH CHECK ADD  CONSTRAINT [FK_eventVenuePerson_eventVenue] FOREIGN KEY([eventVenueID])
REFERENCES [dbo].[eventVenue] ([eventVenueID])
GO
ALTER TABLE [dbo].[eventVenuePerson] CHECK CONSTRAINT [FK_eventVenuePerson_eventVenue]
GO
ALTER TABLE [dbo].[eventVenuePerson]  WITH CHECK ADD  CONSTRAINT [FK_eventVenuePerson_person] FOREIGN KEY([personID])
REFERENCES [dbo].[person] ([personID])
GO
ALTER TABLE [dbo].[eventVenuePerson] CHECK CONSTRAINT [FK_eventVenuePerson_person]
GO
ALTER TABLE [dbo].[eventVenueSponsor]  WITH CHECK ADD  CONSTRAINT [FK_eventVenueSponsor_eventVenue] FOREIGN KEY([eventVenueID])
REFERENCES [dbo].[eventVenue] ([eventVenueID])
GO
ALTER TABLE [dbo].[eventVenueSponsor] CHECK CONSTRAINT [FK_eventVenueSponsor_eventVenue]
GO
ALTER TABLE [dbo].[eventVenueSponsor]  WITH CHECK ADD  CONSTRAINT [FK_eventVenueSponsor_sponsor] FOREIGN KEY([sponsorID])
REFERENCES [dbo].[sponsor] ([sponsorID])
GO
ALTER TABLE [dbo].[eventVenueSponsor] CHECK CONSTRAINT [FK_eventVenueSponsor_sponsor]
GO
ALTER TABLE [dbo].[lectureTrack]  WITH CHECK ADD  CONSTRAINT [FK_lectureTrack_lecture] FOREIGN KEY([lectureID])
REFERENCES [dbo].[lecture] ([lectureID])
GO
ALTER TABLE [dbo].[lectureTrack] CHECK CONSTRAINT [FK_lectureTrack_lecture]
GO
ALTER TABLE [dbo].[lectureTrack]  WITH CHECK ADD  CONSTRAINT [FK_lectureTrack_track] FOREIGN KEY([trackID])
REFERENCES [dbo].[track] ([trackID])
GO
ALTER TABLE [dbo].[lectureTrack] CHECK CONSTRAINT [FK_lectureTrack_track]
GO
ALTER TABLE [dbo].[person]  WITH CHECK ADD  CONSTRAINT [FK_person_cityStateCountry] FOREIGN KEY([personCityID])
REFERENCES [dbo].[cityStateCountry] ([cityStateCountryID])
GO
ALTER TABLE [dbo].[person] CHECK CONSTRAINT [FK_person_cityStateCountry]
GO
ALTER TABLE [dbo].[room]  WITH CHECK ADD  CONSTRAINT [FK_room_venue] FOREIGN KEY([venueID])
REFERENCES [dbo].[venue] ([venueID])
GO
ALTER TABLE [dbo].[room] CHECK CONSTRAINT [FK_room_venue]
GO
ALTER TABLE [dbo].[roomClass]  WITH CHECK ADD  CONSTRAINT [FK_roomClass_class] FOREIGN KEY([classID])
REFERENCES [dbo].[class] ([classID])
GO
ALTER TABLE [dbo].[roomClass] CHECK CONSTRAINT [FK_roomClass_class]
GO
ALTER TABLE [dbo].[roomClass]  WITH CHECK ADD  CONSTRAINT [FK_roomClass_room] FOREIGN KEY([roomID])
REFERENCES [dbo].[room] ([roomID])
GO
ALTER TABLE [dbo].[roomClass] CHECK CONSTRAINT [FK_roomClass_room]
GO
ALTER TABLE [dbo].[venue]  WITH CHECK ADD  CONSTRAINT [FK_venue_cityStateCountry] FOREIGN KEY([venueCityID])
REFERENCES [dbo].[cityStateCountry] ([cityStateCountryID])
GO
ALTER TABLE [dbo].[venue] CHECK CONSTRAINT [FK_venue_cityStateCountry]
GO
