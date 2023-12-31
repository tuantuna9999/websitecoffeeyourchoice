USE [CafeDB]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 06/16/2023 20:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[MaND] [int] IDENTITY(1,1) NOT NULL,
	[HoTenND] [nvarchar](100) NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[NgaySinh] [datetime] NULL,
	[TenNguoiDung] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[MaND] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[NguoiDung] ON
INSERT [dbo].[NguoiDung] ([MaND], [HoTenND], [GioiTinh], [DiaChi], [NgaySinh], [TenNguoiDung], [MatKhau]) VALUES (1, N'Tuấn', N'Nam', N'Quy Nhơn', CAST(0x0000918700000000 AS DateTime), N'tuan123', N'123')
INSERT [dbo].[NguoiDung] ([MaND], [HoTenND], [GioiTinh], [DiaChi], [NgaySinh], [TenNguoiDung], [MatKhau]) VALUES (2, N'Tuấn', N'Nam', N'Quy Nhơn', CAST(0x0000918700000000 AS DateTime), N'tuan1234', N'123')
INSERT [dbo].[NguoiDung] ([MaND], [HoTenND], [GioiTinh], [DiaChi], [NgaySinh], [TenNguoiDung], [MatKhau]) VALUES (3, N'long', N'Nam', N'Quy Nhơn', CAST(0x0000918700000000 AS DateTime), N'long123', N'123')
INSERT [dbo].[NguoiDung] ([MaND], [HoTenND], [GioiTinh], [DiaChi], [NgaySinh], [TenNguoiDung], [MatKhau]) VALUES (4, N'Admin', N'nam', N'Quy Nhon', CAST(0x0000918700000000 AS DateTime), N'admin', N'123')
INSERT [dbo].[NguoiDung] ([MaND], [HoTenND], [GioiTinh], [DiaChi], [NgaySinh], [TenNguoiDung], [MatKhau]) VALUES (5, N'tiến', N'Nam', N'Quy Nhơn', CAST(0x0000918700000000 AS DateTime), N'tien123', N'123')
INSERT [dbo].[NguoiDung] ([MaND], [HoTenND], [GioiTinh], [DiaChi], [NgaySinh], [TenNguoiDung], [MatKhau]) VALUES (6, N'admin', N'Nam', N'Quy Nhơn', CAST(0x0000918700000000 AS DateTime), N'admin1', N'123')
INSERT [dbo].[NguoiDung] ([MaND], [HoTenND], [GioiTinh], [DiaChi], [NgaySinh], [TenNguoiDung], [MatKhau]) VALUES (7, N'Tuấn', N'Nam', N'Quy Nhơn', CAST(0x0000918700000000 AS DateTime), N'tuan12345', N'123')
INSERT [dbo].[NguoiDung] ([MaND], [HoTenND], [GioiTinh], [DiaChi], [NgaySinh], [TenNguoiDung], [MatKhau]) VALUES (8, N'long', N'Nữ', N'Quy Nhơn', CAST(0x0000918700000000 AS DateTime), N'long12334', N'123')
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 06/16/2023 20:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaLoaiSP] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiSP] [nvarchar](100) NULL,
	[Anh] [nvarchar](200) NULL,
 CONSTRAINT [PK_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LoaiSP] ON
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP], [Anh]) VALUES (1, N'Đồ uống', N'doan.jpg')
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP], [Anh]) VALUES (2, N'Thức ăn', N'douong.jpg')
SET IDENTITY_INSERT [dbo].[LoaiSP] OFF
/****** Object:  Table [dbo].[SanPham]    Script Date: 06/16/2023 20:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [bigint] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](100) NULL,
	[MaLoaiSP] [int] NULL,
	[SoLuong] [int] NULL,
	[Gia] [int] NULL,
	[GhiChu] [nvarchar](200) NULL,
	[Anh] [nvarchar](200) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [SoLuong], [Gia], [GhiChu], [Anh]) VALUES (12, N'Cà phê đen', 1, 3, 25000, N'Tuyệt vời', N'den.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [SoLuong], [Gia], [GhiChu], [Anh]) VALUES (13, N'Cà phê sữa', 1, 2, 25000, N'Tuyệt vời', N'sua.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [SoLuong], [Gia], [GhiChu], [Anh]) VALUES (14, N'Cà phê Capuchino', 1, 3, 30000, N'Tuyệt vời', N'capuchino.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [SoLuong], [Gia], [GhiChu], [Anh]) VALUES (15, N'Cà phê Latte', 1, 1, 30000, N'Tuyệt vời', N'latte.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [SoLuong], [Gia], [GhiChu], [Anh]) VALUES (16, N'CaCao ', 1, 2, 24000, N'Tuyệt vời', N'cacao.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [SoLuong], [Gia], [GhiChu], [Anh]) VALUES (17, N'Coca', 1, 3, 6000, N'Tuyệt vời', N'coca.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [SoLuong], [Gia], [GhiChu], [Anh]) VALUES (18, N'Pepsi', 1, 4, 6000, N'Tuyệt vời', N'pepsi.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [SoLuong], [Gia], [GhiChu], [Anh]) VALUES (19, N'Bánh gạo', 2, 1, 20000, N'Ngon', N'banhgao.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [SoLuong], [Gia], [GhiChu], [Anh]) VALUES (20, N'Bánh mì', 2, 1, 15000, N'Ngon', N'banhmi.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [SoLuong], [Gia], [GhiChu], [Anh]) VALUES (21, N'Gà chiên', 2, 1, 30000, N'Ngon', N'gachien.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [SoLuong], [Gia], [GhiChu], [Anh]) VALUES (22, N'Hamburger', 2, 2, 20000, N'Ngon', N'hamburger.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [SoLuong], [Gia], [GhiChu], [Anh]) VALUES (23, N'Hotdog', 2, 2, 15000, N'Ngon', N'hotdog.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [SoLuong], [Gia], [GhiChu], [Anh]) VALUES (24, N'Kem', 2, 3, 20000, N'Ngon', N'kem.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [SoLuong], [Gia], [GhiChu], [Anh]) VALUES (25, N'KFC', 2, 1, 50000, N'Ngon', N'kfc.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [SoLuong], [Gia], [GhiChu], [Anh]) VALUES (26, N'Khoai tây chiên', 2, 1, 25000, N'Ngon', N'khoaitaychien.png')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [SoLuong], [Gia], [GhiChu], [Anh]) VALUES (27, N'Mỳ ý', 2, 1, 20000, N'Ngon', N'miy.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [SoLuong], [Gia], [GhiChu], [Anh]) VALUES (28, N'Pizza', 2, 1, 40000, N'Ngon', N'pizza.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [SoLuong], [Gia], [GhiChu], [Anh]) VALUES (29, N'Sandwich', 2, 2, 15000, N'Ngon', N'sandwich.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [SoLuong], [Gia], [GhiChu], [Anh]) VALUES (30, N'Trà Sữa Hồng', 1, 1, 30000, N'Ngon', N'trasuahong.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [SoLuong], [Gia], [GhiChu], [Anh]) VALUES (31, N'Kem sundae', 2, 1, 25000, N'Ngon', N'sundae.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [SoLuong], [Gia], [GhiChu], [Anh]) VALUES (32, N'Phở', 2, NULL, 21000, N'ngon', N'PHO.JPG')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [SoLuong], [Gia], [GhiChu], [Anh]) VALUES (34, N'Bánh bèo', 2, 30, 60000, N'ngonn', N'banhbeo.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [SoLuong], [Gia], [GhiChu], [Anh]) VALUES (35, N'Bánh ít', 2, 30, 3000, N'tuyệt vời!', N'banhit.jpg')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
/****** Object:  Table [dbo].[HoaDon]    Script Date: 06/16/2023 20:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](200) NULL,
	[MaND] [int] NULL,
	[NgayBan] [datetime] NULL,
	[TongTien] [float] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON
INSERT [dbo].[HoaDon] ([MaHD], [Ten], [MaND], [NgayBan], [TongTien]) VALUES (1, N'DonHang-20230524090952', 1, CAST(0x0000B00C0097078B AS DateTime), NULL)
INSERT [dbo].[HoaDon] ([MaHD], [Ten], [MaND], [NgayBan], [TongTien]) VALUES (2, N'DonHang-20230524091102', 1, CAST(0x0000B00C00975921 AS DateTime), NULL)
INSERT [dbo].[HoaDon] ([MaHD], [Ten], [MaND], [NgayBan], [TongTien]) VALUES (3, N'DonHang-20230524091620', 2, CAST(0x0000B00C0098CE22 AS DateTime), NULL)
INSERT [dbo].[HoaDon] ([MaHD], [Ten], [MaND], [NgayBan], [TongTien]) VALUES (4, N'DonHang-20230524091808', 2, CAST(0x0000B00C00994BE6 AS DateTime), NULL)
INSERT [dbo].[HoaDon] ([MaHD], [Ten], [MaND], [NgayBan], [TongTien]) VALUES (5, N'DonHang-20230524091953', 2, CAST(0x0000B00C0099C79C AS DateTime), NULL)
INSERT [dbo].[HoaDon] ([MaHD], [Ten], [MaND], [NgayBan], [TongTien]) VALUES (6, N'DonHang-20230524092050', 2, CAST(0x0000B00C009A0A90 AS DateTime), NULL)
INSERT [dbo].[HoaDon] ([MaHD], [Ten], [MaND], [NgayBan], [TongTien]) VALUES (7, N'DonHang-20230524092238', 2, CAST(0x0000B00C009A88DC AS DateTime), NULL)
INSERT [dbo].[HoaDon] ([MaHD], [Ten], [MaND], [NgayBan], [TongTien]) VALUES (8, N'DonHang-20230524092317', 2, CAST(0x0000B00C009AB6B8 AS DateTime), NULL)
INSERT [dbo].[HoaDon] ([MaHD], [Ten], [MaND], [NgayBan], [TongTien]) VALUES (9, N'DonHang-20230524095839', 1, CAST(0x0000B00C00A46CC8 AS DateTime), NULL)
INSERT [dbo].[HoaDon] ([MaHD], [Ten], [MaND], [NgayBan], [TongTien]) VALUES (10, N'DonHang-20230524100156', 1, CAST(0x0000B00C00A55461 AS DateTime), NULL)
INSERT [dbo].[HoaDon] ([MaHD], [Ten], [MaND], [NgayBan], [TongTien]) VALUES (11, N'DonHang-20230524101733', 1, CAST(0x0000B00C00A99EA2 AS DateTime), NULL)
INSERT [dbo].[HoaDon] ([MaHD], [Ten], [MaND], [NgayBan], [TongTien]) VALUES (12, N'DonHang-2023-05-25-07-41-50', 1, CAST(0x0000B00D007ED8F8 AS DateTime), NULL)
INSERT [dbo].[HoaDon] ([MaHD], [Ten], [MaND], [NgayBan], [TongTien]) VALUES (13, N'DonHang-2023-05-25-07-42-30', 1, CAST(0x0000B00D007F0810 AS DateTime), NULL)
INSERT [dbo].[HoaDon] ([MaHD], [Ten], [MaND], [NgayBan], [TongTien]) VALUES (14, N'DonHang-2023-05-25-07-42-51', 1, CAST(0x0000B00D007F212C AS DateTime), NULL)
INSERT [dbo].[HoaDon] ([MaHD], [Ten], [MaND], [NgayBan], [TongTien]) VALUES (15, N'DonHang-2023-05-25-07-47-25', 1, CAST(0x0000B00D008061DD AS DateTime), NULL)
INSERT [dbo].[HoaDon] ([MaHD], [Ten], [MaND], [NgayBan], [TongTien]) VALUES (123, N'DonHang-2023-06-16-19-32-20', 1, CAST(0x0000B0230141FE3C AS DateTime), 15000)
INSERT [dbo].[HoaDon] ([MaHD], [Ten], [MaND], [NgayBan], [TongTien]) VALUES (124, N'DonHang-2023-06-16-19-41-10', 1, CAST(0x0000B02301446B1F AS DateTime), 15000)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
/****** Object:  Table [dbo].[GioHang]    Script Date: 06/16/2023 20:09:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[maGioHang] [int] IDENTITY(1,1) NOT NULL,
	[maSanPham] [bigint] NULL,
	[soLuong] [int] NULL,
	[maNguoiDung] [int] NULL,
	[TongTien] [int] NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[maGioHang] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GioHang] ON
INSERT [dbo].[GioHang] ([maGioHang], [maSanPham], [soLuong], [maNguoiDung], [TongTien]) VALUES (1, 19, 1, NULL, NULL)
INSERT [dbo].[GioHang] ([maGioHang], [maSanPham], [soLuong], [maNguoiDung], [TongTien]) VALUES (2, 19, 1, NULL, NULL)
INSERT [dbo].[GioHang] ([maGioHang], [maSanPham], [soLuong], [maNguoiDung], [TongTien]) VALUES (3, 20, 1, NULL, NULL)
INSERT [dbo].[GioHang] ([maGioHang], [maSanPham], [soLuong], [maNguoiDung], [TongTien]) VALUES (4, 21, 1, NULL, NULL)
INSERT [dbo].[GioHang] ([maGioHang], [maSanPham], [soLuong], [maNguoiDung], [TongTien]) VALUES (5, 21, 1, NULL, NULL)
INSERT [dbo].[GioHang] ([maGioHang], [maSanPham], [soLuong], [maNguoiDung], [TongTien]) VALUES (6, 22, 1, NULL, NULL)
INSERT [dbo].[GioHang] ([maGioHang], [maSanPham], [soLuong], [maNguoiDung], [TongTien]) VALUES (7, 20, 1, NULL, NULL)
INSERT [dbo].[GioHang] ([maGioHang], [maSanPham], [soLuong], [maNguoiDung], [TongTien]) VALUES (8, 20, 2, NULL, NULL)
INSERT [dbo].[GioHang] ([maGioHang], [maSanPham], [soLuong], [maNguoiDung], [TongTien]) VALUES (9, 24, 1, NULL, NULL)
INSERT [dbo].[GioHang] ([maGioHang], [maSanPham], [soLuong], [maNguoiDung], [TongTien]) VALUES (10, 25, 1, NULL, NULL)
INSERT [dbo].[GioHang] ([maGioHang], [maSanPham], [soLuong], [maNguoiDung], [TongTien]) VALUES (11, 29, 2, NULL, NULL)
INSERT [dbo].[GioHang] ([maGioHang], [maSanPham], [soLuong], [maNguoiDung], [TongTien]) VALUES (12, 23, 1, NULL, NULL)
INSERT [dbo].[GioHang] ([maGioHang], [maSanPham], [soLuong], [maNguoiDung], [TongTien]) VALUES (13, 19, 1, NULL, NULL)
INSERT [dbo].[GioHang] ([maGioHang], [maSanPham], [soLuong], [maNguoiDung], [TongTien]) VALUES (14, 19, 1, NULL, 20000)
INSERT [dbo].[GioHang] ([maGioHang], [maSanPham], [soLuong], [maNguoiDung], [TongTien]) VALUES (15, 21, 1, NULL, 30000)
INSERT [dbo].[GioHang] ([maGioHang], [maSanPham], [soLuong], [maNguoiDung], [TongTien]) VALUES (16, 21, 4, NULL, 120000)
INSERT [dbo].[GioHang] ([maGioHang], [maSanPham], [soLuong], [maNguoiDung], [TongTien]) VALUES (17, 21, 5, NULL, 150000)
INSERT [dbo].[GioHang] ([maGioHang], [maSanPham], [soLuong], [maNguoiDung], [TongTien]) VALUES (18, 22, 1, NULL, 20000)
INSERT [dbo].[GioHang] ([maGioHang], [maSanPham], [soLuong], [maNguoiDung], [TongTien]) VALUES (19, 24, 1, NULL, 20000)
INSERT [dbo].[GioHang] ([maGioHang], [maSanPham], [soLuong], [maNguoiDung], [TongTien]) VALUES (20, 24, 1, NULL, 20000)
INSERT [dbo].[GioHang] ([maGioHang], [maSanPham], [soLuong], [maNguoiDung], [TongTien]) VALUES (21, 23, 1, NULL, 15000)
INSERT [dbo].[GioHang] ([maGioHang], [maSanPham], [soLuong], [maNguoiDung], [TongTien]) VALUES (22, 24, 1, NULL, 20000)
INSERT [dbo].[GioHang] ([maGioHang], [maSanPham], [soLuong], [maNguoiDung], [TongTien]) VALUES (23, 23, 1, NULL, 15000)
INSERT [dbo].[GioHang] ([maGioHang], [maSanPham], [soLuong], [maNguoiDung], [TongTien]) VALUES (24, 19, 2, NULL, 40000)
INSERT [dbo].[GioHang] ([maGioHang], [maSanPham], [soLuong], [maNguoiDung], [TongTien]) VALUES (187, 19, 1, 1, 20000)
INSERT [dbo].[GioHang] ([maGioHang], [maSanPham], [soLuong], [maNguoiDung], [TongTien]) VALUES (188, 20, 1, 1, 15000)
INSERT [dbo].[GioHang] ([maGioHang], [maSanPham], [soLuong], [maNguoiDung], [TongTien]) VALUES (189, 19, 1, 1, 20000)
INSERT [dbo].[GioHang] ([maGioHang], [maSanPham], [soLuong], [maNguoiDung], [TongTien]) VALUES (190, 20, 1, 1, 15000)
SET IDENTITY_INSERT [dbo].[GioHang] OFF
/****** Object:  Default [DF_SanPham_Anh]    Script Date: 06/16/2023 20:09:52 ******/
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_Anh]  DEFAULT (NULL) FOR [Anh]
GO
/****** Object:  ForeignKey [FK_GioHang_NguoiDung]    Script Date: 06/16/2023 20:09:52 ******/
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_NguoiDung] FOREIGN KEY([maNguoiDung])
REFERENCES [dbo].[NguoiDung] ([MaND])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_NguoiDung]
GO
/****** Object:  ForeignKey [FK_GioHang_SanPham]    Script Date: 06/16/2023 20:09:52 ******/
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_SanPham] FOREIGN KEY([maSanPham])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_SanPham]
GO
/****** Object:  ForeignKey [FK_HoaDon_NguoiDung]    Script Date: 06/16/2023 20:09:52 ******/
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NguoiDung] FOREIGN KEY([MaND])
REFERENCES [dbo].[NguoiDung] ([MaND])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NguoiDung]
GO
/****** Object:  ForeignKey [FK_SanPham_LoaiSP]    Script Date: 06/16/2023 20:09:52 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSP] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSP] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSP]
GO
