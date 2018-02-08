USE [premierleague]
GO

/****** Object:  StoredProcedure [dbo].[SaveBets]    Script Date: 08/02/2018 15:08:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SaveBets]
@UserId INT,
@GameId INT,
@BetTypeId INT,
@BetCategory INT,
@TeamId INT,
@PlayerId INT
AS
	BEGIN
/*Checks duplicate bet for Winning team*/

		IF EXISTS (SELECT BetPlacedID FROM BetPlacedTable
		WHERE UserID=@UserId AND GameID=@GameId AND BetCategory=1)
			THROW 50000, 'You have already placed a bet for Man of the Match',1;

/*Checks duplicate bet for Man of the match*/
		IF EXISTS (SELECT BetPlacedID FROM BetPlacedTable
		WHERE UserID=@UserId AND GameID=@GameId AND BetCategory=4)
			THROW 50000, 'You have already placed a bet for Man of the Match',1;
	
/*Checks duplicate bet for Batting*/	
		IF EXISTS (SELECT BetPlacedID FROM BetPlacedTable
		WHERE UserID=@UserId AND GameID=@GameId AND PlayerID=@PlayerId AND BetCategory=2)
			THROW 50000, 'Cannot place similar Bet on same player',1;
/*Checks duplicate bet for Bowling*/
		IF EXISTS (SELECT BetPlacedID FROM BetPlacedTable
		WHERE UserID=@UserId AND GameID=@GameId AND PlayerID=@PlayerId AND BetCategory=3)
			THROW 50000, 'Cannot place similar Bet on same player',1;
	
		BEGIN TRANSACTION;		
			BEGIN TRY
				INSERT INTO BetPlacedTable(
							UserID,
							GameID,
							BetTypeID,
							BetCategory,
							TeamID,
							PlayerID,
							Date)
						VALUES(
							@UserId, 
							@GameId,
							@BetTypeId,
							@BetCategory,
							@TeamId,
							@PlayerId,
							GETDATE()
							)
				END TRY
				BEGIN CATCH
					ROLLBACK TRANSACTION
				END CATCH;
					IF @@TRANCOUNT>0
						COMMIT TRANSACTION;

	END

GO


