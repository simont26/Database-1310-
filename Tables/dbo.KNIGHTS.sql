CREATE TABLE [dbo].[KNIGHTS]
(
[IDNum] [smallint] NOT NULL,
[Flag] [tinyint] NOT NULL CONSTRAINT [DF_KNIGHTS_Flag] DEFAULT (1),
[Nation] [tinyint] NOT NULL,
[Ranking] [tinyint] NOT NULL CONSTRAINT [DF_KNIGHTS_Ranking] DEFAULT (0),
[IDName] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Members] [smallint] NOT NULL CONSTRAINT [DF_KNIGHTS_Members] DEFAULT (1),
[Chief] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ViceChief_1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ViceChief_2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ViceChief_3] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[strEnemyName] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[byOldWarResult] [tinyint] NOT NULL CONSTRAINT [DF_KNIGHTS_byOldWarResult] DEFAULT (0),
[nWarEnemyID] [int] NOT NULL CONSTRAINT [DF_KNIGHTS_nWarEnemyID] DEFAULT (0),
[nVictory] [int] NOT NULL CONSTRAINT [DF_KNIGHTS_nVictory] DEFAULT (0),
[nLose] [int] NOT NULL CONSTRAINT [DF_KNIGHTS_nLose] DEFAULT (0),
[Gold] [bigint] NOT NULL CONSTRAINT [DF_KNIGHTS_Gold] DEFAULT (0),
[Domination] [smallint] NOT NULL CONSTRAINT [DF_KNIGHTS_Domination] DEFAULT (0),
[Points] [int] NULL CONSTRAINT [DF_KNIGHTS_Points] DEFAULT (0),
[CreateTime] [smalldatetime] NOT NULL CONSTRAINT [DF_KNIGHTS_CreateTime] DEFAULT (getdate()),
[sMarkVersion] [smallint] NOT NULL CONSTRAINT [DF_KNIGHTS_sMarkVersion] DEFAULT (0),
[sMarkLen] [smallint] NOT NULL CONSTRAINT [DF_KNIGHTS_sMarkLen] DEFAULT (0),
[Mark] [image] NULL,
[Stash] [varchar] (1600) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[bySiegeFlag] [tinyint] NOT NULL CONSTRAINT [DF_KNIGHTS_bySiegeFlag] DEFAULT (0),
[sAllianceKnights] [smallint] NOT NULL CONSTRAINT [DF_KNIGHTS_sAllianceKnights] DEFAULT (0),
[sCape] [smallint] NOT NULL CONSTRAINT [DF_KNIGHTS_sCape_1] DEFAULT ((-1))
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[KNIGHTS] ADD CONSTRAINT [PK_KNIGHTS] PRIMARY KEY CLUSTERED  ([IDNum]) WITH (FILLFACTOR=90) ON [PRIMARY]
GO
ALTER TABLE [dbo].[KNIGHTS] ADD CONSTRAINT [IX_KNIGHTS] UNIQUE NONCLUSTERED  ([IDName]) WITH (FILLFACTOR=90) ON [PRIMARY]
GO
