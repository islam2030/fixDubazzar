USE [NOP4]
GO
/****** Object:  Table [dbo].[Bucket]    Script Date: 7/7/2019 10:38:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bucket](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](400) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[EventDate] [datetime] NOT NULL,
	[Total] [decimal](18, 4) NOT NULL,
	[StatusId] [int] NOT NULL,
	[BucketTypeId] [int] NOT NULL,
	[BucketPictureId] [int] NULL,
	[ShareLink] [nvarchar](max) NOT NULL,
	[BucketDeleted] [bit] NOT NULL,
	[Notes] [nvarchar](600) NULL,
	[DisplayOrder] [int] NOT NULL DEFAULT ((0)),
	[Published] [bit] NOT NULL DEFAULT ((0)),
	[ShowOnHomePage] [bit] NOT NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bucket_Customer_Mapping]    Script Date: 7/7/2019 10:38:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bucket_Customer_Mapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[BucketId] [int] NOT NULL,
	[ShareId] [int] NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bucket_Order_Mapping]    Script Date: 7/7/2019 10:38:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bucket_Order_Mapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[BucketId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bucket_Product_Mapping]    Script Date: 7/7/2019 10:38:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bucket_Product_Mapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[BucketId] [int] NOT NULL,
	[ProductQuantity] [int] NOT NULL,
	[ProductDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bucket_Status]    Script Date: 7/7/2019 10:38:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bucket_Status](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bucket_Type]    Script Date: 7/7/2019 10:38:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bucket_Type](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](100) NOT NULL,
	[BucketTypePictureId] [int] NOT NULL,
	[DisplayOrder] [int] NOT NULL DEFAULT ((0)),
	[Published] [bit] NOT NULL DEFAULT ((1)),
	[MetaTitle] [nvarchar](400) NOT NULL DEFAULT (''),
	[MetaKeywords] [nvarchar](400) NOT NULL DEFAULT (''),
	[MetaDescription] [nvarchar](max) NOT NULL DEFAULT (''),
	[ShowOnHomePage] [bit] NOT NULL DEFAULT ('0'),
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BucketProcess]    Script Date: 7/7/2019 10:38:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BucketProcess](
	[Id] [int] IDENTITY(10000,1) NOT NULL,
	[BucketId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[Amount] [decimal](18, 4) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Notes] [nvarchar](400) NOT NULL,
	[PayStatus] [nvarchar](300) NOT NULL DEFAULT ('Pending'),
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BucketType_Category_Mapping]    Script Date: 7/7/2019 10:38:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BucketType_Category_Mapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[BucketTypeId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BucketType_Product_Mapping]    Script Date: 7/7/2019 10:38:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BucketType_Product_Mapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[BucketTypeId] [int] NOT NULL,
	[DisplayOrder] [int] NOT NULL DEFAULT ((0)),
	[Published] [bit] NOT NULL DEFAULT ((1)),
	[ShowOnHomePage] [bit] NOT NULL DEFAULT ('0'),
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Bucket_Customer_Mapping]  WITH CHECK ADD  CONSTRAINT [Bucket_Customer1] FOREIGN KEY([BucketId])
REFERENCES [dbo].[Bucket] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bucket_Customer_Mapping] CHECK CONSTRAINT [Bucket_Customer1]
GO
ALTER TABLE [dbo].[Bucket_Order_Mapping]  WITH CHECK ADD  CONSTRAINT [Bucket_Order] FOREIGN KEY([BucketId])
REFERENCES [dbo].[Bucket] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bucket_Order_Mapping] CHECK CONSTRAINT [Bucket_Order]
GO
ALTER TABLE [dbo].[Bucket_Order_Mapping]  WITH CHECK ADD  CONSTRAINT [Order_Bucket] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bucket_Order_Mapping] CHECK CONSTRAINT [Order_Bucket]
GO
ALTER TABLE [dbo].[Bucket_Product_Mapping]  WITH CHECK ADD  CONSTRAINT [Bucket_Product] FOREIGN KEY([BucketId])
REFERENCES [dbo].[Bucket] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bucket_Product_Mapping] CHECK CONSTRAINT [Bucket_Product]
GO
ALTER TABLE [dbo].[Bucket_Product_Mapping]  WITH CHECK ADD  CONSTRAINT [Product_Bucket] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bucket_Product_Mapping] CHECK CONSTRAINT [Product_Bucket]
GO
ALTER TABLE [dbo].[BucketProcess]  WITH CHECK ADD  CONSTRAINT [BucketProcess_Bucket1] FOREIGN KEY([BucketId])
REFERENCES [dbo].[Bucket] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BucketProcess] CHECK CONSTRAINT [BucketProcess_Bucket1]
GO
ALTER TABLE [dbo].[BucketType_Product_Mapping]  WITH CHECK ADD  CONSTRAINT [BucketType_Product] FOREIGN KEY([BucketTypeId])
REFERENCES [dbo].[Bucket_Type] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BucketType_Product_Mapping] CHECK CONSTRAINT [BucketType_Product]
GO
ALTER TABLE [dbo].[BucketType_Product_Mapping]  WITH CHECK ADD  CONSTRAINT [Product_BucketType] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BucketType_Product_Mapping] CHECK CONSTRAINT [Product_BucketType]
GO
