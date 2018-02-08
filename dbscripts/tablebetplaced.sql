USE [premierleague]
GO

/****** Object:  Table [dbo].[BetPlacedTable]    Script Date: 08/02/2018 15:10:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BetPlacedTable](
	[BetPlacedID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[UserID] [numeric](18, 0) NOT NULL,
	[GameID] [numeric](18, 0) NOT NULL,
	[BetTypeID] [numeric](18, 0) NOT NULL,
	[BetCategory] [int] NULL,
	[TeamID] [numeric](18, 0) NULL,
	[PlayerID] [int] NULL,
	[Date] [datetime] NOT NULL,
	[Active] [bit] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_BetPlacedTable] PRIMARY KEY CLUSTERED 
(
	[BetPlacedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


