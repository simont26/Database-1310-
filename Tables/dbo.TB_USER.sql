CREATE TABLE [dbo].[TB_USER]
(
[strAccountID] [varchar] (21) COLLATE Latin1_General_CI_AI NOT NULL,
[strPasswd] [varchar] (32) COLLATE Latin1_General_CI_AS NULL,
[strSocNo] [char] (20) COLLATE Latin1_General_CI_AS NULL,
[iDays] [int] NOT NULL CONSTRAINT [DF_TB_USER_iDays] DEFAULT ((6)),
[strAuthority] [tinyint] NOT NULL CONSTRAINT [DF_TB_USER_strAuthority] DEFAULT ((1)),
[PremiumExpire] [datetime] NULL CONSTRAINT [DF_TB_USER_PremiumExpire_1] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TB_USER] ADD CONSTRAINT [PK_TB_USER] PRIMARY KEY CLUSTERED  ([strAccountID]) ON [PRIMARY]
GO
