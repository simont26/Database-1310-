CREATE TABLE [dbo].[MAGIC_TYPE1]
(
[iNum] [int] NULL,
[Name] [char] (30) COLLATE Latin1_General_CI_AS NULL,
[Description] [char] (100) COLLATE Latin1_General_CI_AS NULL,
[Type] [tinyint] NULL,
[HitRate] [smallint] NULL,
[Hit] [smallint] NULL,
[AddDamage] [smallint] NULL,
[Delay] [tinyint] NULL,
[ComboType] [tinyint] NULL,
[ComboCount] [tinyint] NULL,
[ComboDamage] [smallint] NULL,
[Range] [smallint] NULL
) ON [PRIMARY]
GO
