SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

/****** Object:  Stored Procedure dbo.KING_ELECTION_PROC    Script Date: 6/6/2006 6:03:33 PM ******/

-- 2004.07.07. sungyong

CREATE PROCEDURE [dbo].[KING_ELECTION_PROC]
@strAccountID	char(21),		--     투표한 사람의 계정
@strCharID	char(21),		--     투표한 사람의 아이디
@byNation	tinyint,
@strCandidacyID	char(21),		--     뽑은 사람 아이디
@nRet		smallint OUTPUT

AS

declare @nRow smallint

SELECT @nRow = count(strAccountID) FROM KING_BALLOT_BOX WHERE  strAccountID = @strAccountID
IF @nRow > 0		-- 투표를 한 사람
BEGIN
	SET @nRet = -3
	RETURN
END

INSERT INTO KING_BALLOT_BOX (strAccountID, strCharID, byNation, strCandidacyID )
	VALUES ( @strAccountID, @strCharID, @byNation, @strCandidacyID )

UPDATE KING_ELECTION_LIST SET nMoney = nMoney+1 
WHERE  byType = 4 and strName = @strCandidacyID

SET @nRet =  1
RETURN


GO
