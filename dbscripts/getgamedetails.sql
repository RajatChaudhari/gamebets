USE [premierleague]
GO

/****** Object:  StoredProcedure [dbo].[GetGameDetails]    Script Date: 08/02/2018 15:08:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[GetGameDetails]
@GameID INT
AS
	BEGIN
		IF @GameID = null OR @GameID = 0
			BEGIN
			SELECT gt.Date, gt.GameID "GAME ID", gt.Team1 "TEAM 1 ID",gt.Team2 "TEAM 2 ID", tt1.TeamName "TEAM 1 NAME",tt2.TeamName "TEAM 2 NAME" FROM GameTable gt
			inner Join TeamTable tt1 on gt.Team1=tt1.TeamID
			inner JOin TeamTable tt2 on gt.Team2=tt2.TeamID
			--WHERE Date=CONVERT(date, GETDATE())
			END
		ELSE
			BEGIN
			SELECT gt.Date, gt.GameID "GAME ID", gt.Team1 "TEAM 1 ID",gt.Team2 "TEAM 2 ID", tt1.TeamName "TEAM 1 NAME",tt2.TeamName "TEAM 2 NAME" FROM GameTable gt
			inner Join TeamTable tt1 on gt.Team1=tt1.TeamID
			inner JOin TeamTable tt2 on gt.Team2=tt2.TeamID
			WHERE gt.GameID=@GameID
			END
	END


GO


