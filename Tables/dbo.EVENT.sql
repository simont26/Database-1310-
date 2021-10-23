CREATE TABLE [dbo].[EVENT]
(
[ZoneNum] [tinyint] NOT NULL,
[EventNum] [smallint] NOT NULL,
[Type] [tinyint] NOT NULL,
[Cond1] [char] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Cond2] [char] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Cond3] [char] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Cond4] [char] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Cond5] [char] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Exec1] [char] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Exec2] [char] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Exec3] [char] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Exec4] [char] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Exec5] [char] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Discription] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
