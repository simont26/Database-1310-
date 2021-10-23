SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

/****** Object:  Stored Procedure dbo.LOAD_USER_DATA    Script Date: 6/6/2006 6:03:33 PM ******/

/****** 개체: 저장 프로시저 dbo.LOAD_USER_DATA    스크립트 날짜: 2002-11-14 오전 11:18:04 ******/
-- modifed by Sungyong 2003.04.09
-- 2004.04.22 월간기여도(LoyaltyMonthly) 추가 arycoat

CREATE PROCEDURE [dbo].[LOAD_USER_DATA]
	@AccountID      char(21),
	@id          char(21),
	@nRet      smallint OUTPUT
AS
 -- inserted by samma 2003.07.10
DECLARE @charid1 char(21), @charid2 char(21), @charid3 char(21), @exp1 int, @exp2 int, @exp3 int, @char1 varchar(21), @char2 varchar(21), @char3 varchar(21), @Level tinyint
BEGIN
	SET @nRet = 0

	SELECT @charid1 = strCharID1, @charid2 = strCharID2, @charid3 = strCharID3 FROM ACCOUNT_CHAR WHERE strAccountID = @AccountID
    IF @id NOT IN(@charid1, @charid2, @charid3)
    BEGIN
		RETURN
	END
	SELECT Nation, Race, Class, HairColor, Rank, Title, [Level], [Exp], Loyalty, Face, City, Knights, Fame, Hp, Mp, Sp, Strong, Sta, Dex, Intel, Cha, Authority, Points, Gold, [Zone], Bind, PX, PZ, PY, dwTime, strSkill, strItem,strSerial, sQuestCount, strQuest, MannerPoint, LoyaltyMonthly FROM    USERDATA WHERE strUserId = @id
	SET @nRet = @@RowCount
END
GO
