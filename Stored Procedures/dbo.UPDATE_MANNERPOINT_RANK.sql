SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
/****** Object:  Stored Procedure dbo.UPDATE_MANNERPOINT_RANK    Script Date: 6/6/2006 6:03:32 PM ******/

-- Create
-- 2004. 4. 30 arycoat
-- Modify by Stereo
-- 2008.05.16

CREATE PROCEDURE [dbo].[UPDATE_MANNERPOINT_RANK]

AS

IF exists (select * from sysobjects where id = object_id(N'[dbo].[KMANNER_RANK]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[KMANNER_RANK]

IF exists (select * from sysobjects where id = object_id(N'[dbo].[EMANNER_RANK]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[EMANNER_RANK]

CREATE TABLE [KMANNER_RANK]
(
    [nRank] smallint IDENTITY (1, 1) NOT NULL ,
    [strUserID] char(21) NOT NULL,
    [MannerPoint] int NOT NULL,
    [Loyalty] int NOT NULL,
    [nRankUP] int NOT NULL
) ON [PRIMARY]

CREATE TABLE [EMANNER_RANK]
(
    [nRank] smallint IDENTITY (1, 1) NOT NULL ,
    [strUserID] char(21) NOT NULL,
    [MannerPoint] int NOT NULL,
    [Loyalty] int NOT NULL,
    [nRankUP] int NOT NULL
) ON [PRIMARY]

INSERT  KMANNER_RANK
    SELECT TOP 100 strUserID, MannerPoint, Loyalty, 101
    FROM USERDATA
    WHERE Nation = 1
    ORDER BY MannerPoint DESC, Loyalty DESC

INSERT  EMANNER_RANK
    SELECT TOP 100 strUserID, MannerPoint, Loyalty, 101
    FROM USERDATA
    WHERE Nation = 2
    ORDER BY MannerPoint DESC, Loyalty DESC

UPDATE KMANNER_RANK
    SET nRankUP = R.nRank - KMANNER_RANK.nRank
    FROM USER_MANNERPOINT_RANK R
    WHERE R.strKarusUserID = KMANNER_RANK.strUserID

UPDATE EMANNER_RANK
    SET nRankUP = R.nRank - EMANNER_RANK.nRank
    FROM USER_MANNERPOINT_RANK R
    WHERE R.strElmoUserID = EMANNER_RANK.strUserID

DECLARE @tUpdateDate smalldatetime
SET @tUpdateDate =GETDATE()

INSERT USER_MANNERPOINT_RANK
    SELECT E.nRank, E.nRankUP, E.strUserID, E.MannerPoint, K.nRankUP, K.strUserID, K.MannerPoint, @tUpdateDate
    FROM EMANNER_RANK E, KMANNER_RANK K
    WHERE E.nRank = K.nRank
    ORDER BY E.nRank

BEGIN TRAN
DELETE FROM USER_MANNERPOINT_RANK WHERE UpdateDate < @tUpdateDate
COMMIT TRAN

IF exists (select * from sysobjects where id = object_id(N'[dbo].[KMANNER_RANK]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[KMANNER_RANK]

IF exists (select * from sysobjects where id = object_id(N'[dbo].[EMANNER_RANK]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[EMANNER_RANK]

GO
