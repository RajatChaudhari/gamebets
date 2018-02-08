USE [premierleague]
GO

/****** Object:  Table [dbo].[GameTable]    Script Date: 08/02/2018 15:11:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[GameTable](
	[GameID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Team1] [numeric](18, 0) NOT NULL,
	[Team2] [numeric](18, 0) NOT NULL,
	[Date] [date] NOT NULL,
	[Time] [time](7) NULL,
	[TeamWon] [numeric](18, 0) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_GameTable] PRIMARY KEY CLUSTERED 
(
	[GameID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


