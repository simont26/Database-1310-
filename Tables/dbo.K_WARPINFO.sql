CREATE TABLE [dbo].[K_WARPINFO]
(
[sZone] [smallint] NOT NULL,
[sWarpID] [smallint] NOT NULL,
[strWarpName] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[strAnnounce] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[dwPay] [int] NULL,
[stoZone] [smallint] NULL,
[sX] [smallint] NULL,
[sY] [smallint] NULL,
[sZ] [smallint] NULL,
[sR] [smallint] NULL
) ON [PRIMARY]
GO
