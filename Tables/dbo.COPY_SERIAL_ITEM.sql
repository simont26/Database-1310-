CREATE TABLE [dbo].[COPY_SERIAL_ITEM]
(
[strUserId] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[byType] [tinyint] NULL,
[nPos] [smallint] NULL,
[ItemNum] [binary] (4) NULL,
[ItemSerial] [binary] (8) NULL,
[nItemSerial] [bigint] NULL,
[nItemNum] [int] NULL,
[strItemName] [char] (50) COLLATE Latin1_General_CI_AS NULL,
[sIndex] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
