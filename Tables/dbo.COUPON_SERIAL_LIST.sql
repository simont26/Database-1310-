CREATE TABLE [dbo].[COUPON_SERIAL_LIST]
(
[nIndex] [int] NOT NULL,
[strSerialNum] [char] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[nItemNum] [int] NOT NULL,
[sItemCount] [smallint] NOT NULL
) ON [PRIMARY]
GO
