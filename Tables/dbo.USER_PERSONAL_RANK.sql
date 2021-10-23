CREATE TABLE [dbo].[USER_PERSONAL_RANK]
(
[nRank] [smallint] NULL,
[strPosition] [char] (21) COLLATE Latin1_General_CI_AI NULL,
[nElmoUP] [smallint] NULL,
[strElmoUserID] [char] (21) COLLATE Latin1_General_CI_AI NULL,
[nElmoLoyaltyMonthly] [int] NULL,
[nElmoCheck] [int] NULL,
[nKarusUP] [smallint] NULL,
[strKarusUserID] [char] (21) COLLATE Latin1_General_CI_AI NULL,
[nKarusLoyaltyMonthly] [int] NULL,
[nKarusCheck] [int] NULL,
[nSalary] [int] NULL,
[UpdateDate] [smalldatetime] NULL
) ON [PRIMARY]
GO
