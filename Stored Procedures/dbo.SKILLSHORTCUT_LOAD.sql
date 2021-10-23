SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

/****** Object:  Stored Procedure dbo.SKILLSHORTCUT_LOAD    Script Date: 6/6/2006 6:03:32 PM ******/



CREATE proc [dbo].[SKILLSHORTCUT_LOAD]

@strCharID varchar(21)

as

select nCount, strSkillData from dbo.USERDATA_SKILLSHORTCUT where strCharID = @strCharID





GO
