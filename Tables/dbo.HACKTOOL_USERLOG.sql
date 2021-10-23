CREATE TABLE [dbo].[HACKTOOL_USERLOG]
(
[strAccountID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[strCharID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[strHackToolName] [char] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[tWriteTime] [smalldatetime] NOT NULL CONSTRAINT [DF_HACKTOOL_USERLOG_tWriteTime] DEFAULT (getdate()),
[UserID] [char] (21) COLLATE Latin1_General_CI_AI NOT NULL
) ON [PRIMARY]
GO
