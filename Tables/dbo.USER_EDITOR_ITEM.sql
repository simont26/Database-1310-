CREATE TABLE [dbo].[USER_EDITOR_ITEM]
(
[strCharID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[strAccountID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[strOpID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[strOpIP] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[sDBIndex] [smallint] NOT NULL,
[sPos] [smallint] NOT NULL,
[byType] [tinyint] NOT NULL,
[nItemID1] [int] NOT NULL,
[nItemID2] [int] NOT NULL,
[UpdateTime] [smalldatetime] NULL
) ON [PRIMARY]
GO
