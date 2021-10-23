CREATE TABLE [dbo].[MAGIC_TYPE6]
(
[iNum] [int] NULL,
[Name] [char] (30) COLLATE Latin1_General_CI_AS NULL,
[Description] [char] (100) COLLATE Latin1_General_CI_AS NULL,
[Size] [smallint] NULL,
[TransformID] [smallint] NULL,
[Duration] [smallint] NULL,
[MaxHp] [smallint] NULL,
[MaxMp] [smallint] NULL,
[Speed] [tinyint] NULL,
[AttackSpeed] [smallint] NULL,
[TotalHit] [smallint] NULL,
[TotalAc] [smallint] NULL,
[TotalHitRate] [smallint] NULL,
[TotalEvasionRate] [smallint] NULL,
[TotalFireR] [smallint] NULL,
[TotalColdR] [smallint] NULL,
[TotalLightningR] [smallint] NULL,
[TotalMagicR] [smallint] NULL,
[TotalDiseaseR] [smallint] NULL,
[TotalPoisonR] [smallint] NULL,
[Class] [smallint] NULL,
[UserSkillUse] [tinyint] NULL,
[NeedItem] [tinyint] NULL,
[SkillSuccessRate] [tinyint] NULL,
[MonsterFriendly] [tinyint] NULL
) ON [PRIMARY]
GO
