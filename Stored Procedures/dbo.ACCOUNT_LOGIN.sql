SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[ACCOUNT_LOGIN]
	@AccountID	varchar(21),
	@Password	varchar(32),
	@nRet		smallint	OUTPUT
AS
DECLARE @pwd varchar(32), @Authority int, @count int, @Nation int, @CharNum int
BEGIN

	-- <RETRIEVE ACCOUNT DATA>
	SELECT @pwd = strPasswd, @Authority = strAuthority FROM TB_USER WHERE strAccountID = @AccountID
	-- </RETRIEVE ACCOUNT DATA>

	-- <ACCOUNT DOES NOT EXIST>
	IF @@ROWCOUNT = 0 
	BEGIN
		SET @nRet = 0
		RETURN
	END
	-- </ACCOUNT DOES NOT EXIST>

	-- <BANNED>
	IF @Authority = 255
	BEGIN
		SET @nRet = 0
		RETURN
	END
	-- </BANNED>
	
	-- <EMPTY PASSWORD>
	ELSE IF @pwd IS NULL
	BEGIN
		SET @nRet = 0
		RETURN
	END
	-- </EMPTY PASSWORD>

	-- <INVALID PASSWORD>	
	ELSE IF @pwd <>  SUBSTRING(master.dbo.fn_varbintohexstr(HashBytes('MD5', @Password)), 3, 32)
	BEGIN
		SET @nRet = 0
		RETURN
	END
	-- </INVALID PASSWORD>

	-- <RETRIEVE NATION AND CHARACTER COUNT>
	SELECT @Nation = bNation, @CharNum = bCharNum FROM ACCOUNT_CHAR WHERE strAccountID = @AccountID
	-- </RETRIEVE NATION AND CHARACTER COUNT>

	-- <NO NATION SELECTED>
	IF @@ROWCOUNT = 0 OR @CharNum = 0
	BEGIN
		SET @nRet = 1
	END
	-- </NO NATION SELECTED>
	ELSE
	-- <NATION ALREADY SELECTED>
	BEGIN
		SET @nRet = @Nation + 1
	END
	-- </NATION ALREADY SELECTED>
END
GO
