CREATE TABLE [dbo].[MAKE_ITEM]
(
[sIndex] [smallint] NOT NULL,
[strItemInfo] [char] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[iItemCode] [int] NOT NULL,
[byItemLevel] [tinyint] NOT NULL CONSTRAINT [DF_MAKE_ITEM_byItemLevel] DEFAULT (0)
) ON [PRIMARY]
GO
