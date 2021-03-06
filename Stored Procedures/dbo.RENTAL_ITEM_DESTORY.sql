SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO

/****** Object:  Stored Procedure dbo.RENTAL_ITEM_DESTORY    Script Date: 6/6/2006 6:03:33 PM ******/


-- 2004.03.26. sungyong

CREATE PROCEDURE [dbo].[RENTAL_ITEM_DESTORY]
@AccountID	char(21),	
@CharID	char(21),		
@nItemNumber   int,
@nRentalIndex   int,
@nDurability	smallint,
@nRet		smallint OUTPUT

AS

DELETE FROM USER_RENTAL_ITEM WHERE strAccountID = @AccountID and nItemIndex = @nItemNumber

EXEC RENTAL_ITEM_DURABILITY_UPDATE @nRentalIndex, @nDurability

SET @nRet =  1


GO
