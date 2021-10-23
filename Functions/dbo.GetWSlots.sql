SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[GetWSlots] (@WareHouseData varchar(1600)) 
	RETURNS int 
AS 
	BEGIN
		DECLARE @x int, @slots int, @Num int
		SET @x = 1
		SET @slots = 0
		WHILE @x <= 1600
		BEGIN
			SET @Num = [dbo].GetNum(@WareHouseData, @x)
			IF @Num <> 0 AND @Num IS NOT NULL
				BEGIN 
					SET @slots = @slots + 1
				END
			SET @x = @x + 8
		END
		RETURN @slots
	END 
GO
