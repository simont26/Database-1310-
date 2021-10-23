SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[INSERT_ITEM]


-- EXEC INSERT_ITEM 'yourchar', 2, dwid here, stacksize

	@playerID varchar(30),
	@location tinyint,
	@Num int,
	@StackSize int
AS
	DECLARE @x int, @dur int, @CNum varbinary(4), @cdur varchar(2), @cstack varchar(2), @postemexist int, @strItem varchar(400), @WareHouseData varchar(3200), @pos int
	SELECT @dur = Duration FROM ITEM WHERE Num = @Num

	BEGIN TRAN
		IF @Num <> 0
			BEGIN
				IF @StackSize > 1
				BEGIN
					SET @dur = 1
				END

				SET @CNum = substring(cast(@Num as varbinary(4)), 4, 1) + substring(cast(@Num as varbinary(4)), 3, 1) + substring(cast(@Num as varbinary(4)), 2, 1) + substring(cast(@Num as varbinary(4)), 1, 1)
				SET @Cdur = cast(substring(cast(@dur as varbinary(2)), 2, 1)+substring(cast(@dur as varbinary(2)), 1, 1) as varchar(2))
				SET @Cstack = cast(substring(cast(@StackSize as varbinary(2)), 2, 1)+substring(cast(@StackSize as varbinary(2)), 1, 1) as varchar(2))

				IF @Num <> 0
					BEGIN
						IF @location = 1
							BEGIN
								SELECT @strItem = strItem FROM USERDATA WHERE strUserId = @playerID
								SET @x = 1								WHILE @x <= 400									BEGIN										IF [dbo].GetNum(@strItem, @x) = 0										BEGIN 											SET @pos = @x											SET @x = 400										END										SET @x = @x + 8									END																UPDATE USERDATA SET strItem = cast(substring(strItem, 1, @pos-1) + cast(cast(@CNum as varchar(4)) + @Cdur + @Cstack as varchar(8)) + substring(strItem, @pos + 8, 401 - @pos) as binary(400)) WHERE strUserID = @playerID
							END
						ELSE
							BEGIN
								SELECT @WarehouseData = WareHouseData FROM WAREHOUSE WHERE strAccountID = @playerID
								SET @x = 1								WHILE @x <= 3200									BEGIN										IF [dbo].GetWNum(@WarehouseData, @x) = 0										BEGIN 											SET @pos = @x											SET @x = 3200										END										SET @x = @x + 8									END								UPDATE WAREHOUSE SET WareHouseData = cast(substring(WareHouseData, 1, @pos - 1) + cast(cast(@CNum as varchar(4)) + @Cdur + @Cstack as varchar(8)) + substring(WareHouseData, @pos + 8, 3208 - @pos) as binary(3200)) WHERE strAccountID = @playerID
							END
					END
			END					
	COMMIT TRAN
	RETURN

GO
