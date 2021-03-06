CREATE DATABASE [Books]
GO
USE [Books]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 04.12.2018 0:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Author] [nvarchar](max) NULL,
	[price] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Books] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Purchases]    Script Date: 04.12.2018 0:45:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purchases](
	[PurchaseID] [int] IDENTITY(1,1) NOT NULL,
	[Person] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[BookID] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Purchases] PRIMARY KEY CLUSTERED 
(
	[PurchaseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Books] ON 

INSERT [dbo].[Books] ([ID], [Name], [Author], [price]) VALUES (1, N'Peace and war', N'L. Tolstoy', 220)
INSERT [dbo].[Books] ([ID], [Name], [Author], [price]) VALUES (2, N'Pride and Prejudice', N'Jane Austen', 180)
INSERT [dbo].[Books] ([ID], [Name], [Author], [price]) VALUES (3, N'1984', N'George Orwell', 212)
INSERT [dbo].[Books] ([ID], [Name], [Author], [price]) VALUES (4, N'The Great Gatsby', N'F. Scott Fitzgerald ', 320)
SET IDENTITY_INSERT [dbo].[Books] OFF
SET IDENTITY_INSERT [dbo].[Purchases] ON 

INSERT [dbo].[Purchases] ([PurchaseID], [Person], [Address], [BookID], [Date]) VALUES (1, N'TEst', N'test', 2, CAST(N'2018-11-27T01:43:42.823' AS DateTime))
SET IDENTITY_INSERT [dbo].[Purchases] OFF
