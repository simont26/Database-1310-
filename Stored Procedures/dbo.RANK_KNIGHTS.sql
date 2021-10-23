SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS OFF
GO

/****** Object:  Stored Procedure dbo.RANK_KNIGHTS    Script Date: 6/6/2006 6:03:32 PM ******/


/****** 개체: 저장 프로시저 dbo.RANK_KNIGHTS    스크립트 날짜: 2002-11-14 오전 11:18:04 ******/
-- Created by sungyong 2002.10.14

CREATE PROCEDURE [dbo].[RANK_KNIGHTS]
AS

UPDATE KNIGHTS SET Points=0

SET NOCOUNT ON
DECLARE @KnightsIndex smallint
DECLARE @SumLoyalty int
DECLARE job1 CURSOR FOR

SELECT IDNum FROM KNIGHTS

OPEN job1
FETCH NEXT FROM job1
INTO @KnightsIndex
WHILE @@fetch_status = 0 
BEGIN

	SET @SumLoyalty = 0
	SELECT @SumLoyalty=Sum(Loyalty) FROM USERDATA WHERE Knights = @Knightsindex and City <> 255 
	IF @SumLoyalty <> 0
		UPDATE KNIGHTS SET Points = @SumLoyalty WHERE IDNum = @knightsindex

	FETCH NEXT FROM job1
	INTO @KnightsIndex
END
CLOSE job1
DEALLOCATE job1
SET NOCOUNT OFF

-- ranking 
UPDATE KNIGHTS SET Ranking=0 WHERE Ranking>0

-- ranking procedure call
EXEC KNIGHTS_RATING_UPDATE 

DECLARE @Knights_1 smallint
DECLARE @Knights_2 smallint
DECLARE @Knights_3 smallint
DECLARE @Knights_4 smallint
DECLARE @Knights_5 smallint

SELECT @Knights_1 = shIndex FROM KNIGHTS_RATING WHERE nRank=1
SELECT @Knights_2 = shIndex FROM KNIGHTS_RATING WHERE nRank=2
SELECT @Knights_3 = shIndex FROM KNIGHTS_RATING WHERE nRank=3
SELECT @Knights_4 = shIndex FROM KNIGHTS_RATING WHERE nRank=4
SELECT @Knights_5 = shIndex FROM KNIGHTS_RATING WHERE nRank=5

UPDATE KNIGHTS SET Ranking=1 WHERE IDNum=@Knights_1
UPDATE KNIGHTS SET Ranking=2 WHERE IDNum=@Knights_2
UPDATE KNIGHTS SET Ranking=3 WHERE IDNum=@Knights_3
UPDATE KNIGHTS SET Ranking=4 WHERE IDNum=@Knights_4
UPDATE KNIGHTS SET Ranking=5 WHERE IDNum=@Knights_5

GO
