CREATE TABLE [dbo].[EMIGRATION_ERROR]
(
[strAccountID] [char] (21) COLLATE Korean_Wansung_CI_AS NOT NULL,
[strCharID1] [char] (21) COLLATE Korean_Wansung_CI_AS NULL,
[sKnights1] [smallint] NOT NULL CONSTRAINT [DF_EMIGRATION_ERROR_sKnights1] DEFAULT (0),
[strCharID2] [char] (21) COLLATE Korean_Wansung_CI_AS NULL,
[sKnights2] [smallint] NOT NULL CONSTRAINT [DF_EMIGRATION_ERROR_sKnights2] DEFAULT (0),
[strCharID3] [char] (21) COLLATE Korean_Wansung_CI_AS NULL,
[sKnights3] [smallint] NOT NULL CONSTRAINT [DF_EMIGRATION_ERROR_sKnights3] DEFAULT (0)
) ON [PRIMARY]
GO
