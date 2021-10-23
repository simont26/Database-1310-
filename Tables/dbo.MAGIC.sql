CREATE TABLE [dbo].[MAGIC]
(
[MagicNum] [int] NULL,
[EnName] [char] (100) COLLATE Latin1_General_CI_AI NULL,
[KrName] [char] (100) COLLATE Latin1_General_CI_AI NULL,
[Description] [char] (200) COLLATE Latin1_General_CI_AI NULL,
[BeforeAction] [tinyint] NULL,
[TargetAction] [tinyint] NULL,
[SelfEffect] [tinyint] NULL,
[FlyingEffect] [tinyint] NULL,
[TargetEffect] [smallint] NULL,
[Moral] [tinyint] NULL,
[SkillLevel] [smallint] NULL,
[Skill] [smallint] NULL,
[Msp] [smallint] NULL,
[HP] [smallint] NULL,
[ItemGroup] [tinyint] NULL,
[UseItem] [int] NULL,
[CastTime] [tinyint] NULL,
[ReCastTime] [tinyint] NULL,
[SuccessRate] [tinyint] NULL,
[Type1] [tinyint] NULL,
[Type2] [tinyint] NULL,
[Range] [smallint] NULL,
[Etc] [tinyint] NULL,
[Event] [int] NULL
) ON [PRIMARY]
GO
