USE [premierleague]
GO

/****** Object:  Table [dbo].[StatsTable]    Script Date: 08/02/2018 15:11:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[StatsTable](
	[ResultID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[GameID] [numeric](18, 0) NOT NULL,
	[TeamID] [numeric](18, 0) NOT NULL,
	[PlayerID] [int] NULL,
	[Runs] [int] NULL,
	[Wickets] [int] NULL,
	[Sixes] [int] NULL,
	[Fours] [int] NULL,
	[NotOut] [bit] NULL,
	[BallsFaced] [int] NULL,
	[MoM] [bit] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_StatsTable] PRIMARY KEY CLUSTERED 
(
	[ResultID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


