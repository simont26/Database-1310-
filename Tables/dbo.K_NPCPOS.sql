CREATE TABLE [dbo].[K_NPCPOS]
(
[ZoneID] [smallint] NULL,
[NpcID] [int] NULL,
[ActType] [tinyint] NULL,
[RegenType] [tinyint] NULL,
[DungeonFamily] [tinyint] NULL,
[SpecialType] [tinyint] NULL,
[TrapNumber] [tinyint] NULL,
[LeftX] [int] NULL,
[TopZ] [int] NULL,
[RightX] [int] NULL,
[BottomZ] [int] NULL,
[LimitMinZ] [int] NULL,
[LimitMinX] [int] NULL,
[LimitMaxX] [int] NULL,
[LimitMaxZ] [int] NULL,
[NumNPC] [tinyint] NULL,
[RegTime] [smallint] NULL,
[byDirection] [int] NULL,
[DotCnt] [tinyint] NULL,
[path] [text] COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
