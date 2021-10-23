CREATE TABLE [dbo].[WEB_ITEMMALL_LOG]
(
[strAccountID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[strCharID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ServerNo] [smallint] NOT NULL,
[ItemID] [int] NOT NULL,
[ItemCount] [smallint] NOT NULL,
[BuyTime] [smalldatetime] NOT NULL CONSTRAINT [DF_WEB_ITEMMALL_LOG_BuyTime] DEFAULT (getdate()),
[img_file_name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[strItemName] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[price] [int] NULL,
[pay_type] [int] NULL
) ON [PRIMARY]
GO
