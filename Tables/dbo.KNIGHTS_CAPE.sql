CREATE TABLE [dbo].[KNIGHTS_CAPE]
(
[sCapeIndex] [smallint] NOT NULL,
[strName] [char] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[nBuyPrice] [int] NOT NULL,
[nDuration] [int] NOT NULL,
[byGrade] [tinyint] NOT NULL
) ON [PRIMARY]
GO
