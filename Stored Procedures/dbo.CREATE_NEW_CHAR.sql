SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO

/****** Object:  Stored Procedure dbo.CREATE_NEW_CHAR    Script Date: 6/6/2006 6:03:33 PM ******/


/****** 개체: 저장 프로시저 dbo.CREATE_NEW_CHAR    스크립트 날짜: 2002-11-14 오전 11:18:03 ******/


-- scripted by samma
-- 2002.01.17
-- 2003.02.06 sungyong 

CREATE PROCEDURE [dbo].[CREATE_NEW_CHAR]

@nRet		smallint OUTPUT, 
@AccountID 	char(21), 
@index 		tinyint,
@CharID	char(21),
@Race 		tinyint, 
@Class 	smallint, 
@Hair 		tinyint,
@Face 		tinyint, 
@Str 		tinyint, 
@Sta 		tinyint, 
@Dex 		tinyint,
@Intel 		tinyint, 
@Cha 		tinyint

AS

DECLARE @Row tinyint, @Nation tinyint, @Zone tinyint, @PosX int, @PosZ int
	SET @Row = 0	SET @Nation = 0  SET @Zone = 0  SET @PosX = 0 SET @PosZ = 0

	SELECT @Nation = bNation, @Row = bCharNum FROM ACCOUNT_CHAR WHERE strAccountID = @AccountID
	
	IF @Row >= 5	SET @nRet =  1
	
	IF @Nation = 1 AND @Race > 10	SET @nRet = 2
	ELSE IF @Nation = 2 AND @Race < 10	SET @nRet = 2
	ELSE IF @Nation <>1 AND @Nation <> 2	SET @nRet = 2

	IF @nRet > 0
		RETURN
	
	SELECT @Row = COUNT(*) FROM USERDATA WHERE strUserId = @CharID
	IF @Row > 0 
	BEGIN
		SET @nRet =  3
		RETURN
	END

	--SET @Zone = @Nation
	SET @Zone=21
	SELECT @PosX = InitX, @PosZ = InitZ  FROM ZONE_INFO WHERE ZoneNo = @Zone
	

BEGIN TRAN	
	IF @index = 0
		UPDATE ACCOUNT_CHAR SET strCharID1 = @CharID, bCharNum = bCharNum + 1 WHERE strAccountID = @AccountID
	ELSE IF @index = 1
		UPDATE ACCOUNT_CHAR SET strCharID2 = @CharID, bCharNum = bCharNum + 1 WHERE strAccountID = @AccountID
	ELSE IF @index = 2
		UPDATE ACCOUNT_CHAR SET strCharID3 = @CharID, bCharNum = bCharNum + 1 WHERE strAccountID = @AccountID
	ELSE IF @index = 3
		UPDATE ACCOUNT_CHAR SET strCharID4 = @CharID, bCharNum = bCharNum + 1 WHERE strAccountID = @AccountID
	ELSE IF @index = 4
		UPDATE ACCOUNT_CHAR SET strCharID5 = @CharID, bCharNum = bCharNum + 1 WHERE strAccountID = @AccountID
	

	INSERT INTO USERDATA (strUserId, Nation, Race, Class, HairColor, Face, Strong, Sta, Dex, Intel, Cha, Zone, PX, PZ ) 
	VALUES	 (@CharID, @Nation, @Race, @Class, @Hair, @Face, @Str, @Sta, @Dex, @Intel, @Cha, @Zone, @PosX, @PosZ )
	
	
	IF @@ERROR <> 0
	BEGIN	 
		ROLLBACK TRAN 
		SET @nRet =  4
		RETURN
	END
	
COMMIT TRAN
SET @nRet =  0

GO
