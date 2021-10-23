CREATE TABLE [dbo].[RENTAL_ITEM_LIST]
(
[nRentalIndex] [int] NOT NULL,
[nItemIndex] [int] NOT NULL,
[sDurability] [smallint] NOT NULL CONSTRAINT [DF_RENTAL_ITEM_LIST_sDurability] DEFAULT ((0)),
[nSerialNumber] [bigint] NOT NULL,
[byRegType] [tinyint] NOT NULL CONSTRAINT [DF_RENTAL_ITEM_LIST_byRegType] DEFAULT ((0)),
[byItemType] [tinyint] NOT NULL,
[byClass] [tinyint] NOT NULL,
[sRentalTime] [smallint] NOT NULL,
[nRentalMoney] [int] NOT NULL,
[strLenderCharID] [char] (21) COLLATE Latin1_General_CI_AI NOT NULL,
[strLenderAcID] [char] (21) COLLATE Latin1_General_CI_AI NOT NULL,
[strBorrowerCharID] [char] (21) COLLATE Latin1_General_CI_AI NULL,
[strBorrowerAcID] [char] (21) COLLATE Latin1_General_CI_AI NULL,
[timeLender] [smalldatetime] NULL,
[timeRegister] [smalldatetime] NOT NULL CONSTRAINT [DF_RENTAL_ITEM_LIST_timeRegister] DEFAULT (getdate())
) ON [PRIMARY]
GO
