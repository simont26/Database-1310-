SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS OFF
GO
CREATE PROCEDURE [dbo].[PROC_UPDATE_CURRENTUSER]
	@strAccountID	varchar(21), 
	@ServerNo 		int,
	@strServerIP	varchar(15),
	@nRet1 smallint output,
	@nRet2 smallint output,
	@nRet3 smallint output 
AS
BEGIN
	UPDATE CURRENTUSER SET strServerIP = @strServerIP, nServerNo = @ServerNo WHERE strAccountID = @strAccountID
	SET @nRet1 = 1
	SET @nRet2 = 1
	SET @nRet3 = 1
END


GO
