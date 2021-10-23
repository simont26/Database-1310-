SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[GetNum] (@strItem varchar(400), @i int) 
	RETURNS int 
AS 
	BEGIN
		DECLARE @Num int 
		RETURN cast(cast(substring(cast(substring(@stritem, @i,4) as varbinary(4)), 4, 1)+substring(cast(substring(@stritem, @i,4) as varbinary(4)), 3, 1)+substring(cast(substring(@stritem, @i,4) as varbinary(4)), 2, 1)+substring(cast(substring(@stritem, @i,4) as varbinary(4)), 1, 1) as varbinary(4)) as int) 
	END 
GO
