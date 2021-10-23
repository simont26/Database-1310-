SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO

/****** Object:  Stored Procedure dbo.LOAD_KNIGHTS_MEMBERS    Script Date: 6/6/2006 6:03:32 PM ******/

-- Scripted by Sungyong
-- 2002.09.26

CREATE PROCEDURE [dbo].[LOAD_KNIGHTS_MEMBERS]
@knightsindex	smallint
AS

SELECT strUserId, Fame, [Level], Class FROM USERDATA WHERE Knights = @knightsindex
GO
