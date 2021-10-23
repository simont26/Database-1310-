SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS OFF
GO

/****** Object:  Stored Procedure dbo.LOAD_ACCOUNT_CHARID    Script Date: 6/6/2006 6:03:33 PM ******/



-- Scripted by Samma
-- 2002.01.18

CREATE PROCEDURE [dbo].[LOAD_ACCOUNT_CHARID]
@Accountid 	char(21),
@nRet int OUTPUT
AS

SELECT strCharID1, strCharID2, strCharID3, strCharID4, strCharID5  FROM ACCOUNT_CHAR WHERE strAccountID = @Accountid
SET @nRet = @@ROWCOUNT
GO
