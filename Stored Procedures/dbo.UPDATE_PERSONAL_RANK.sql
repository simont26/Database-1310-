SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
/****** Object:  Stored Procedure dbo.UPDATE_PERSONAL_RANK    Script Date: 6/6/2006 6:03:32 PM ******/

-- Create
-- 2004. 4. 30 arycoat
-- Modify by Stereo
-- 2008.05.16

CREATE PROCEDURE [dbo].[UPDATE_PERSONAL_RANK]

AS

IF exists (select * from sysobjects where id = object_id(N'[dbo].[KPERSONAL_RANK]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[KPERSONAL_RANK]

IF exists (select * from sysobjects where id = object_id(N'[dbo].[EPERSONAL_RANK]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[EPERSONAL_RANK]

CREATE TABLE [KPERSONAL_RANK]
(
    [nRank] [int] IDENTITY (1, 1) NOT NULL ,
    [strUserID] char(21) NOT NULL,
    [LoyaltyMonthly] int NOT NULL,
    [Loyalty] int NOT NULL,
    [nRankUP] int NOT NULL
) ON [PRIMARY]

CREATE TABLE [EPERSONAL_RANK]
(
    [nRank] [int] IDENTITY (1, 1) NOT NULL ,
    [strUserID] char(21) NOT NULL,
    [LoyaltyMonthly] int NOT NULL,
    [Loyalty] int NOT NULL,
    [nRankUP] int NOT NULL
) ON [PRIMARY]

INSERT  KPERSONAL_RANK
    SELECT TOP 100 strUserID, LoyaltyMonthly, Loyalty, 101
    FROM USERDATA
    WHERE Nation = 1
    ORDER BY LoyaltyMonthly desc, Loyalty desc

INSERT  EPERSONAL_RANK
    SELECT TOP 100 strUserID, LoyaltyMonthly, Loyalty, 101
    FROM USERDATA
    WHERE Nation = 2
    ORDER BY LoyaltyMonthly desc, Loyalty desc

UPDATE KPERSONAL_RANK
    SET nRankUP = R.nRank - KPERSONAL_RANK.nRank
    FROM USER_PERSONAL_RANK R
    WHERE R.strKarusUserID = KPERSONAL_RANK.strUserID

UPDATE EPERSONAL_RANK
    SET nRankUP = R.nRank - EPERSONAL_RANK.nRank
    FROM USER_PERSONAL_RANK R
    WHERE R.strElmoUserID = EPERSONAL_RANK.strUserID

DECLARE @tUpdateDate smalldatetime
SET @tUpdateDate =GETDATE()

INSERT USER_PERSONAL_RANK
    SELECT E.nRank, 1, E.nRankUP, E.strUserID, E.LoyaltyMonthly, 1, K.nRankUP, K.strUserID, K.LoyaltyMonthly, 1, 1, @tUpdateDate
    FROM EPERSONAL_RANK E, KPERSONAL_RANK K
    WHERE E.nRank = K.nRank
    ORDER BY E.nRank

IF EXISTS (SELECT COUNT(*) FROM USER_PERSONAL_RANK WHERE nRank = 1)
UPDATE USER_PERSONAL_RANK SET strPosition = 'Gold Knight', nElmoCheck = 1000000, nKarusCheck = 1000000, nSalary = 100000000  WHERE nRank = 1

IF EXISTS (SELECT COUNT(*) FROM USER_PERSONAL_RANK WHERE nRank>= 2 AND nRank<= 4)
UPDATE USER_PERSONAL_RANK SET strPosition = 'Silver Knight', nElmoCheck = 800000, nKarusCheck = 800000, nSalary = 70000000  WHERE nRank>= 2 AND nRank<= 4

IF EXISTS (SELECT COUNT(*) FROM USER_PERSONAL_RANK WHERE nRank>= 5 AND nRank<= 9 )
UPDATE USER_PERSONAL_RANK SET strPosition = 'Mirage Knight', nElmoCheck = 600000, nKarusCheck = 600000, nSalary = 50000000  WHERE nRank>= 5 AND nRank<= 9 

IF EXISTS (SELECT COUNT(*) FROM USER_PERSONAL_RANK WHERE nRank>= 10 AND nRank<= 25)
UPDATE USER_PERSONAL_RANK SET strPosition = 'Shadow Knight', nElmoCheck = 400000, nKarusCheck = 400000, nSalary = 30000000  WHERE nRank>= 10 AND nRank<= 25

IF EXISTS (SELECT COUNT(*) FROM USER_PERSONAL_RANK WHERE nRank>= 26 AND nRank<= 50)
UPDATE USER_PERSONAL_RANK SET strPosition = 'Mist Knight', nElmoCheck = 200000, nKarusCheck = 200000, nSalary = 20000000  WHERE nRank>= 26 AND nRank<= 50

IF EXISTS (SELECT COUNT(*) FROM USER_PERSONAL_RANK WHERE nRank>= 51)
UPDATE USER_PERSONAL_RANK SET strPosition = 'Training Knight', nElmoCheck = 50000, nKarusCheck = 50000, nSalary = 5000000  WHERE nRank>= 51

BEGIN TRAN
DELETE FROM USER_PERSONAL_RANK WHERE UpdateDate < @tUpdateDate
COMMIT TRAN

IF exists (select * from sysobjects where id = object_id(N'[dbo].[KPERSONAL_RANK]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[KPERSONAL_RANK]

IF exists (select * from sysobjects where id = object_id(N'[dbo].[EPERSONAL_RANK]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[EPERSONAL_RANK]

GO
