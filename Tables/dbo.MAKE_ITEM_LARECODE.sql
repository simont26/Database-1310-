CREATE TABLE [dbo].[MAKE_ITEM_LARECODE]
(
[byLevelGrade] [tinyint] NOT NULL,
[sUpgradeItem] [smallint] NOT NULL CONSTRAINT [DF_MAKE_ITEM_LARECODE_sUpgradeItem_1] DEFAULT (0),
[sLareItem] [smallint] NOT NULL CONSTRAINT [DF_MAKE_ITEM_LARECODE_sLareItem] DEFAULT (0),
[sMagicItem] [smallint] NOT NULL CONSTRAINT [DF_MAKE_ITEM_LARECODE_sMagicItem] DEFAULT (0),
[sGereralItem] [smallint] NOT NULL CONSTRAINT [DF_MAKE_ITEM_LARECODE_sGereralItem] DEFAULT (0)
) ON [PRIMARY]
GO