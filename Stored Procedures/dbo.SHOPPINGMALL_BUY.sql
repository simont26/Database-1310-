SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS OFF
GO

/****** Object:  Stored Procedure dbo.SHOPPINGMALL_BUY    Script Date: 6/6/2006 6:03:32 PM ******/


-- Created by sungyong 2003.06.05

CREATE PROCEDURE [dbo].[SHOPPINGMALL_BUY]
@nRet		smallint OUTPUT, 
@strCharID 	char(21), 
@strAccountID	char(21), 
@nItenID	int,
@sCount	smallint

AS

BEGIN TRAN	

	INSERT INTO WEB_ITEMMALL  (strAccountID, strCharID, ServerNo, ItemID, ItemCount  ) VALUES ( @strAccountID, @strCharID, 0, @nItenID, @sCount )
		
	IF @@ERROR <> 0
	BEGIN	 
		ROLLBACK TRAN 
		SET @nRet =  -1
		RETURN
	END

COMMIT TRAN
SET @nRet =  1



GO
