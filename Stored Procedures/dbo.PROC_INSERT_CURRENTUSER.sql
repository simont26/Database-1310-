SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS OFF
GO
CREATE PROCEDURE [dbo].[PROC_INSERT_CURRENTUSER]
	@AccountID 	varchar(21), 
	@CharID     varchar(21),
	@ServerNo 	int,
	@ServerIP   varchar(15),
	@ClientIP   varchar(15),
	@nRet smallint output 
AS
BEGIN
	INSERT INTO CURRENTUSER (nServerNo, strServerIP, strAccountID, strCharID, strClientIP)  VALUES(@ServerNo, @ServerIP, @AccountID, @CharID, @ClientIP )
	SET @nRet = 1
END


GO
