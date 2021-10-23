CREATE TABLE [dbo].[MAGIC_TYPE2]
(
[iNum] [int] NULL,
[Name] [char] (30) COLLATE Latin1_General_CI_AS NULL,
[Description] [char] (100) COLLATE Latin1_General_CI_AS NULL,
[HitType] [tinyint] NULL,
[HitRate] [smallint] NULL,
[AddDamage] [smallint] NULL,
[AddRange] [smallint] NULL,
[NeedArrow] [tinyint] NULL,
[AddDamagePlus] [smallint] NULL
) ON [PRIMARY]
GO
