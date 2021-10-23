CREATE TABLE [dbo].[MAGIC_TYPE3]
(
[iNum] [int] NULL,
[Name] [char] (30) COLLATE Latin1_General_CI_AS NULL,
[Description] [char] (100) COLLATE Latin1_General_CI_AS NULL,
[DirectType] [tinyint] NULL,
[FirstDamage] [smallint] NULL,
[EndDamage] [smallint] NULL,
[TimeDamage] [smallint] NULL,
[Duration] [tinyint] NULL,
[Attribute] [tinyint] NULL,
[Radius] [tinyint] NULL,
[Angle] [smallint] NULL
) ON [PRIMARY]
GO
