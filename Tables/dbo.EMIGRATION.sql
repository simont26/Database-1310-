CREATE TABLE [dbo].[EMIGRATION]
(
[strAccountID] [char] (21) COLLATE Korean_Wansung_CI_AS NOT NULL,
[strUserID] [char] (21) COLLATE Korean_Wansung_CI_AS NOT NULL,
[bKnight] [tinyint] NOT NULL CONSTRAINT [DF_EMIGRATION_bKnight] DEFAULT (0)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EMIGRATION] ADD CONSTRAINT [PK_EMIGRATION] PRIMARY KEY CLUSTERED  ([strUserID]) WITH (FILLFACTOR=90) ON [PRIMARY]
GO
