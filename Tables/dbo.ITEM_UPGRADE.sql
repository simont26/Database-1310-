CREATE TABLE [dbo].[ITEM_UPGRADE]
(
[nIndex] [int] NULL,
[nNPCNum] [smallint] NULL,
[strName] [char] (21) COLLATE Latin1_General_CI_AS NULL,
[strNote] [varchar] (100) COLLATE Latin1_General_CI_AS NULL,
[nOriginType] [smallint] NULL,
[nOriginItem] [smallint] NULL,
[nReqItem1] [int] NULL,
[nReqItem2] [int] NULL,
[nReqItem3] [int] NULL,
[nReqItem4] [int] NULL,
[nReqItem5] [int] NULL,
[nReqItem6] [int] NULL,
[nReqItem7] [int] NULL,
[nReqItem8] [int] NULL,
[nReqNoah] [int] NULL,
[bRateType] [tinyint] NULL,
[nGenRate] [smallint] NULL,
[nGiveItem] [smallint] NULL
) ON [PRIMARY]
GO
