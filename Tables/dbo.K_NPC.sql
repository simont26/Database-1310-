CREATE TABLE [dbo].[K_NPC]
(
[sSid] [smallint] NULL,
[strName] [varchar] (30) COLLATE Latin1_General_CI_AS NULL,
[sPid] [smallint] NULL,
[sSize] [smallint] NULL,
[iWeapon1] [int] NULL,
[iWeapon2] [int] NULL,
[byGroup] [tinyint] NULL,
[byActType] [tinyint] NULL,
[byType] [tinyint] NULL,
[byFamily] [tinyint] NULL,
[byRank] [tinyint] NULL,
[byTitle] [tinyint] NULL,
[iSellingGroup] [int] NULL,
[sLevel] [smallint] NULL,
[iExp] [int] NULL,
[iLoyalty] [int] NULL,
[iHpPoint] [int] NULL,
[sMpPoint] [smallint] NULL,
[sAtk] [smallint] NULL,
[sAc] [smallint] NULL,
[sHitRate] [smallint] NULL,
[sEvadeRate] [smallint] NULL,
[sDamage] [smallint] NULL,
[sAttackDelay] [smallint] NULL,
[bySpeed1] [tinyint] NULL,
[bySpeed2] [tinyint] NULL,
[sStandtime] [smallint] NULL,
[iMagic1] [int] NULL,
[iMagic2] [int] NULL,
[iMagic3] [int] NULL,
[sFireR] [smallint] NULL,
[sColdR] [smallint] NULL,
[sLightningR] [smallint] NULL,
[sMagicR] [smallint] NULL,
[sDiseaseR] [smallint] NULL,
[sPoisonR] [smallint] NULL,
[sLightR] [smallint] NULL,
[sBulk] [smallint] NULL,
[byAttackRange] [tinyint] NULL,
[bySearchRange] [tinyint] NULL,
[byTracingRange] [tinyint] NULL,
[iMoney] [int] NULL,
[sItem] [smallint] NULL,
[byDirectAttack] [tinyint] NULL,
[byMagicAttack] [tinyint] NULL,
[byMoneyType] [tinyint] NULL
) ON [PRIMARY]
GO
