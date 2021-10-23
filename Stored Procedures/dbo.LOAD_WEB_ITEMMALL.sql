SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO

/****** Object:  Stored Procedure dbo.LOAD_WEB_ITEMMALL    Script Date: 6/6/2006 6:03:32 PM ******/



-- Created 2003.06.27 by Samma

CREATE PROCEDURE [dbo].[LOAD_WEB_ITEMMALL]
@strCharID	char(21)
AS
BEGIN
	SELECT strAccountID, ItemID, ItemCount, BuyTime FROM WEB_ITEMMALL WHERE strCharID = @strCharID
	DELETE FROM WEB_ITEMMALL WHERE strCharID = @strCharID
END


GO
