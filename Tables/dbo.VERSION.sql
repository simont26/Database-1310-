CREATE TABLE [dbo].[VERSION]
(
[sVersion] [smallint] NULL,
[strFileName] [varchar] (50) COLLATE Latin1_General_CI_AS NULL,
[strCompressName] [varchar] (50) COLLATE Latin1_General_CI_AS NULL,
[sHistoryVersion] [smallint] NULL,
[bCompressed] [varchar] (50) COLLATE Latin1_General_CI_AS NULL,
[bz] [varchar] (max) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
