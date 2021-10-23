CREATE TABLE [dbo].[USER_KNIGHTS_RANK]
(
[shIndex] [smallint] NULL,
[strName] [char] (21) COLLATE Latin1_General_CI_AI NULL,
[strElmoUserID] [varchar] (21) COLLATE Latin1_General_CI_AI NULL,
[strElmoKnightsName] [char] (21) COLLATE Latin1_General_CI_AI NULL,
[nElmoLoyalty] [int] NULL,
[strKarusUserID] [varchar] (21) COLLATE Latin1_General_CI_AI NULL,
[strKarusKnightsName] [char] (21) COLLATE Latin1_General_CI_AI NULL,
[nKarusLoyalty] [int] NULL,
[nMoney] [int] NULL
) ON [PRIMARY]
GO
