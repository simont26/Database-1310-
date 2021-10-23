SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[GetUID] (@strSerial varchar(400), @i int)
	RETURNS bigint 
AS 
	BEGIN 
		RETURN cast(cast(substring(@strSerial, @i, 8) as varbinary) as bigint) 
	END 
GO
