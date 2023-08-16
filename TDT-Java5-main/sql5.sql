create database J6Demo5
go
use J6Demo5
go

create table Student(
	email  nvarchar(50) primary key,
	fullname nvarchar(50),
	marks float,
	gender bit,
	country nvarchar(10)
); 
insert into Student
values('ductaitruongcr7@gmail.com',N'Trương Đức Tài',9,1,N'VN'),
	('diemquynh@gmail.com',N'Ngô Thị Diễm Quỳnh',10,0,N'VN'),
	('ngochan@gmail.com',N'Nguyễn Võ Ngọc Hân',8,0,N'VN'),
	('Nguyenngan@gmail.com',N'Nguyễn Thị Ngân',9,0,N'VN')

	select *  from Student

CREATE TABLE [dbo].[Accounts](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
	[Activated] [bit] NULL,
	[Admin] [bit] NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Categories](
	[Id] [char](4) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[OrderDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [bigint] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Orders](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](50) NOT NULL,
	[Price] [float] NOT NULL,
	[CreateDate] [date] NOT NULL,
	[Available] [bit] NOT NULL,
	[CategoryId] [char](4) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin]) VALUES (N'admin', N'1234', N'Truong Duc Admin', N'admin@gmail.com', N'm10.jpg', 1, 1)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin]) VALUES (N'bruno', N'1234', N'Bruno fernandes', N'bruno@gmail.com', N'bruno.jpg', 1, 1)
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo], [Activated], [Admin]) VALUES (N'diemquynh', N'123', N'Ngo Thi Diem Quynh', N'quynh@gmail.com', N'bae.png', 1, 0)
GO

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1001', N'Canon DSLR')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1002', N'Nikon DSLR')


INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1005', N'Sony Mirrorless')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1006', N'Fujifilm Mirrorless')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1008', N'Lens Canon')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1009', N'Lens Nikon')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1010', N'Lens Sony')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1011', N'Lens Fujifilm')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1012', N'Lens Sigma')
GO

