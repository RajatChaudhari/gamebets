USE [premierleague]
GO

/****** Object:  Table [dbo].[BetTypeTable]    Script Date: 08/02/2018 15:11:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BetTypeTable](
	[BetTypeID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[BetDescription] [nvarchar](max) NULL,
	[BetCategory] [int] NULL,
	[BetValue] [int] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_BetTypeTable] PRIMARY KEY CLUSTERED 
(
	[BetTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO


