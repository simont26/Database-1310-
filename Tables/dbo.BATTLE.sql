CREATE TABLE [dbo].[BATTLE]
(
[sIndex] [smallint] NOT NULL,
[byNation] [tinyint] NOT NULL,
[strUserName] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[byElmoArea] [tinyint] NOT NULL CONSTRAINT [DF_BATTLE_byElmoArea_1] DEFAULT (0),
[byKarusArea] [tinyint] NOT NULL CONSTRAINT [DF_BATTLE_byKarusArea_1] DEFAULT (0),
[byElmoAdvantage] [tinyint] NOT NULL CONSTRAINT [DF_BATTLE_byElmoAdvantage_1] DEFAULT (0),
[byKarusAdvantage] [tinyint] NOT NULL CONSTRAINT [DF_BATTLE_byKarusAdvantage_1] DEFAULT (0),
[byArea_1] [tinyint] NOT NULL CONSTRAINT [DF_BATTLE_byArea_1_1] DEFAULT (0),
[byArea_2] [tinyint] NOT NULL CONSTRAINT [DF_BATTLE_byArea_2] DEFAULT (0),
[byArea_3] [tinyint] NOT NULL CONSTRAINT [DF_BATTLE_byArea_3] DEFAULT (0),
[byArea_4] [tinyint] NOT NULL CONSTRAINT [DF_BATTLE_byArea_4] DEFAULT (0),
[byArea_5] [tinyint] NOT NULL CONSTRAINT [DF_BATTLE_byArea_5] DEFAULT (0),
[byArea_6] [tinyint] NOT NULL CONSTRAINT [DF_BATTLE_byArea_6] DEFAULT (0),
[byArea_7] [tinyint] NOT NULL CONSTRAINT [DF_BATTLE_byArea_7] DEFAULT (0),
[byArea_8] [tinyint] NOT NULL CONSTRAINT [DF_BATTLE_byArea_8] DEFAULT (0),
[byArea_9] [tinyint] NOT NULL CONSTRAINT [DF_BATTLE_byArea_9] DEFAULT (0),
[byArea_10] [tinyint] NOT NULL CONSTRAINT [DF_BATTLE_byArea_10] DEFAULT (0),
[byArea_11] [tinyint] NOT NULL CONSTRAINT [DF_BATTLE_byArea_11] DEFAULT (0)
) ON [PRIMARY]
GO
