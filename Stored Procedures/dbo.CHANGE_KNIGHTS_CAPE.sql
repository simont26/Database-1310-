SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS OFF
GO



-- Created by Zenocide 2008.01.05 -- Change Capes and Auto Update to Knights --

CREATE PROCEDURE [dbo].[CHANGE_KNIGHTS_CAPE]
@KnightsIndex	smallint,
@CapeIndex	smallint

AS

UPDATE KNIGHTS SET sCape  = @CapeIndex WHERE IDNum = @KnightsIndex
UPDATE KNIGHTS SET Domination = '1' WHERE IDNum = @KnightsIndex

GO
