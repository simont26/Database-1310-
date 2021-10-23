CREATE TABLE [dbo].[USER_RENTAL_ITEM]
(
[strUserID] [char] (21) COLLATE Korean_Wansung_CI_AS NULL,
[strAccountID] [char] (21) COLLATE Korean_Wansung_CI_AS NULL,
[byRentalType] [tinyint] NULL,
[byRegType] [tinyint] NULL CONSTRAINT [DF_USER_RENTAL_ITEM_byRegType] DEFAULT ((0)),
[nRentalIndex] [int] NULL,
[nItemIndex] [int] NULL,
[sDurability] [smallint] NULL CONSTRAINT [DF_USER_RENTAL_ITEM_sDuration] DEFAULT ((0)),
[nSerialNumber] [bigint] NULL,
[nRentalMoney] [int] NULL,
[sRentalTime] [smallint] NULL,
[sDuringTime] [smallint] NULL,
[timeRental] [smalldatetime] NULL,
[timeRegister] [smalldatetime] NULL CONSTRAINT [DF_USER_RENTAL_ITEM_timeRegister] DEFAULT (getdate())
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_USER_RENTAL_ITEM_1] ON [dbo].[USER_RENTAL_ITEM] ([nItemIndex]) WITH (FILLFACTOR=90) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_USER_RENTAL_ITEM] ON [dbo].[USER_RENTAL_ITEM] ([strAccountID]) WITH (FILLFACTOR=90) ON [PRIMARY]
GO
