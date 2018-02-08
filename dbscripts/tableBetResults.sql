USE [premierleague]
GO

/****** Object:  Table [dbo].[BetResultsTable]    Script Date: 08/02/2018 15:10:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BetResultsTable](
	[BetResultsID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[BetPlacedID] [numeric](18, 0) NULL,
	[Points] [int] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_BetResultsID] PRIMARY KEY CLUSTERED 
(
	[BetResultsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


