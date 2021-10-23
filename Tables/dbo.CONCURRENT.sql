CREATE TABLE [dbo].[CONCURRENT]
(
[serverid] [int] NOT NULL,
[zone1_count] [smallint] NULL,
[zone2_count] [smallint] NULL,
[zone3_count] [smallint] NULL,
[bz] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
