CREATE TABLE [dbo].[K_NPCPOS_SORT]
(
[ZoneID] [smallint] NOT NULL,
[NpcID] [int] NOT NULL,
[ActType] [tinyint] NOT NULL,
[LeftX] [int] NOT NULL,
[TopZ] [int] NOT NULL,
[RightX] [int] NOT NULL,
[BottomZ] [int] NOT NULL,
[NumNPC] [tinyint] NOT NULL,
[RegTime] [smallint] NOT NULL,
[DotCnt] [tinyint] NOT NULL,
[path] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
