SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROCEDURE [dbo].[LOAD_PREMIUM_SERVICE_USER] 
	@AccountID varchar(21),
	@type int output, 
	@days int output 
AS 
BEGIN 
	-- Declare the variable @PremiumExpire (the date when the premium service expires)
	DECLARE @PremiumExpire datetime

	-- Retrieve the date the premium service expires
	SELECT @PremiumExpire = PremiumExpire FROM TB_USER WHERE strAccountID = @AccountID
	-- Set the number of days left to
	-- the day difference between the current time 
	-- and the date the premium service expires
	SET @days = DateDiff(dd, getDate(), @PremiumExpire)

	-- Set @type to 1 as its a required output variable
	-- and there appear to be no ways to have silver/gold etc
	SET @type = 1

	-- If the days are 0
	-- or there's some error
	-- or the day count for whatever reason is empty/null
	IF @days <= 0 or @@ERROR <> 0 or @days is null
	BEGIN
		-- House cleaning:
		-- Setting the two below variables to 0 just in case.
		SET @type = 0
		SET @days = 0
	END
	RETURN 
END 
GO
