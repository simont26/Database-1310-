CREATE TABLE [dbo].[ITEM_GROUP]
(
[group] [smallint] NOT NULL,
[name] [char] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[item1] [int] NOT NULL CONSTRAINT [DF_ITEM_GROUP_item1] DEFAULT (0),
[item2] [int] NOT NULL CONSTRAINT [DF_ITEM_GROUP_item2] DEFAULT (0),
[item3] [int] NOT NULL CONSTRAINT [DF_ITEM_GROUP_item3] DEFAULT (0),
[item4] [int] NOT NULL CONSTRAINT [DF_ITEM_GROUP_item4] DEFAULT (0),
[item5] [int] NOT NULL CONSTRAINT [DF_ITEM_GROUP_item5] DEFAULT (0),
[item6] [int] NOT NULL CONSTRAINT [DF_ITEM_GROUP_item6] DEFAULT (0),
[item7] [int] NOT NULL CONSTRAINT [DF_ITEM_GROUP_item7] DEFAULT (0),
[item8] [int] NOT NULL CONSTRAINT [DF_ITEM_GROUP_item8] DEFAULT (0),
[item9] [int] NOT NULL CONSTRAINT [DF_ITEM_GROUP_item9] DEFAULT (0),
[item10] [int] NOT NULL CONSTRAINT [DF_ITEM_GROUP_item10] DEFAULT (0),
[item11] [int] NOT NULL CONSTRAINT [DF_ITEM_GROUP_item11] DEFAULT (0),
[item12] [int] NOT NULL CONSTRAINT [DF_ITEM_GROUP_item12] DEFAULT (0),
[item13] [int] NOT NULL CONSTRAINT [DF_ITEM_GROUP_item13] DEFAULT (0),
[item14] [int] NOT NULL CONSTRAINT [DF_ITEM_GROUP_item14] DEFAULT (0),
[item15] [int] NOT NULL CONSTRAINT [DF_ITEM_GROUP_item15] DEFAULT (0),
[item16] [int] NOT NULL CONSTRAINT [DF_ITEM_GROUP_item16] DEFAULT (0),
[item17] [int] NOT NULL CONSTRAINT [DF_ITEM_GROUP_item17] DEFAULT (0),
[item18] [int] NOT NULL CONSTRAINT [DF_ITEM_GROUP_item18] DEFAULT (0),
[item19] [int] NOT NULL CONSTRAINT [DF_ITEM_GROUP_item19] DEFAULT (0),
[item20] [int] NOT NULL CONSTRAINT [DF_ITEM_GROUP_item20] DEFAULT (0),
[item21] [int] NOT NULL CONSTRAINT [DF_ITEM_GROUP_item21] DEFAULT (0),
[item22] [int] NOT NULL CONSTRAINT [DF_ITEM_GROUP_item22] DEFAULT (0),
[item23] [int] NOT NULL CONSTRAINT [DF_ITEM_GROUP_item23] DEFAULT (0),
[item24] [int] NOT NULL CONSTRAINT [DF_ITEM_GROUP_item24] DEFAULT (0),
[item25] [int] NOT NULL CONSTRAINT [DF_ITEM_GROUP_item25] DEFAULT (0),
[item26] [int] NOT NULL CONSTRAINT [DF_ITEM_GROUP_item26] DEFAULT (0),
[item27] [int] NOT NULL CONSTRAINT [DF_ITEM_GROUP_item27] DEFAULT (0),
[item28] [int] NOT NULL CONSTRAINT [DF_ITEM_GROUP_item28] DEFAULT (0),
[item29] [int] NOT NULL CONSTRAINT [DF_ITEM_GROUP_item29] DEFAULT (0),
[item30] [int] NOT NULL CONSTRAINT [DF_ITEM_GROUP_item30] DEFAULT (0)
) ON [PRIMARY]
GO