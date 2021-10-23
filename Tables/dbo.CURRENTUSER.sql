CREATE TABLE [dbo].[CURRENTUSER]
(
[strAccountID] [varchar] (50) COLLATE Latin1_General_CI_AI NULL,
[strCharID] [varchar] (50) COLLATE Latin1_General_CI_AI NULL,
[nServerNo] [varchar] (50) COLLATE Latin1_General_CI_AI NULL,
[strServerIP] [varchar] (50) COLLATE Latin1_General_CI_AI NULL,
[strClientIP] [varchar] (50) COLLATE Latin1_General_CI_AI NULL,
[CardType] [int] NULL CONSTRAINT [DF_CURRENTUSER_CardType] DEFAULT ((1)),
[nValidTime] [int] NULL CONSTRAINT [DF_CURRENTUSER_nValidTime] DEFAULT ((3600))
) ON [PRIMARY]
GO
