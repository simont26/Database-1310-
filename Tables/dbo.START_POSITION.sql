CREATE TABLE [dbo].[START_POSITION]
(
[ZoneID] [smallint] NOT NULL,
[sKarusX] [smallint] NOT NULL,
[sKarusZ] [smallint] NOT NULL,
[sElmoradX] [smallint] NOT NULL,
[sElmoradZ] [smallint] NOT NULL,
[bRangeX] [tinyint] NOT NULL,
[bRangeZ] [tinyint] NOT NULL,
[sKarusGateX] [smallint] NOT NULL CONSTRAINT [DF_START_POSITION_sKarusGateX] DEFAULT (0),
[sKarusGateZ] [smallint] NOT NULL CONSTRAINT [DF_START_POSITION_sKarusGateZ] DEFAULT (0),
[sElmoGateX] [smallint] NOT NULL CONSTRAINT [DF_START_POSITION_sElmoGateX] DEFAULT (0),
[sElmoGateZ] [smallint] NOT NULL CONSTRAINT [DF_START_POSITION_sElmoGateZ] DEFAULT (0)
) ON [PRIMARY]
GO
