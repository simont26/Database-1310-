CREATE TABLE [dbo].[EDITOR_USER]
(
[strOpName] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[strOpIP] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[timeLogin] [smalldatetime] NOT NULL,
[strServerName] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[strAccountID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[strCharID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[strUserData] [char] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[strSkill] [char] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[strOldItem] [char] (400) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[strNewItem] [char] (400) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[strOldItemSerial] [char] (400) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[strNewItemSerial] [char] (400) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[strOldWHItem] [char] (160) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[strNewWHItem] [char] (160) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[strOldWHItemSerial] [char] (160) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[strNewWHItemSerial] [char] (160) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
