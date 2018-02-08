USE [premierleague]
GO

/****** Object:  StoredProcedure [dbo].[GetBets]    Script Date: 08/02/2018 15:07:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetBets]
AS
	BEGIN
		SELECT BetTypeId, BetDescription, BetCategory, BetValue FROM BetTypeTable
	END

GO


