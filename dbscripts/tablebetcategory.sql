USE [premierleague]
GO

/****** Object:  Table [dbo].[BetCategoryTable]    Script Date: 08/02/2018 15:09:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BetCategoryTable](
	[BetCatID] [int] NOT NULL,
	[BetCategory] [nchar](10) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_BetCategoryTable] PRIMARY KEY CLUSTERED 
(
	[BetCatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


