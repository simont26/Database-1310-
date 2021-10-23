SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[GetWNum] (@WarehouseData varchar(1600), @i int) 
	RETURNS int 
AS 
	BEGIN
		RETURN cast(cast(substring(cast(substring(@WarehouseData, @i,4) as varbinary(4)), 4, 1)+substring(cast(substring(@WarehouseData, @i,4) as varbinary(4)), 3, 1)+substring(cast(substring(@WarehouseData, @i,4) as varbinary(4)), 2, 1)+substring(cast(substring(@WarehouseData, @i,4) as varbinary(4)), 1, 1) as varbinary(4)) as int) 
	END 
GO
