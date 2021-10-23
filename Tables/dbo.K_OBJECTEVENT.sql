CREATE TABLE [dbo].[K_OBJECTEVENT]
(
[sZoneNo] [smallint] NOT NULL,
[sIndex] [smallint] NOT NULL,
[byLife] [tinyint] NOT NULL,
[sBelong] [smallint] NOT NULL,
[sType] [smallint] NOT NULL,
[sControlNpcId] [smallint] NOT NULL,
[sStatus] [smallint] NOT NULL,
[sPosX] [smallint] NOT NULL,
[sPosY] [smallint] NOT NULL,
[sPosZ] [smallint] NOT NULL
) ON [PRIMARY]
GO
