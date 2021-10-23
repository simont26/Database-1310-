CREATE TABLE [dbo].[USER_EDITOR]
(
[strCharID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[strAccountID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[strOpID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[strOpIP] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[strOldUserValue] [char] (600) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[strNewUserValue] [char] (600) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[strOldUserSkill] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[strNewUserSkill] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[strOldUserItem] [char] (400) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[strNewUserItem] [char] (400) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[strOldWHValue] [char] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[strNewWHValue] [char] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[strOldWHItem] [char] (1600) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[strNewWHItem] [char] (1600) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EditorTime] [smalldatetime] NOT NULL CONSTRAINT [DF_USER_EDITOR_EditorTime] DEFAULT (getdate())
) ON [PRIMARY]
GO
