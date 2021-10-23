SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS OFF
GO

/****** Object:  Stored Procedure dbo.INSERT_HACKTOOL_USER    Script Date: 6/6/2006 6:03:33 PM ******/

-- scripted by sungyong 2003.11.18

CREATE PROCEDURE [dbo].[INSERT_HACKTOOL_USER]
@AccountID 	char(21), 
@CharID		char(21),
@HackToolName 	char(512)

AS

INSERT INTO HACKTOOL_USERLOG (strAccountID, strCharID, strHackToolName, UserID) 
VALUES	                         (@AccountID, @CharID, @HackToolName, @CharID)

GO
