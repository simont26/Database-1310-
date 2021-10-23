CREATE TABLE [dbo].[MONSTER_SUMMON_LIST]
(
[sSid] [smallint] NOT NULL,
[strName] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[sLevel] [smallint] NOT NULL,
[sProbability] [smallint] NOT NULL,
[bType] [tinyint] NOT NULL CONSTRAINT [DF_MONSTER_SUMMON_LIST_bType] DEFAULT (0)
) ON [PRIMARY]
GO
