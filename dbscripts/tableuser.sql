USE [premierleague]
GO

/****** Object:  Table [dbo].[UserTable]    Script Date: 08/02/2018 15:12:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[UserTable](
	[UserID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[MastekID] [varchar](50) NOT NULL,
	[Employee_ID] [numeric](18, 0) NULL,
	[User_Name] [nvarchar](max) NULL,
	[Project] [varchar](50) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_UserTable] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


