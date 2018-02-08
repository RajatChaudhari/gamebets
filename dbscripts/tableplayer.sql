USE [premierleague]
GO

/****** Object:  Table [dbo].[PlayerTable]    Script Date: 08/02/2018 15:11:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PlayerTable](
	[PlayerID] [int] IDENTITY(1,1) NOT NULL,
	[PlayerName] [nvarchar](max) NULL,
	[PlayerType] [nvarchar](50) NULL,
	[TeamID] [numeric](18, 0) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Player_Table] PRIMARY KEY CLUSTERED 
(
	[PlayerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO


