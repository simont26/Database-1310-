CREATE TABLE [dbo].[MAGIC_TYPE9]
(
[iNum] [int] NULL,
[Name] [char] (30) COLLATE Latin1_General_CI_AS NULL,
[Description] [char] (100) COLLATE Latin1_General_CI_AS NULL,
[ValidGroup] [tinyint] NULL,
[NationChange] [tinyint] NULL,
[MonsterNum] [smallint] NULL,
[TargetChange] [tinyint] NULL,
[StateChange] [tinyint] NULL,
[Radius] [smallint] NULL,
[Hitrate] [smallint] NULL,
[Duration] [smallint] NULL,
[AddDamage] [smallint] NULL,
[Vision] [smallint] NULL,
[NeedItem] [int] NULL
) ON [PRIMARY]
GO
