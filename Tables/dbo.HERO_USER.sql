CREATE TABLE [dbo].[HERO_USER]
(
[shIndex] [smallint] NOT NULL,
[strUserID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[strNation] [char] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[strClass] [char] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[strAchievement] [char] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
