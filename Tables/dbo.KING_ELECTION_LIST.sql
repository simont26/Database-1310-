CREATE TABLE [dbo].[KING_ELECTION_LIST]
(
[byType] [tinyint] NOT NULL,
[byNation] [tinyint] NOT NULL,
[nKnights] [smallint] NULL,
[strName] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[nMoney] [int] NOT NULL
) ON [PRIMARY]
GO
