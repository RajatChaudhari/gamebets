USE [premierleague]
GO

/****** Object:  Table [dbo].[TeamTable]    Script Date: 08/02/2018 15:11:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TeamTable](
	[TeamID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[TeamName] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[Sport] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_TeamTable] PRIMARY KEY CLUSTERED 
(
	[TeamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO


