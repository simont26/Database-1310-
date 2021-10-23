CREATE TABLE [dbo].[FRIEND_LIST]
(
[strUserID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[strFriend1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[strFriend2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[strFriend3] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[strFriend4] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[strFriend5] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[strFriend6] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[strFriend7] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[strFriend8] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[strFriend9] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[strFriend10] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[strFriend11] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[strFriend12] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[strFriend13] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[strFriend14] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[strFriend15] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[strFriend16] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[strFriend17] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[strFriend18] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[strFriend19] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[strFriend20] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[strFriend21] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[strFriend22] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[strFriend23] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[strFriend24] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FRIEND_LIST] ADD CONSTRAINT [PK_FRIEND_LIST] PRIMARY KEY CLUSTERED  ([strUserID]) WITH (FILLFACTOR=90) ON [PRIMARY]
GO
