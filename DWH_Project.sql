USE [DWH_Project]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 08/12/2023 15:40:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[Id_Customer] [int] NOT NULL,
	[First_Name] [varchar](255) NOT NULL,
	[Last_Name] [varchar](255) NOT NULL,
	[Age] [int] NULL,
	[Gender] [varchar](255) NOT NULL,
	[City] [varchar](255) NOT NULL,
	[NoHP] [bigint] NULL,
	[Income_Category] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Customer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 08/12/2023 15:40:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[Id_Product] [int] NOT NULL,
	[Product_Name] [varchar](255) NOT NULL,
	[Product_Category] [varchar](255) NOT NULL,
	[Product_Unit_Price] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sales_order]    Script Date: 08/12/2023 15:40:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sales_order](
	[Id_Order] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Amount] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
	[Order_Date] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[status_order]    Script Date: 08/12/2023 15:40:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[status_order](
	[Id_Status] [int] NOT NULL,
	[Status_Order] [varchar](255) NOT NULL,
	[Status_Order_Desc] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id_Status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[sales_order]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[customer] ([Id_Customer])
GO
ALTER TABLE [dbo].[sales_order]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[product] ([Id_Product])
GO
ALTER TABLE [dbo].[sales_order]  WITH CHECK ADD FOREIGN KEY([StatusId])
REFERENCES [dbo].[status_order] ([Id_Status])
GO
