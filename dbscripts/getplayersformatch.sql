USE [premierleague]
GO

/****** Object:  StoredProcedure [dbo].[GetPlayersForMatch]    Script Date: 08/02/2018 15:08:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetPlayersForMatch]
@GameID INT
AS
	BEGIN
		Select pt.PlayerID, pt.PlayerName + ' - ' + tt.TeamName "Player",pt.TeamID from GameTable gt
		Inner Join PlayerTable pt on pt.TeamID=gt.Team1 OR pt.TeamID=gt.Team2
		Inner Join TeamTable tt on tt.TeamID=pt.TeamID
		where gt.GameID=@GameID AND pt.IsActive=1
		Group by pt.PlayerID, pt.TeamID, tt.TeamName, pt.PlayerName
	END
GO