SET IDENTITY_INSERT [dbo].[OrderDetails] ON 
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (59, 41, 148, 699000, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (60, 42, 149, 799000, 2)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO

SET IDENTITY_INSERT [dbo].[Orders] ON 
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (41, N'admin', CAST(N'2023-06-10T02:23:35.583' AS DateTime), N'123 Street')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (42, N'diemquynh', CAST(N'2023-06-10T02:38:07.993' AS DateTime), N'123 Street')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO

SET IDENTITY_INSERT [dbo].[Products] ON 
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (148, N'Canon RP', N'CanonRP.jpg', 4000000, CAST(N'2023-06-10' AS Date), 1, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (149, N'Canon R7', N'CanonR7.jpg', 5200000, CAST(N'2023-06-10' AS Date), 1, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (150, N'Canon R', N'CanonR.jpg', 1670000, CAST(N'2023-06-10' AS Date), 1, N'1001')

INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (151, N'Canon R5', N'CanonR5.jpg', 2400000, CAST(N'2023-06-10' AS Date), 1, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (152, N'Canon R6', N'CanonR6.jpg', 1340000, CAST(N'2023-06-10' AS Date), 1, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (153, N'Canon R8', N'CanonR8.jpg', 3190000, CAST(N'2023-06-10' AS Date), 1, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (154, N'Canon R50', N'CanonR50.jpg', 1200000, CAST(N'2023-06-10' AS Date), 1, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (155, N'Canon R100', N'CanonR100.jpg', 2190000, CAST(N'2023-06-10' AS Date), 1, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (156, N'Canon 1DX', N'canon1dx.jpg', 5410000, CAST(N'2023-06-10' AS Date), 1, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (157, N'Canon 200D', N'canon200d.jpg', 1670000, CAST(N'2023-06-10' AS Date), 1, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (158, N'Canon 5D', N'Canon5D.jpg', 2570000, CAST(N'2023-06-10' AS Date), 1, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (159, N'Canon 850D', N'canon850d.jpg', 4190000, CAST(N'2023-06-10' AS Date), 1, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (160, N'Canon 6D', N'canon6d.jpg', 3250000, CAST(N'2023-06-10' AS Date), 1, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (161, N'Canon 90D', N'canon90d.jpg', 4100000, CAST(N'2023-06-10' AS Date), 1, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (162, N'Nikon Z', N'nikonZ.jpg', 3420000, CAST(N'2023-06-10' AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (163, N'Nikon Z9', N'nikonZ9.jpg', 4320000, CAST(N'2023-06-10' AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (164, N'Nikon Z50', N'nikonZ50.jpg', 2340000, CAST(N'2023-06-10' AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (165, N'Nikon Z30', N'NikonZ30.jpg', 1320000, CAST(N'2023-06-10' AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (166, N'Nikon Z6', N'NikonZ6.jpg', 5100000, CAST(N'2023-06-10' AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (167, N'Nikon Z8', N'nikonZ8.jpg', 1650000, CAST(N'2023-06-10' AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (168, N'Nikon Z9', N'nikonZ9.jpg', 4320000, CAST(N'2023-06-10' AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (169, N'Nikon D7500', N'nikond7500.jpg', 3240000, CAST(N'2023-06-10' AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (170, N'Nikon 850', N'nikon850.jpg', 610000, CAST(N'2023-06-10' AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (171, N'Nikon D780', N'nikond780.jpg', 4710000, CAST(N'2023-06-10' AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (172, N'Nikon D6', N'nikond6.jpg', 4310000, CAST(N'2023-06-10' AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (173, N'Sony A1', N'sonyA1.jpg', 5310000, CAST(N'2023-06-10' AS Date), 1, N'1005')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (174, N'Sony A7', N'sonyA7.jpg', 3310000, CAST(N'2023-06-10' AS Date), 1, N'1005')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (175, N'Sony A6400', N'sonyA6400.jpg', 2310000, CAST(N'2023-06-10' AS Date), 1, N'1005')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (176, N'Sony A7C', N'sony A7C.jpg', 1310000, CAST(N'2023-06-10' AS Date), 1, N'1005')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (177, N'Sony ZVE10', N'sonyZVE10.jpg', 2570000, CAST(N'2023-06-10' AS Date), 1, N'1005')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (178, N'Sony ZVE1', N'sonyZVE1.jpg', 3810000, CAST(N'2023-06-10' AS Date), 1, N'1005')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (179, N'Fujifilm GF 20-35', N'fujiGF20-35.jpg', 5310000, CAST(N'2023-06-10' AS Date), 1, N'1006')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (180, N'Fujifilm  X-S 10', N'fujiX-S10.jpg', 4110000, CAST(N'2023-06-10' AS Date), 1, N'1006')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (181, N'Fujifilm  X-T 5', N'fujiX-T5.jpg', 1110000, CAST(N'2023-06-10' AS Date), 1, N'1006')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (182, N'Fujifilm  X-PRO 3', N'fujiX-Pro3.jpg', 5610000, CAST(N'2023-06-10' AS Date), 1, N'1006')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (184, N'Fujifilm  X-S 20', N'fujiX-S20.jpg', 3510000, CAST(N'2023-06-10' AS Date), 1, N'1006')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (185, N'Fujifilm  X-H2S', N'fujiX-H2S.jpg', 2230000, CAST(N'2023-06-10' AS Date), 1, N'1006')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (186, N'Fujifilm  GF-X 100S', N'fujiGFX100S.jpg', 3610000, CAST(N'2023-06-10' AS Date), 1, N'1006')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (187, N'Lens Canon RF800', N'LcanonRF800.jpg', 140000, CAST(N'2023-06-10' AS Date), 1, N'1008')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (188, N'Lens Canon RF1200', N'LcanonRF1200.jpg', 210000, CAST(N'2023-06-10' AS Date), 1, N'1008')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (189, N'Lens Canon RF-S 18-45', N'LcanonRf-S18-45.jpg', 160000, CAST(N'2023-06-10' AS Date), 1, N'1008')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (190, N'Lens Canon RF 14-35', N'LcanonRF14-35.jpg', 120000, CAST(N'2023-06-10' AS Date), 1, N'1008')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (191, N'Lens Canon RF 24', N'LcanonRf24.jpg', 130000, CAST(N'2023-06-10' AS Date), 1, N'1008')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (192, N'Lens Canon RF 15-30', N'LcanonRF15-30.jpg', 180000, CAST(N'2023-06-10' AS Date), 1, N'1008')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (193, N'Lens Nikon 40', N'lnikon40.jpg', 210000, CAST(N'2023-06-10' AS Date), 1, N'1009')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (194, N'Lens Nikon 58', N'lnikon58.jpg', 170000, CAST(N'2023-06-10' AS Date), 1, N'1009')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (195, N'Lens Nikon 26', N'lnikon26.jpg', 180000, CAST(N'2023-06-10' AS Date), 1, N'1009')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (196, N'Lens Nikon 600', N'Lnikon600.jpg', 260000, CAST(N'2023-06-10' AS Date), 1, N'1009')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (197, N'Lens Nikon 400', N'Lnikon400.jpg', 430000, CAST(N'2023-06-10' AS Date), 1, N'1009')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (198, N'Lens Nikon 800', N'Lnikon800.jpg', 510000, CAST(N'2023-06-10' AS Date), 1, N'1009')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (199, N'Lens Nikon NIKKOR', N'LnikonNIKKOR.jpg', 210000, CAST(N'2023-06-10' AS Date), 1, N'1009')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (200, N'Lens Sony E11', N'LsonyE11.jpg',320000, CAST(N'2023-06-10' AS Date), 1, N'1010')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (201, N'Lens Sony E10-20', N'LsonyE10-20.jpg',410000, CAST(N'2023-06-10' AS Date), 1, N'1010')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (202, N'Lens Sony EPZ18-110', N'LsonyEPZ18-110.jpg',230000, CAST(N'2023-06-10' AS Date), 1, N'1010')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (203, N'Lens Sony FEC16-35', N'LsonyFEC16-35.jpg',350000, CAST(N'2023-06-10' AS Date), 1, N'1010')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (204, N'Lens Sony FE20-70', N'LsonyFE20-70.jpg',610000, CAST(N'2023-06-10' AS Date), 1, N'1010')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (205, N'Lens Sony FE50', N'LsonyFE50.jpg',430000, CAST(N'2023-06-10' AS Date), 1, N'1010')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (206, N'Lens Sony FEPZ28-135', N'LsonyFEPZ28-135.jpg',1650000, CAST(N'2023-06-10' AS Date), 1, N'1010')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (207, N'Lens Fujifilm XF150-600', N'lfujiXF150-600.jpg',1230000, CAST(N'2023-06-10' AS Date), 1, N'1011')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (208, N'Lens Fujifilm XF18-120', N'lfujiXF18-120.jpg',610000, CAST(N'2023-06-10' AS Date), 1, N'1011')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (209, N'Lens Fujifilm 20-35', N'lfuji20-35.jpg',1530000, CAST(N'2023-06-10' AS Date), 1, N'1011')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (210, N'Lens Fujifilm XF56', N'lfujiXF56.jpg',1110000, CAST(N'2023-06-10' AS Date), 1, N'1011')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (211, N'Lens Fujifilm XF30', N'LfujiXF30.jpg',560000, CAST(N'2023-06-10' AS Date), 1, N'1011')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (212, N'Lens Fujifilm XF8', N'lfujiXF8.jpg',430000, CAST(N'2023-06-10' AS Date), 1, N'1011')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (213, N'Lens Sigma 16', N'lg16.jpg',240000, CAST(N'2023-06-10' AS Date), 1, N'1012')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (214, N'Lens Sigma 30', N'lg30.jpg',320000, CAST(N'2023-06-10' AS Date), 1, N'1012')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (215, N'Lens Sigma 56', N'lg56.jpg',410000, CAST(N'2023-06-10' AS Date), 1, N'1012')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (216, N'Lens Sigma 17', N'lg17.jpg',190000, CAST(N'2023-06-10' AS Date), 1, N'1012')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (217, N'Lens Sigma 23', N'lg23.jpg',230000, CAST(N'2023-06-10' AS Date), 1, N'1012')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (218, N'Lens Sigma 16', N'lg50.jpg',350000, CAST(N'2023-06-10' AS Date), 1, N'1012')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (219, N'Lens Sigma 14', N'lg14mm.jpg',430000, CAST(N'2023-06-10' AS Date), 1, N'1012')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO

