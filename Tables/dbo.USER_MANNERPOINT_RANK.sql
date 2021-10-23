CREATE TABLE [dbo].[USER_MANNERPOINT_RANK]
(
[nRank] [smallint] NOT NULL,
[nElmoUP] [smallint] NOT NULL,
[strElmoUserID] [char] (21) COLLATE Latin1_General_CI_AI NULL,
[nElmoMannerPoint] [int] NULL,
[nKarusUP] [smallint] NOT NULL,
[strKarusUserID] [char] (21) COLLATE Latin1_General_CI_AI NULL,
[nKarusMannerPoint] [int] NULL,
[UpdateDate] [smalldatetime] NOT NULL
) ON [PRIMARY]
GO
