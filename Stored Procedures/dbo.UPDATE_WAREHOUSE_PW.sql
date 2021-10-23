SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[UPDATE_WAREHOUSE_PW]
	@strAccountID varchar(21),
	@strWarehousePw varchar(20),
	@unk0 int,
	@unk1 int,
	@strWarehouseData varchar(1600) OUTPUT,
	@strSerial varchar(1600) OUTPUT
AS
BEGIN
	UPDATE WAREHOUSE SET strWarehousePw = @strWarehousePw WHERE strAccountID = @strAccountID
	SELECT @strWarehouseData = WareHouseData, @strSerial = strSerial FROM WAREHOUSE WHERE strAccountID = @strAccountID
END
GO
