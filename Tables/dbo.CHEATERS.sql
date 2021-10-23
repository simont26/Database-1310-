CREATE TABLE [dbo].[CHEATERS]
(
[CheaterID] [varchar] (21) COLLATE Latin1_General_CI_AS NULL,
[ReporterID] [varchar] (21) COLLATE Latin1_General_CI_AS NULL,
[Cheat] [varchar] (60) COLLATE Latin1_General_CI_AS NULL,
[Link] [varchar] (75) COLLATE Latin1_General_CI_AS NULL,
[Time] [varchar] (14) COLLATE Latin1_General_CI_AS NULL,
[Status] [tinyint] NULL
) ON [PRIMARY]
GO
