SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[GetWUID] (@strSerial varchar(1600), @i int)
	RETURNS bigint 
AS 
	BEGIN 
		RETURN cast(cast(substring(@strSerial, @i, 8) as varbinary) as bigint) 
	END 
GO
