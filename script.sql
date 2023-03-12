USE [ShoesShop]
GO
/****** Object:  Table [dbo].[CARTS]    Script Date: 3/13/2023 12:17:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CARTS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[USER_ID] [int] NOT NULL,
	[PRODUCT_ID] [int] NOT NULL,
	[SIZE_ID] [int] NOT NULL,
	[COLOR_ID] [int] NOT NULL,
	[QUANTITY] [int] NOT NULL,
	[DATE_ADDED] [datetime] NOT NULL,
 CONSTRAINT [PK_CARTS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CATEGORY]    Script Date: 3/13/2023 12:17:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORY](
	[CATEGORY_ID] [int] IDENTITY(1,1) NOT NULL,
	[CATEGORY_NAME] [varchar](255) NOT NULL,
 CONSTRAINT [PK_CATEGORY] PRIMARY KEY CLUSTERED 
(
	[CATEGORY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHAT_MESSAGES]    Script Date: 3/13/2023 12:17:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHAT_MESSAGES](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SENDER_ID] [int] NOT NULL,
	[RECEIVER_ID] [int] NOT NULL,
	[MESSAGE] [text] NOT NULL,
	[DATE_SENT] [datetime] NOT NULL,
 CONSTRAINT [PK_CHAT_MESSAGES] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COLORS]    Script Date: 3/13/2023 12:17:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COLORS](
	[COLOR_ID] [int] IDENTITY(1,1) NOT NULL,
	[COLOR_NAME] [varchar](255) NOT NULL,
 CONSTRAINT [PK_COLORS] PRIMARY KEY CLUSTERED 
(
	[COLOR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INVENTORY]    Script Date: 3/13/2023 12:17:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVENTORY](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PRODUCT_ID] [int] NOT NULL,
	[SIZE_ID] [int] NOT NULL,
	[COLOR_ID] [int] NOT NULL,
	[QUANTITY] [int] NOT NULL,
 CONSTRAINT [PK_INVENTORY] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDER_DETAILS]    Script Date: 3/13/2023 12:17:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER_DETAILS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ORDER_ID] [int] NOT NULL,
	[PRODUCT_ID] [int] NOT NULL,
	[SIZE_ID] [int] NOT NULL,
	[COLOR_ID] [int] NOT NULL,
	[QUANTITY] [int] NOT NULL,
	[PRICE] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_ORDER_DETAILS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDERS]    Script Date: 3/13/2023 12:17:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDERS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[USER_ID] [int] NOT NULL,
	[QUANTITY] [int] NOT NULL,
	[DATE_ORDERED] [date] NOT NULL,
	[PAYMENT_METHOD] [varchar](50) NOT NULL,
	[DELIVERY_LOCATION] [varchar](255) NOT NULL,
	[TOTAL_PRICE] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_ORDERS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCTS]    Script Date: 3/13/2023 12:17:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCTS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [varchar](255) NOT NULL,
	[DESCRIPTION] [text] NOT NULL,
	[PRICE] [decimal](10, 2) NOT NULL,
	[IMAGE] [varchar](255) NOT NULL,
	[CATEGORY_ID] [int] NOT NULL,
 CONSTRAINT [PK_PRODUCTS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[REVIEWS]    Script Date: 3/13/2023 12:17:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REVIEWS](
	[REVIEW_ID] [int] NOT NULL,
	[USER_ID] [int] NOT NULL,
	[PRODUCT_ID] [int] NOT NULL,
	[RATING] [int] NOT NULL,
	[REVIEW_TEXT] [text] NULL,
 CONSTRAINT [PK_REVIEWS] PRIMARY KEY CLUSTERED 
(
	[REVIEW_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SALES]    Script Date: 3/13/2023 12:17:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SALES](
	[SALE_ID] [int] IDENTITY(1,1) NOT NULL,
	[PRODUCT_ID] [int] NOT NULL,
	[SALE_PRICE] [int] NOT NULL,
	[START_DATE] [date] NOT NULL,
	[END_DATE] [date] NOT NULL,
 CONSTRAINT [PK_SALES] PRIMARY KEY CLUSTERED 
(
	[SALE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SIZES]    Script Date: 3/13/2023 12:17:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIZES](
	[SIZE_ID] [int] IDENTITY(1,1) NOT NULL,
	[SIZE_NAME] [varchar](255) NOT NULL,
 CONSTRAINT [PK_SIZES] PRIMARY KEY CLUSTERED 
(
	[SIZE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USERS]    Script Date: 3/13/2023 12:17:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[USERNAME] [varchar](255) NOT NULL,
	[PASSWORD] [varchar](255) NOT NULL,
	[NAME] [varchar](255) NOT NULL,
	[EMAIL] [varchar](255) NOT NULL,
	[ADDRESS] [varchar](255) NOT NULL,
	[IS_SELLER] [int] NOT NULL,
 CONSTRAINT [PK_CUSTOMERS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CATEGORY] ON 

INSERT [dbo].[CATEGORY] ([CATEGORY_ID], [CATEGORY_NAME]) VALUES (1, N'Shoes''s Men')
INSERT [dbo].[CATEGORY] ([CATEGORY_ID], [CATEGORY_NAME]) VALUES (2, N'Shoes''s Women')
SET IDENTITY_INSERT [dbo].[CATEGORY] OFF
GO
SET IDENTITY_INSERT [dbo].[COLORS] ON 

INSERT [dbo].[COLORS] ([COLOR_ID], [COLOR_NAME]) VALUES (1, N'RED')
SET IDENTITY_INSERT [dbo].[COLORS] OFF
GO
SET IDENTITY_INSERT [dbo].[PRODUCTS] ON 

INSERT [dbo].[PRODUCTS] ([ID], [NAME], [DESCRIPTION], [PRICE], [IMAGE], [CATEGORY_ID]) VALUES (7, N'adasd', N'asdasd', CAST(22.02 AS Decimal(10, 2)), N'./ImageProduct/Customer.png', 2)
SET IDENTITY_INSERT [dbo].[PRODUCTS] OFF
GO
SET IDENTITY_INSERT [dbo].[SIZES] ON 

INSERT [dbo].[SIZES] ([SIZE_ID], [SIZE_NAME]) VALUES (1, N'39')
SET IDENTITY_INSERT [dbo].[SIZES] OFF
GO
SET IDENTITY_INSERT [dbo].[USERS] ON 

INSERT [dbo].[USERS] ([ID], [USERNAME], [PASSWORD], [NAME], [EMAIL], [ADDRESS], [IS_SELLER]) VALUES (1, N'VinhLQ', N'12345', N'Vinh Lam', N'VinhLQ2512@gmail.com', N'HN', 1)
SET IDENTITY_INSERT [dbo].[USERS] OFF
GO
ALTER TABLE [dbo].[CARTS]  WITH CHECK ADD  CONSTRAINT [FK_CARTS_COLORS] FOREIGN KEY([COLOR_ID])
REFERENCES [dbo].[COLORS] ([COLOR_ID])
GO
ALTER TABLE [dbo].[CARTS] CHECK CONSTRAINT [FK_CARTS_COLORS]
GO
ALTER TABLE [dbo].[CARTS]  WITH CHECK ADD  CONSTRAINT [FK_CARTS_PRODUCTS] FOREIGN KEY([PRODUCT_ID])
REFERENCES [dbo].[PRODUCTS] ([ID])
GO
ALTER TABLE [dbo].[CARTS] CHECK CONSTRAINT [FK_CARTS_PRODUCTS]
GO
ALTER TABLE [dbo].[CARTS]  WITH CHECK ADD  CONSTRAINT [FK_CARTS_SIZES] FOREIGN KEY([SIZE_ID])
REFERENCES [dbo].[SIZES] ([SIZE_ID])
GO
ALTER TABLE [dbo].[CARTS] CHECK CONSTRAINT [FK_CARTS_SIZES]
GO
ALTER TABLE [dbo].[CARTS]  WITH CHECK ADD  CONSTRAINT [FK_CARTS_USERS] FOREIGN KEY([USER_ID])
REFERENCES [dbo].[USERS] ([ID])
GO
ALTER TABLE [dbo].[CARTS] CHECK CONSTRAINT [FK_CARTS_USERS]
GO
ALTER TABLE [dbo].[CHAT_MESSAGES]  WITH CHECK ADD  CONSTRAINT [FK_CHAT_MESSAGES_USERS2] FOREIGN KEY([SENDER_ID])
REFERENCES [dbo].[USERS] ([ID])
GO
ALTER TABLE [dbo].[CHAT_MESSAGES] CHECK CONSTRAINT [FK_CHAT_MESSAGES_USERS2]
GO
ALTER TABLE [dbo].[CHAT_MESSAGES]  WITH CHECK ADD  CONSTRAINT [FK_CHAT_MESSAGES_USERS3] FOREIGN KEY([RECEIVER_ID])
REFERENCES [dbo].[USERS] ([ID])
GO
ALTER TABLE [dbo].[CHAT_MESSAGES] CHECK CONSTRAINT [FK_CHAT_MESSAGES_USERS3]
GO
ALTER TABLE [dbo].[INVENTORY]  WITH CHECK ADD  CONSTRAINT [FK_INVENTORY_COLORS] FOREIGN KEY([COLOR_ID])
REFERENCES [dbo].[COLORS] ([COLOR_ID])
GO
ALTER TABLE [dbo].[INVENTORY] CHECK CONSTRAINT [FK_INVENTORY_COLORS]
GO
ALTER TABLE [dbo].[INVENTORY]  WITH CHECK ADD  CONSTRAINT [FK_INVENTORY_PRODUCTS] FOREIGN KEY([PRODUCT_ID])
REFERENCES [dbo].[PRODUCTS] ([ID])
GO
ALTER TABLE [dbo].[INVENTORY] CHECK CONSTRAINT [FK_INVENTORY_PRODUCTS]
GO
ALTER TABLE [dbo].[INVENTORY]  WITH CHECK ADD  CONSTRAINT [FK_INVENTORY_SIZES] FOREIGN KEY([SIZE_ID])
REFERENCES [dbo].[SIZES] ([SIZE_ID])
GO
ALTER TABLE [dbo].[INVENTORY] CHECK CONSTRAINT [FK_INVENTORY_SIZES]
GO
ALTER TABLE [dbo].[ORDER_DETAILS]  WITH CHECK ADD  CONSTRAINT [FK_ORDER_DETAILS_COLORS] FOREIGN KEY([COLOR_ID])
REFERENCES [dbo].[COLORS] ([COLOR_ID])
GO
ALTER TABLE [dbo].[ORDER_DETAILS] CHECK CONSTRAINT [FK_ORDER_DETAILS_COLORS]
GO
ALTER TABLE [dbo].[ORDER_DETAILS]  WITH CHECK ADD  CONSTRAINT [FK_ORDER_DETAILS_ORDERS] FOREIGN KEY([ORDER_ID])
REFERENCES [dbo].[ORDERS] ([ID])
GO
ALTER TABLE [dbo].[ORDER_DETAILS] CHECK CONSTRAINT [FK_ORDER_DETAILS_ORDERS]
GO
ALTER TABLE [dbo].[ORDER_DETAILS]  WITH CHECK ADD  CONSTRAINT [FK_ORDER_DETAILS_PRODUCTS] FOREIGN KEY([PRODUCT_ID])
REFERENCES [dbo].[PRODUCTS] ([ID])
GO
ALTER TABLE [dbo].[ORDER_DETAILS] CHECK CONSTRAINT [FK_ORDER_DETAILS_PRODUCTS]
GO
ALTER TABLE [dbo].[ORDER_DETAILS]  WITH CHECK ADD  CONSTRAINT [FK_ORDER_DETAILS_SIZES] FOREIGN KEY([SIZE_ID])
REFERENCES [dbo].[SIZES] ([SIZE_ID])
GO
ALTER TABLE [dbo].[ORDER_DETAILS] CHECK CONSTRAINT [FK_ORDER_DETAILS_SIZES]
GO
ALTER TABLE [dbo].[ORDERS]  WITH CHECK ADD  CONSTRAINT [FK_ORDERS_USERS] FOREIGN KEY([USER_ID])
REFERENCES [dbo].[USERS] ([ID])
GO
ALTER TABLE [dbo].[ORDERS] CHECK CONSTRAINT [FK_ORDERS_USERS]
GO
ALTER TABLE [dbo].[PRODUCTS]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCTS_CATEGORY] FOREIGN KEY([CATEGORY_ID])
REFERENCES [dbo].[CATEGORY] ([CATEGORY_ID])
GO
ALTER TABLE [dbo].[PRODUCTS] CHECK CONSTRAINT [FK_PRODUCTS_CATEGORY]
GO
ALTER TABLE [dbo].[REVIEWS]  WITH CHECK ADD  CONSTRAINT [FK_REVIEWS_PRODUCTS] FOREIGN KEY([PRODUCT_ID])
REFERENCES [dbo].[PRODUCTS] ([ID])
GO
ALTER TABLE [dbo].[REVIEWS] CHECK CONSTRAINT [FK_REVIEWS_PRODUCTS]
GO
ALTER TABLE [dbo].[REVIEWS]  WITH CHECK ADD  CONSTRAINT [FK_REVIEWS_USERS] FOREIGN KEY([USER_ID])
REFERENCES [dbo].[USERS] ([ID])
GO
ALTER TABLE [dbo].[REVIEWS] CHECK CONSTRAINT [FK_REVIEWS_USERS]
GO
ALTER TABLE [dbo].[SALES]  WITH CHECK ADD  CONSTRAINT [FK_SALES_PRODUCTS] FOREIGN KEY([PRODUCT_ID])
REFERENCES [dbo].[PRODUCTS] ([ID])
GO
ALTER TABLE [dbo].[SALES] CHECK CONSTRAINT [FK_SALES_PRODUCTS]
GO
