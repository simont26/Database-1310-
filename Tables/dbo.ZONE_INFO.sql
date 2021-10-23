CREATE TABLE [dbo].[ZONE_INFO]
(
[ServerNo] [tinyint] NOT NULL,
[ZoneNo] [smallint] NOT NULL,
[strZoneName] [char] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[InitX] [int] NOT NULL,
[InitZ] [int] NOT NULL,
[InitY] [int] NOT NULL,
[Type] [tinyint] NOT NULL,
[RoomEvent] [tinyint] NOT NULL,
[bz] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
