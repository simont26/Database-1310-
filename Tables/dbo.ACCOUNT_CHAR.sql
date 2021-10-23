CREATE TABLE [dbo].[ACCOUNT_CHAR]
(
[strAccountID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[bNation] [tinyint] NOT NULL,
[bCharNum] [tinyint] NOT NULL CONSTRAINT [DF_ACCOUNT_CHAR_bCharNum] DEFAULT ((0)),
[strCharID1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[strCharID2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[strCharID3] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[strCharID4] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[strCharID5] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ACCOUNT_CHAR] ADD CONSTRAINT [PK_ACCOUNT_CHAR] PRIMARY KEY CLUSTERED  ([strAccountID]) WITH (FILLFACTOR=90) ON [PRIMARY]
GO
