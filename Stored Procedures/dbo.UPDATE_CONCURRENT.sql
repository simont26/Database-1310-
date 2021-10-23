SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[UPDATE_CONCURRENT]
	@unk1 int,
	@unk2 int,
	@unk3 int,
	@unk4 int,
	@unk5 int,
	@unk6 int,
	@unk7 int,
	@unk8 int,
	@unk9 int,
	@unk10 int,
	@unk11 int
AS
DECLARE @count int --{call UPDATE_CONCURRENT ( %d,%d,%d,%d, %d,%d,%d,%d,%d, %d,%d)}
BEGIN
	SELECT @count = COUNT(*) FROM CONCURRENT WHERE serverid = @unk3
	IF @count = 0
	BEGIN
		INSERT INTO CONCURRENT VALUES(@unk3, @unk4, @unk5, @unk6, NULL)
	END
	ELSE
	BEGIN
		UPDATE CONCURRENT SET zone1_count = @unk4, zone2_count = @unk5, zone3_count = @unk6 WHERE serverid = @unk3
	END
END
GO
