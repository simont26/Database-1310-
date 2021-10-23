CREATE TABLE [dbo].[KNIGHTS_RATING]
(
[nRank] [int] NOT NULL IDENTITY(1, 1),
[shIndex] [smallint] NULL,
[strName] [char] (21) COLLATE Latin1_General_CI_AI NULL,
[nPoints] [int] NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_rating_rank] ON [dbo].[KNIGHTS_RATING] ([nRank]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_rating_name] ON [dbo].[KNIGHTS_RATING] ([strName]) ON [PRIMARY]
GO
