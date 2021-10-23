SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[KING_INSERT_PRIZE_EVENT]
@byType tinyint,
@byNation tinyint,
@nAmount int,
@strUserID char(21)
AS
DECLARE @nType tinyint
IF @byType = 3
BEGIN
SET @nType = 5
END 
ELSE IF @nType = 4
BEGIN
SET @nType = 6
END

UPDATE KING_SYSTEM SET nNationalTreasury = nNationalTreasury - @nAmount WHERE byNation = @byNation
GO
