USE [dbKhachSan]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[IDChucVu] [int] IDENTITY(1,1) NOT NULL,
	[TenCV] [nvarchar](50) NULL,
	[IsDelete] [bit] NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[IDChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DangKiDatPhong]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangKiDatPhong](
	[ID_DangKi] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[HoTen] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[NgayTao] [datetime] NULL,
	[Status] [tinyint] NULL,
	[ID_Phong] [int] NULL,
	[TimeStart] [datetime] NULL,
	[GhiChu] [nvarchar](500) NULL,
	[TimeEnd] [datetime] NULL,
	[Message] [nvarchar](500) NULL,
 CONSTRAINT [PK_DangKiDatPhong] PRIMARY KEY CLUSTERED 
(
	[ID_DangKi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DatPhong]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatPhong](
	[IDDatPhong] [int] IDENTITY(1,1) NOT NULL,
	[IDKhachHang] [uniqueidentifier] NOT NULL,
	[IDPhong] [int] NULL,
	[IDTaiKhoan] [int] NULL,
	[BatDau] [datetime] NULL,
	[KetThuc] [datetime] NULL,
	[TongTien] [bigint] NULL,
	[ThanhToan] [bigint] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_DatPhong] PRIMARY KEY CLUSTERED 
(
	[IDDatPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[IDDichVu] [int] IDENTITY(1,1) NOT NULL,
	[TenDichVu] [nvarchar](50) NULL,
	[GiaTien] [bigint] NULL,
	[Active] [bit] NULL,
	[DonVi] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](200) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_DichVu] PRIMARY KEY CLUSTERED 
(
	[IDDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GiaoDich]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoDich](
	[IDGiaoDich] [int] IDENTITY(1,1) NOT NULL,
	[IDDatPhong] [int] NULL,
	[IDTaiKhoan] [int] NULL,
	[IDDichVu] [int] NULL,
	[SoLuong] [int] NULL,
	[BuyTime] [datetime] NULL,
 CONSTRAINT [PK_GiaoDich] PRIMARY KEY CLUSTERED 
(
	[IDGiaoDich] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HinhAnh]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhAnh](
	[IDHinhAnh] [int] IDENTITY(1,1) NOT NULL,
	[ImageLink] [nvarchar](500) NULL,
	[Rank] [int] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_HinhAnh] PRIMARY KEY CLUSTERED 
(
	[IDHinhAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[IDKhachHang] [uniqueidentifier] NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[CMT] [nvarchar](50) NULL,
	[IsMale] [bit] NULL,
	[SDT] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](200) NULL,
	[IsDelete] [bit] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[IDKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachSan]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachSan](
	[IDKhachSan] [int] IDENTITY(1,1) NOT NULL,
	[IDTinhThanh] [int] NULL,
	[IDHinhAnh] [int] NULL,
	[MaKhachSan] [nvarchar](50) NULL,
	[TenKhachSan] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[GioiThieu] [nvarchar](max) NULL,
	[TieuDe] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL,
	[IsDelete] [bit] NULL,
	[Star] [int] NULL,
 CONSTRAINT [PK_KhachSan] PRIMARY KEY CLUSTERED 
(
	[IDKhachSan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiPhong]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhong](
	[ID_LoaiPhong] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiPhong] PRIMARY KEY CLUSTERED 
(
	[ID_LoaiPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[IDQuyen] [int] NOT NULL,
	[IDTaiKhoan] [int] NOT NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[IDQuyen] ASC,
	[IDTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Phong]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[IDPhong] [int] IDENTITY(1,1) NOT NULL,
	[TenPhong] [nvarchar](200) NULL,
	[ID_ViTri] [int] NULL,
	[TrangThai] [nvarchar](50) NULL,
	[GiaPhong] [bigint] NULL,
	[ID_LoaiPhong] [int] NULL,
	[Active] [bit] NULL,
	[IsDelete] [bit] NULL,
	[IDKhachSan] [int] NULL,
	[GiaKM] [int] NULL,
	[Star] [int] NULL,
 CONSTRAINT [PK_Phong] PRIMARY KEY CLUSTERED 
(
	[IDPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Phong_HinhAnh]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong_HinhAnh](
	[IDPhong_HinhAnh] [int] IDENTITY(1,1) NOT NULL,
	[IDHinhAnh] [int] NULL,
	[IDPhong] [int] NULL,
	[Rank] [int] NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_Phong_HinhAnh] PRIMARY KEY CLUSTERED 
(
	[IDPhong_HinhAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[IDQuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](200) NULL,
 CONSTRAINT [PK_Quyen] PRIMARY KEY CLUSTERED 
(
	[IDQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[IDTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[TenDangNhap] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[IDChucVu] [int] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[IDTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TinhThanh]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhThanh](
	[IDTinhThanh] [int] IDENTITY(1,1) NOT NULL,
	[IDHinhAnh] [int] NULL,
	[MaTinh] [nvarchar](50) NULL,
	[TenTinh] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_TinhThanh] PRIMARY KEY CLUSTERED 
(
	[IDTinhThanh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ViTri]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ViTri](
	[ID_ViTri] [int] IDENTITY(1,1) NOT NULL,
	[TenViTri] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_ViTri] PRIMARY KEY CLUSTERED 
(
	[ID_ViTri] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[ChucVu] ON 

INSERT [dbo].[ChucVu] ([IDChucVu], [TenCV], [IsDelete], [GhiChu]) VALUES (1, N'ADMIN', 1, N'admin')
INSERT [dbo].[ChucVu] ([IDChucVu], [TenCV], [IsDelete], [GhiChu]) VALUES (2, N'NhanVien', 0, N'Nhân viên')
INSERT [dbo].[ChucVu] ([IDChucVu], [TenCV], [IsDelete], [GhiChu]) VALUES (3, N'Admin', 0, N'Quản trị viên')
SET IDENTITY_INSERT [dbo].[ChucVu] OFF
SET IDENTITY_INSERT [dbo].[DangKiDatPhong] ON 

INSERT [dbo].[DangKiDatPhong] ([ID_DangKi], [Email], [HoTen], [Phone], [NgayTao], [Status], [ID_Phong], [TimeStart], [GhiChu], [TimeEnd], [Message]) VALUES (9, N'huynhtu01674812105@gmail.com', N'Huỳnh Tú', N'01662916579', CAST(N'2021-09-11 15:59:15.647' AS DateTime), 0, 7, CAST(N'2021-09-22 15:58:40.000' AS DateTime), NULL, CAST(N'2021-09-24 15:58:48.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[DangKiDatPhong] OFF
SET IDENTITY_INSERT [dbo].[DatPhong] ON 

INSERT [dbo].[DatPhong] ([IDDatPhong], [IDKhachHang], [IDPhong], [IDTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status]) VALUES (1, N'c634cf11-56da-4cff-b101-d84eb8cb1dce', 6, 1, CAST(N'2018-01-07 01:17:34.520' AS DateTime), CAST(N'2018-01-07 01:18:05.073' AS DateTime), 1697, 1697, 1)
INSERT [dbo].[DatPhong] ([IDDatPhong], [IDKhachHang], [IDPhong], [IDTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status]) VALUES (2, N'6c448be4-e0a3-4410-9453-e994e5c938df', 1, 1, CAST(N'2018-01-07 22:21:18.597' AS DateTime), CAST(N'2018-01-08 00:43:10.837' AS DateTime), 4577055, 722902, 1)
INSERT [dbo].[DatPhong] ([IDDatPhong], [IDKhachHang], [IDPhong], [IDTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status]) VALUES (3, N'6c448be4-e0a3-4410-9453-e994e5c938df', 11, 1, CAST(N'2018-01-08 00:30:09.347' AS DateTime), CAST(N'2018-01-08 00:45:01.910' AS DateTime), 388512, 24793, 1)
INSERT [dbo].[DatPhong] ([IDDatPhong], [IDKhachHang], [IDPhong], [IDTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status]) VALUES (4, N'bc7d119e-3765-451c-896c-5c5304de0338', 1, 1, CAST(N'2018-01-08 01:20:42.987' AS DateTime), CAST(N'2018-01-08 01:20:58.540' AS DateTime), 864, 864, 1)
INSERT [dbo].[DatPhong] ([IDDatPhong], [IDKhachHang], [IDPhong], [IDTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status]) VALUES (5, N'0a228e82-f2da-450d-858e-074dff197c26', 1, 1, CAST(N'2018-01-08 02:49:27.390' AS DateTime), CAST(N'2018-01-08 19:09:47.717' AS DateTime), 30400332, 30400332, 1)
INSERT [dbo].[DatPhong] ([IDDatPhong], [IDKhachHang], [IDPhong], [IDTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status]) VALUES (6, N'4ba74587-0d2e-4118-895f-6277b179fa0a', 11, 3, CAST(N'2018-01-05 19:41:21.740' AS DateTime), CAST(N'2018-01-11 20:15:41.920' AS DateTime), 896750, 896750, 1)
INSERT [dbo].[DatPhong] ([IDDatPhong], [IDKhachHang], [IDPhong], [IDTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status]) VALUES (7, N'b96f8180-f220-42c6-b795-5e359889db7b', 7, 1, CAST(N'2018-01-11 21:56:44.633' AS DateTime), CAST(N'2018-01-13 06:32:44.953' AS DateTime), 6570017, 6570017, 1)
INSERT [dbo].[DatPhong] ([IDDatPhong], [IDKhachHang], [IDPhong], [IDTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status]) VALUES (8, N'b96f8180-f220-42c6-b795-5e359889db7b', 17, 1, CAST(N'2018-01-11 21:57:35.613' AS DateTime), CAST(N'2018-01-13 07:42:32.600' AS DateTime), 6749832, 6749832, 1)
INSERT [dbo].[DatPhong] ([IDDatPhong], [IDKhachHang], [IDPhong], [IDTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status]) VALUES (9, N'f171a884-160b-41a1-bb7f-85a24283f410', 24, 3, CAST(N'2018-01-11 22:29:46.427' AS DateTime), CAST(N'2018-01-13 09:37:24.280' AS DateTime), 94728811, 0, 0)
INSERT [dbo].[DatPhong] ([IDDatPhong], [IDKhachHang], [IDPhong], [IDTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status]) VALUES (10, N'f171a884-160b-41a1-bb7f-85a24283f410', 25, 1, CAST(N'2018-01-13 06:42:04.790' AS DateTime), CAST(N'2018-01-13 07:31:03.553' AS DateTime), 2040808, 2040808, 1)
INSERT [dbo].[DatPhong] ([IDDatPhong], [IDKhachHang], [IDPhong], [IDTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status]) VALUES (11, N'1cb5dbd5-648d-4c2b-82ac-48f851476841', 1, 1, CAST(N'2018-01-13 07:44:28.450' AS DateTime), CAST(N'2018-01-13 15:34:02.287' AS DateTime), 4013032, 4013032, 1)
INSERT [dbo].[DatPhong] ([IDDatPhong], [IDKhachHang], [IDPhong], [IDTaiKhoan], [BatDau], [KetThuc], [TongTien], [ThanhToan], [Status]) VALUES (12, N'1cb5dbd5-648d-4c2b-82ac-48f851476841', 19, 1, CAST(N'2018-01-13 15:34:00.367' AS DateTime), NULL, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[DatPhong] OFF
SET IDENTITY_INSERT [dbo].[DichVu] ON 

INSERT [dbo].[DichVu] ([IDDichVu], [TenDichVu], [GiaTien], [Active], [DonVi], [GhiChu], [IsDelete]) VALUES (1, N'Ăn sáng', 50000, 1, N'Bữa', NULL, 0)
INSERT [dbo].[DichVu] ([IDDichVu], [TenDichVu], [GiaTien], [Active], [DonVi], [GhiChu], [IsDelete]) VALUES (2, N'Ăn Trưa', 100000, 1, N'Bữa', NULL, 0)
INSERT [dbo].[DichVu] ([IDDichVu], [TenDichVu], [GiaTien], [Active], [DonVi], [GhiChu], [IsDelete]) VALUES (3, N'Ăn Tối', 200000, 1, N'Bữa', NULL, 0)
INSERT [dbo].[DichVu] ([IDDichVu], [TenDichVu], [GiaTien], [Active], [DonVi], [GhiChu], [IsDelete]) VALUES (4, N'Bia', 20000, 1, N'Chai', NULL, 0)
INSERT [dbo].[DichVu] ([IDDichVu], [TenDichVu], [GiaTien], [Active], [DonVi], [GhiChu], [IsDelete]) VALUES (5, N'Tắm nước nóng', 500000, 1, N'Lần', NULL, 0)
INSERT [dbo].[DichVu] ([IDDichVu], [TenDichVu], [GiaTien], [Active], [DonVi], [GhiChu], [IsDelete]) VALUES (6, N'Đặt tour du lịch', 5000000, 1, N'Tour', NULL, 0)
INSERT [dbo].[DichVu] ([IDDichVu], [TenDichVu], [GiaTien], [Active], [DonVi], [GhiChu], [IsDelete]) VALUES (7, N'Giặt là', 30000, 1, N'Lần', NULL, 0)
INSERT [dbo].[DichVu] ([IDDichVu], [TenDichVu], [GiaTien], [Active], [DonVi], [GhiChu], [IsDelete]) VALUES (8, N'Bể bơi', 50000, 0, N'Lần', NULL, 0)
SET IDENTITY_INSERT [dbo].[DichVu] OFF
SET IDENTITY_INSERT [dbo].[GiaoDich] ON 

INSERT [dbo].[GiaoDich] ([IDGiaoDich], [IDDatPhong], [IDTaiKhoan], [IDDichVu], [SoLuong], [BuyTime]) VALUES (1, 2, 1, 1, 1, CAST(N'2018-01-07 11:54:28.877' AS DateTime))
INSERT [dbo].[GiaoDich] ([IDGiaoDich], [IDDatPhong], [IDTaiKhoan], [IDDichVu], [SoLuong], [BuyTime]) VALUES (2, 2, 1, 2, 1, CAST(N'2018-01-07 12:13:13.330' AS DateTime))
INSERT [dbo].[GiaoDich] ([IDGiaoDich], [IDDatPhong], [IDTaiKhoan], [IDDichVu], [SoLuong], [BuyTime]) VALUES (3, 2, 1, 2, 1, CAST(N'2018-01-08 00:30:00.733' AS DateTime))
INSERT [dbo].[GiaoDich] ([IDGiaoDich], [IDDatPhong], [IDTaiKhoan], [IDDichVu], [SoLuong], [BuyTime]) VALUES (4, 5, 1, 5, 0, CAST(N'2018-01-08 11:16:12.500' AS DateTime))
INSERT [dbo].[GiaoDich] ([IDGiaoDich], [IDDatPhong], [IDTaiKhoan], [IDDichVu], [SoLuong], [BuyTime]) VALUES (5, 5, 1, 5, 0, CAST(N'2018-01-08 11:16:17.680' AS DateTime))
INSERT [dbo].[GiaoDich] ([IDGiaoDich], [IDDatPhong], [IDTaiKhoan], [IDDichVu], [SoLuong], [BuyTime]) VALUES (6, 5, 1, 5, 1, CAST(N'2018-01-08 11:16:25.517' AS DateTime))
INSERT [dbo].[GiaoDich] ([IDGiaoDich], [IDDatPhong], [IDTaiKhoan], [IDDichVu], [SoLuong], [BuyTime]) VALUES (7, 5, 1, 3, 0, CAST(N'2018-01-08 19:08:09.760' AS DateTime))
INSERT [dbo].[GiaoDich] ([IDGiaoDich], [IDDatPhong], [IDTaiKhoan], [IDDichVu], [SoLuong], [BuyTime]) VALUES (8, 7, 1, 1, 1, CAST(N'2018-01-11 21:57:19.743' AS DateTime))
INSERT [dbo].[GiaoDich] ([IDGiaoDich], [IDDatPhong], [IDTaiKhoan], [IDDichVu], [SoLuong], [BuyTime]) VALUES (9, 9, 1, 5, 1, CAST(N'2018-01-13 06:39:13.653' AS DateTime))
INSERT [dbo].[GiaoDich] ([IDGiaoDich], [IDDatPhong], [IDTaiKhoan], [IDDichVu], [SoLuong], [BuyTime]) VALUES (10, 9, 1, 5, 0, CAST(N'2018-01-13 06:41:38.777' AS DateTime))
INSERT [dbo].[GiaoDich] ([IDGiaoDich], [IDDatPhong], [IDTaiKhoan], [IDDichVu], [SoLuong], [BuyTime]) VALUES (11, 9, 1, 5, 0, CAST(N'2018-01-13 06:51:39.883' AS DateTime))
INSERT [dbo].[GiaoDich] ([IDGiaoDich], [IDDatPhong], [IDTaiKhoan], [IDDichVu], [SoLuong], [BuyTime]) VALUES (12, 9, 1, 4, 0, CAST(N'2018-01-13 06:52:05.477' AS DateTime))
INSERT [dbo].[GiaoDich] ([IDGiaoDich], [IDDatPhong], [IDTaiKhoan], [IDDichVu], [SoLuong], [BuyTime]) VALUES (13, 9, 1, 5, 1, CAST(N'2018-01-13 06:52:10.357' AS DateTime))
INSERT [dbo].[GiaoDich] ([IDGiaoDich], [IDDatPhong], [IDTaiKhoan], [IDDichVu], [SoLuong], [BuyTime]) VALUES (14, 9, 1, 1, 1, CAST(N'2018-01-13 06:57:24.590' AS DateTime))
INSERT [dbo].[GiaoDich] ([IDGiaoDich], [IDDatPhong], [IDTaiKhoan], [IDDichVu], [SoLuong], [BuyTime]) VALUES (15, 9, 1, 4, 5, CAST(N'2018-01-13 07:31:50.310' AS DateTime))
INSERT [dbo].[GiaoDich] ([IDGiaoDich], [IDDatPhong], [IDTaiKhoan], [IDDichVu], [SoLuong], [BuyTime]) VALUES (16, 11, 1, 1, 1, CAST(N'2018-01-13 13:24:49.627' AS DateTime))
INSERT [dbo].[GiaoDich] ([IDGiaoDich], [IDDatPhong], [IDTaiKhoan], [IDDichVu], [SoLuong], [BuyTime]) VALUES (17, 11, 1, 1, 1, CAST(N'2018-01-13 15:33:40.027' AS DateTime))
SET IDENTITY_INSERT [dbo].[GiaoDich] OFF
SET IDENTITY_INSERT [dbo].[HinhAnh] ON 

INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (1, N'/Content/images/phong/2018-01-07-12-21-59_phong (1).jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (2, N'/Content/images/phong/2018-01-07-12-21-59_phong (2).jpg', 1, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (3, N'/Content/images/phong/2018-01-07-12-21-59_phong (3).jpg', 2, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (4, N'/Content/images/phong/2018-01-07-12-21-59_phong (4).jpg', 3, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (5, N'/Content/images/phong/2018-01-07-12-21-59_phong (5).jpg', 4, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (6, N'/Content/images/phong/2018-01-07-12-21-59_phong (6).jpg', 5, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (7, N'/Content/images/phong/2018-01-07-12-21-59_phong (7).jpg', 6, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (8, N'/Content/images/phong/2018-01-07-12-22-00_phong (8).jpg', 7, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (9, N'/Content/images/phong/2018-01-07-12-22-00_phong (9).jpg', 8, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (10, N'/Content/images/phong/2018-01-07-12-22-00_phong (10).jpg', 9, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (11, N'/Content/images/phong/2018-01-07-12-22-00_phong (11).jpg', 10, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (12, N'/Content/images/phong/2018-01-07-12-22-00_phong (12).jpg', 11, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (13, N'/Content/images/phong/2018-01-07-12-27-32_binh duong.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (14, N'/Content/images/phong/2018-01-07-12-27-32_dong nai.jpg', 1, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (15, N'/Content/images/phong/2018-01-07-12-27-32_nam dinh.jpg', 2, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (16, N'/Content/images/phong/2018-01-07-12-27-32_ninh binh.jpg', 3, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (17, N'/Content/images/phong/2018-01-07-12-27-32_quang ngai.jpg', 4, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (18, N'/Content/images/phong/2018-01-07-12-27-32_quang ninh.jpg', 5, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (19, N'/Content/images/phong/2018-01-07-12-27-32_quang tri.jpg', 6, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (20, N'/Content/images/phong/2018-01-07-12-27-32_tay ninh.jpg', 7, 1)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (21, N'/Content/images/phong/2018-01-07-01-22-19_HN.JPG', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (22, N'/Content/images/phong/2018-01-07-01-28-16_khach-san-ha-noi-view-2.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (23, N'/Content/images/phong/2018-01-07-01-29-29_hcm.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (24, N'/Content/images/phong/2018-01-07-01-30-08_da-nang.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (25, N'/Content/images/phong/2018-01-07-01-30-58_vung-tau.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (26, N'/Content/images/phong/2018-01-07-01-38-54_da-lat.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (27, N'/Content/images/phong/2018-01-07-01-39-30_nha-trang.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (28, N'/Content/images/phong/2018-01-07-01-40-53_phan-thiet.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (29, N'/Content/images/phong/2018-01-07-01-42-39_phu-quoc.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (30, N'/Content/images/phong/2018-01-07-01-43-53_sa-pa.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (31, N'/Content/images/phong/2018-01-07-01-44-32_hue.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (32, N'/Content/images/phong/2018-01-07-01-45-48_ha-long.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (33, N'/Content/images/phong/2018-01-07-01-47-27_hoi-an.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (34, N'/Content/images/phong/2018-01-07-01-52-36_large_7id1497321238_khach_san_airport_sai_gon.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (35, N'/Content/images/phong/2018-01-07-02-02-34_1.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (36, N'/Content/images/phong/2018-01-07-02-44-13_khach-san-asian-ruby-center-point.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (37, N'/Content/images/phong/2018-01-07-02-45-04_khach-san-asian-ruby-center-point.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (38, N'/Content/images/phong/2018-01-07-02-45-19_khach_san_airport_sai_gon.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (39, N'/Content/images/phong/2018-01-07-03-15-06_khach_san_vissai_sai_gon.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (40, N'/Content/images/phong/2018-01-07-03-20-41_khach-san-oscar-sai-gon.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (41, N'/Content/images/phong/2018-01-07-03-28-27_khach_san_golden_lotus_luxury.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (42, N'/Content/images/phong/2018-01-07-03-34-04_large_73c1457059836_khach_san_golden_lotus_luxury.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (43, N'/Content/images/phong/2018-01-07-03-42-15_khach-san-cong-doan-quang-ba.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (44, N'/Content/images/phong/2018-01-07-04-32-27_khach-san-church-boutique-hang-ca.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (45, N'/Content/images/phong/2018-01-07-04-56-54_khach-san-church-boutique-hang-ca-2.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (46, N'/Content/images/phong/2018-01-07-04-58-46_khach-san-church-boutique-hang-ca-3.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (47, N'/Content/images/phong/2018-01-07-05-03-53_khach_san_nikko_ha_noi.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (48, N'/Content/images/phong/2018-01-07-05-06-21_khach_san_nikko_ha_noi-2.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (49, N'/Content/images/phong/2018-01-07-05-08-37_khach_san_nikko_ha_noi-2.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (50, N'/Content/images/phong/2018-01-07-05-08-37_khach_san_nikko_ha_noi-3.jpg', 1, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (51, N'/Content/images/phong/2018-01-07-05-08-37_khach_san_nikko_ha_noi-4.jpg', 2, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (52, N'/Content/images/phong/2018-01-07-05-08-37_khach_san_nikko_ha_noi-5.jpg', 3, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (53, N'/Content/images/phong/2018-01-07-05-08-37_khach_san_nikko_ha_noi-6.jpg', 4, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (54, N'/Content/images/phong/2018-01-07-05-08-37_khach_san_nikko_ha_noi-7.jpg', 5, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (55, N'/Content/images/phong/2018-01-07-05-08-37_khach_san_nikko_ha_noi-8.jpg', 6, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (56, N'/Content/images/phong/2018-01-07-05-08-37_khach_san_nikko_ha_noi-9.jpg', 7, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (57, N'/Content/images/phong/2018-01-07-05-08-37_khach_san_nikko_ha_noi-10.jpg', 8, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (58, N'/Content/images/phong/2018-01-08-01-43-31_khach_san_vissai_sai_gon.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (59, N'/Content/images/phong/2018-01-08-01-47-21_khach_san_vissai_sai_gon-2.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (60, N'/Content/images/phong/2018-01-08-01-47-21_khach_san_vissai_sai_gon-3.jpg', 1, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (61, N'/Content/images/phong/2018-01-08-01-47-21_khach_san_vissai_sai_gon-4.jpg', 2, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (62, N'/Content/images/phong/2018-01-08-01-47-21_khach_san_vissai_sai_gon-5.jpg', 3, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (63, N'/Content/images/phong/2018-01-08-01-47-21_khach_san_vissai_sai_gon-6.jpg', 4, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (64, N'/Content/images/phong/2018-01-08-01-47-21_khach_san_vissai_sai_gon-7.jpg', 5, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (65, N'/Content/images/phong/2018-01-08-01-47-21_khach_san_vissai_sai_gon-8.jpg', 6, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (66, N'/Content/images/phong/2018-01-08-02-26-39_khach_san_vissai_sai_gon-doi.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (67, N'/Content/images/phong/2018-01-08-02-56-10_khach-san-alagon-central-hotel-spa.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (68, N'/Content/images/phong/2018-01-08-03-16-54_khach_san_alagon_central_hotel_spa-2.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (69, N'/Content/images/phong/2018-01-08-03-16-54_khach_san_alagon_central_hotel_spa-3.jpg', 1, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (70, N'/Content/images/phong/2018-01-08-03-16-54_khach_san_alagon_central_hotel_spa-4.jpg', 2, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (71, N'/Content/images/phong/2018-01-08-03-16-54_khach_san_alagon_central_hotel_spa-5.jpg', 3, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (72, N'/Content/images/phong/2018-01-08-03-16-54_khach_san_alagon_central_hotel_spa-6.jpg', 4, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (73, N'/Content/images/phong/2018-01-08-03-28-32_khach_san_valentine_sai_gon.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (74, N'/Content/images/phong/2018-01-08-03-31-42_khach_san_valentine_sai_gon.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (75, N'/Content/images/phong/2018-01-08-03-36-33_khach_san_valentine_sai_gon-2.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (76, N'/Content/images/phong/2018-01-08-03-36-33_khach_san_valentine_sai_gon-3.jpg', 1, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (77, N'/Content/images/phong/2018-01-08-03-36-33_khach_san_valentine_sai_gon-4.jpg', 2, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (78, N'/Content/images/phong/2018-01-08-03-36-33_khach_san_valentine_sai_gon-5.jpg', 3, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (79, N'/Content/images/phong/2018-01-08-03-36-33_khach_san_valentine_sai_gon-6.jpg', 4, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (80, N'/Content/images/phong/2018-01-08-03-36-33_khach_san_valentine_sai_gon-7.jpg', 5, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (81, N'/Content/images/phong/2018-01-08-03-36-33_khach_san_valentine_sai_gon-8.jpg', 6, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (82, N'/Content/images/phong/2018-01-08-03-36-33_khach_san_valentine_sai_gon-9.jpg', 7, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (83, N'/Content/images/phong/2018-01-08-06-40-02_khach_san_nikko_ha_noi.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (84, N'/Content/images/phong/2018-01-08-06-42-00_khach_san_golden_lotus_luxury.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (85, N'/Content/images/phong/2018-01-08-06-43-25_khach-san-skylark.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (86, N'/Content/images/phong/2018-01-08-06-45-23_khach_san_merry_land_da_nang.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (87, N'/Content/images/phong/2018-01-08-06-49-04_the_grand_ho_tram_strip_resort.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (88, N'/Content/images/phong/2018-01-08-06-50-55_antonico_villa.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (89, N'/Content/images/phong/2018-01-08-06-53-44_villa-aria-mui-ne.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (90, N'/Content/images/phong/2018-01-08-06-55-45_amiana-nha-trang.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (91, N'/Content/images/phong/2018-01-08-06-57-15_khach_san_muong_thanh_luxury_phu_quoc.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (92, N'/Content/images/phong/2018-01-08-06-58-52_khach_san_paos_sapa_leisure.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (93, N'/Content/images/phong/2018-01-08-07-00-18_lantana_hoi_an_boutique_hotel_spa.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (94, N'/Content/images/phong/2018-01-08-07-01-59_khach_san_royal_ha_long.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (95, N'/Content/images/phong/2018-01-08-07-03-30_hue-riverside-boutique-resort-spa.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (96, N'/Content/images/phong/2018-01-13-09-51-47_khach-san-muong-thanh-ha-noi.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (97, N'/Content/images/phong/2018-01-13-10-04-54_khach-san-muong-thanh-ha-noi-2.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (98, N'/Content/images/phong/2018-01-13-10-05-45_khach-san-muong-thanh-ha-noi.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (99, N'/Content/images/phong/2018-01-13-10-05-45_khach-san-muong-thanh-ha-noi-2.jpg', 1, 0)
GO
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (100, N'/Content/images/phong/2018-01-13-10-05-45_khach-san-muong-thanh-ha-noi-3.jpg', 2, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (101, N'/Content/images/phong/2018-01-13-10-05-45_khach-san-muong-thanh-ha-noi-4.jpg', 3, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (102, N'/Content/images/phong/2018-01-13-10-05-45_khach-san-muong-thanh-ha-noi-5.jpg', 4, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (103, N'/Content/images/phong/2018-01-13-12-50-37_khach-san-imperial-hue.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (104, N'/Content/images/phong/2018-01-13-12-56-18_khach_san_imperial_hue-2.jpg', 0, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (105, N'/Content/images/phong/2018-01-13-12-56-18_khach_san_imperial_hue-3.jpg', 1, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (106, N'/Content/images/phong/2018-01-13-12-56-18_khach_san_imperial_hue-4.jpg', 2, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (107, N'/Content/images/phong/2018-01-13-12-56-18_khach_san_imperial_hue-5.jpg', 3, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (108, N'/Content/images/phong/2018-01-13-12-56-18_khach_san_imperial_hue-6.jpg', 4, 0)
INSERT [dbo].[HinhAnh] ([IDHinhAnh], [ImageLink], [Rank], [IsDelete]) VALUES (109, N'/Content/images/phong/2018-01-13-01-08-49_ana_mandara_villas_dalat_resort_spa.jpg', 0, 0)
SET IDENTITY_INSERT [dbo].[HinhAnh] OFF
INSERT [dbo].[KhachHang] ([IDKhachHang], [HoTen], [CMT], [IsMale], [SDT], [GhiChu], [IsDelete], [DiaChi], [NgaySinh]) VALUES (N'0a228e82-f2da-450d-858e-074dff197c26', N'Nguyễn Công Phượng', N'017168792', 1, N'0982995198', NULL, 0, N'Hoàng Anh Gia Lai', CAST(N'2018-10-01' AS Date))
INSERT [dbo].[KhachHang] ([IDKhachHang], [HoTen], [CMT], [IsMale], [SDT], [GhiChu], [IsDelete], [DiaChi], [NgaySinh]) VALUES (N'1cb5dbd5-648d-4c2b-82ac-48f851476841', N'Nguyễn Thị Thúy Hương', N'017168742', 0, N'0989660431', NULL, 0, N'Hà Nam', CAST(N'2018-01-12' AS Date))
INSERT [dbo].[KhachHang] ([IDKhachHang], [HoTen], [CMT], [IsMale], [SDT], [GhiChu], [IsDelete], [DiaChi], [NgaySinh]) VALUES (N'bc7d119e-3765-451c-896c-5c5304de0338', N'Đinh Viết Nam', N'0711112222', 1, N'0982995468', NULL, 1, N'Nghệ An', CAST(N'2018-01-09' AS Date))
INSERT [dbo].[KhachHang] ([IDKhachHang], [HoTen], [CMT], [IsMale], [SDT], [GhiChu], [IsDelete], [DiaChi], [NgaySinh]) VALUES (N'b96f8180-f220-42c6-b795-5e359889db7b', N'Nguyễn Minh Tiến', N'07111117894', 1, N'0989956195', NULL, 0, N'Vĩnh Phúc', CAST(N'2018-01-02' AS Date))
INSERT [dbo].[KhachHang] ([IDKhachHang], [HoTen], [CMT], [IsMale], [SDT], [GhiChu], [IsDelete], [DiaChi], [NgaySinh]) VALUES (N'4ba74587-0d2e-4118-895f-6277b179fa0a', N'Vũ Thị Hồng Tươi', N'071456780', 0, N'0982456123', NULL, 0, N'Quảng Ninh', CAST(N'2018-01-03' AS Date))
INSERT [dbo].[KhachHang] ([IDKhachHang], [HoTen], [CMT], [IsMale], [SDT], [GhiChu], [IsDelete], [DiaChi], [NgaySinh]) VALUES (N'f171a884-160b-41a1-bb7f-85a24283f410', N'Hà Thị Hoàn', N'071111456789', 1, N'0982645195', NULL, 0, N'Hà Tĩnh', CAST(N'2018-01-03' AS Date))
INSERT [dbo].[KhachHang] ([IDKhachHang], [HoTen], [CMT], [IsMale], [SDT], [GhiChu], [IsDelete], [DiaChi], [NgaySinh]) VALUES (N'88e91c18-3480-4aa5-b814-af9d1b8a727e', N'Lê Đức Thọ', N'071111555', 1, N'0982995195', NULL, 1, N'HaNoi', CAST(N'2018-01-09' AS Date))
INSERT [dbo].[KhachHang] ([IDKhachHang], [HoTen], [CMT], [IsMale], [SDT], [GhiChu], [IsDelete], [DiaChi], [NgaySinh]) VALUES (N'c634cf11-56da-4cff-b101-d84eb8cb1dce', N'NGUYỄN VĂN A', N'123456789', 1, N'0987654321', NULL, 0, N'HÀ NỘI', CAST(N'1972-01-02' AS Date))
INSERT [dbo].[KhachHang] ([IDKhachHang], [HoTen], [CMT], [IsMale], [SDT], [GhiChu], [IsDelete], [DiaChi], [NgaySinh]) VALUES (N'6c448be4-e0a3-4410-9453-e994e5c938df', N'test', N'123456789', 0, N'1234567890', NULL, 1, N'w', CAST(N'2018-01-17' AS Date))
SET IDENTITY_INSERT [dbo].[KhachSan] ON 

INSERT [dbo].[KhachSan] ([IDKhachSan], [IDTinhThanh], [IDHinhAnh], [MaKhachSan], [TenKhachSan], [DiaChi], [GioiThieu], [TieuDe], [GhiChu], [IsDelete], [Star]) VALUES (1, 1, 58, N'KSHCM', N'Khách Sạn Vissai Sài Gòn ', N' 144 Nguyễn Văn Trỗi, Phú Nhuận, Hồ Chí Minh', N'“Khách Sạn Vissai Sài Gòn có vị trí hết sức thuận lợi để khám phá vẻ đẹp Sài Gòn. Đến với khách sạn, du khách sẽ nhận được những dịch vụ chu đáo trong một không gian đầy sang trọng, thanh lịch và ấm cú... “', N'Khách Sạn Vissai Sài Gòn ', NULL, 0, 5)
INSERT [dbo].[KhachSan] ([IDKhachSan], [IDTinhThanh], [IDHinhAnh], [MaKhachSan], [TenKhachSan], [DiaChi], [GioiThieu], [TieuDe], [GhiChu], [IsDelete], [Star]) VALUES (2, 1, 67, N'KSHCM', N'Khách Sạn Alagon Central Hotel & Spa ', N'Phường Bến Thành, Quận 1, Hồ Chí Minh', N'“Alagon Central Hotel & Spa Sài Gòn là lựa chọn lý tưởng cho bạn để đi du lịch hay đi công tác với giá cả hợp lí. Các phòng nghỉ đầy đủ tiện nghi. Đội ngũ nhân viên khách sạn phục vụ thân thiện và nhiệ... “', N'Khách Sạn Alagon Central Hotel & Spa ', NULL, 0, 5)
INSERT [dbo].[KhachSan] ([IDKhachSan], [IDTinhThanh], [IDHinhAnh], [MaKhachSan], [TenKhachSan], [DiaChi], [GioiThieu], [TieuDe], [GhiChu], [IsDelete], [Star]) VALUES (3, 1, 74, N'KSHCM', N'Khách Sạn Valentine Sài Gòn', N'Nguyễn Chí Thanh, Phường 9, Quận 5, Hồ Chí Minh', N'“Khách Sạn Valentine Sài Gòn tọa lạc ngay trung tâm thành phố. Với hệ thống trang thiết bị hiện đại, đội ngũ nhân viên nhiệt tình, chuyên nghiệp hứa hẹn sẽ là một điểm dừng chân hoàn hảo du khách. “', N'Khách Sạn Valentine Sài Gòn', NULL, 0, 4)
INSERT [dbo].[KhachSan] ([IDKhachSan], [IDTinhThanh], [IDHinhAnh], [MaKhachSan], [TenKhachSan], [DiaChi], [GioiThieu], [TieuDe], [GhiChu], [IsDelete], [Star]) VALUES (4, 5, 83, N'KSHN', N'Khách Sạn Nikko Hà Nội ', N'84 Trần Nhân Tông, Hai Bà Trưng, Hà Nội', N'“Khách Sạn Nikko Hà Nội có trang thiết bị hiện đại, phòng ốc rộng rãi, thoáng mát và sạch sẽ. Nhân viên được đào tạo chuyên nghiệp và tận tình. Khách sạn nằm ở trung tâm nên thuận tiện đi lại và tham... “', N'Khách Sạn Nikko Hà Nội ', NULL, 0, 3)
INSERT [dbo].[KhachSan] ([IDKhachSan], [IDTinhThanh], [IDHinhAnh], [MaKhachSan], [TenKhachSan], [DiaChi], [GioiThieu], [TieuDe], [GhiChu], [IsDelete], [Star]) VALUES (5, 5, 84, N'KSHN', N'Golden Lotus Luxury Hotel ', N'53-55 Hàng Trống, Hoàn Kiếm, Hà Nội', N'“Khách Sạn Golden Lotus Luxury Hà Nội nằm tại vị trí thuận lợi để ngắm cảnh, mua sắm, ngắm nhìn thành phố xinh đẹp. Hãy tận hưởng hết vô số dịch vụ và tiện nghi không gì sánh được ở khách sạn Hà Nội nà... “', N'Golden Lotus Luxury Hotel ', NULL, 0, 2)
INSERT [dbo].[KhachSan] ([IDKhachSan], [IDTinhThanh], [IDHinhAnh], [MaKhachSan], [TenKhachSan], [DiaChi], [GioiThieu], [TieuDe], [GhiChu], [IsDelete], [Star]) VALUES (6, 5, 85, N'KSHN', N'Khách Sạn Skylark ', N'15 Phan Đình Phùng, Hoàn Kiếm, Hà Nội', N'“Khách Sạn Skylark Hà Nội tọa lạc ngay quận Ba Đình trung tâm thủ đô. Được xây dựng năm 2012, Khách Sạn Skylark mang nét độc đáo riêng, tô điểm thêm cho những tòa nhà chọc trời trong thành phố này. “', N'Khách Sạn Skylark ', NULL, 0, 4)
INSERT [dbo].[KhachSan] ([IDKhachSan], [IDTinhThanh], [IDHinhAnh], [MaKhachSan], [TenKhachSan], [DiaChi], [GioiThieu], [TieuDe], [GhiChu], [IsDelete], [Star]) VALUES (7, 2, 86, N'KSDN', N'Khách Sạn Merry Land Đà Nẵng ', N'Lô B20 - 21 Phạm Văn Đồng, Sơn Trà, Đà Nẵng', N'Khách sạn Merry Land tọa lạc tại lô B20-21 Phạm Văn Đồng, ngay cạnh biển Mỹ Khê, nơi có vị trí trung tâm đắc địa bậc nhất TP. Đà Nẵng, với những hàng dừa xanh dọc biển, bờ cát trắng trãi dài, là điểm dừng chân lý tưởng nhất mổi khi quý khách có dịp đến thăm thành phố đáng sống này. Khách sạn Merry Land Đà Nẵng được hoàn thiện đưa vào phục vụ du khách đúng dịp 30/04/2017.', N'Khách Sạn Merry Land Đà Nẵng ', NULL, 0, 5)
INSERT [dbo].[KhachSan] ([IDKhachSan], [IDTinhThanh], [IDHinhAnh], [MaKhachSan], [TenKhachSan], [DiaChi], [GioiThieu], [TieuDe], [GhiChu], [IsDelete], [Star]) VALUES (8, 3, 87, N'KSVT', N'The Grand Hồ Tràm Strip Resort ', N'Phước Thuận, Xuyên Mộc, Bà Rịa - Vũng Tàu', N'“The Grand Hồ Tràm Strip Resort một trong những khách sạn nổi tiếng với đầy đủ trang thiết bị đáp ứng mọi nhu cầu của du khách. Hãy nhanh chân đến khách sạn, để được thụ hưởng những dịch vụ tốt nhất nh... “', N'The Grand Hồ Tràm Strip Resort ', NULL, 1, 3)
INSERT [dbo].[KhachSan] ([IDKhachSan], [IDTinhThanh], [IDHinhAnh], [MaKhachSan], [TenKhachSan], [DiaChi], [GioiThieu], [TieuDe], [GhiChu], [IsDelete], [Star]) VALUES (10, 4, 88, N'KSDL', N'Antonico Villa ', N'Phường 10, Đà Lạt, Đà Lạt, Lâm Đồng', N'“Khách Sạn Antonico Villa tọa lạc tại một vị trí đắc địa của thành phố. Với những dịch vụ tốt nhất và giá cả không thể phải chăng hơn “', N'Antonico Villa ', NULL, 1, 2)
INSERT [dbo].[KhachSan] ([IDKhachSan], [IDTinhThanh], [IDHinhAnh], [MaKhachSan], [TenKhachSan], [DiaChi], [GioiThieu], [TieuDe], [GhiChu], [IsDelete], [Star]) VALUES (11, 6, 89, N'KSPT', N'Villa Aria Mũi Né', N' 60A Hàm Tiến, Phan Thiết , Bình Thuận', N'“Khách sạn Đại An Vũng Tàu nằm giữa trung tâm ẩm thực của thành phố, bạn dễ dàng thưởng thức những món ăn đặc sản nổi tiếng của Vũng Tàu. Khách sạn quả thật là một điểm đến tuyệt vời cho du khách. “', N'Villa Aria Mũi Né', NULL, 0, 4)
INSERT [dbo].[KhachSan] ([IDKhachSan], [IDTinhThanh], [IDHinhAnh], [MaKhachSan], [TenKhachSan], [DiaChi], [GioiThieu], [TieuDe], [GhiChu], [IsDelete], [Star]) VALUES (12, 7, 90, N'KSNT', N'Amiana Resort Nha Trang ', N' Phạm Văn Đồng, Nha Trang, Khánh Hòa', N'“Amiana Nha Trang nằm tại vị trí tiện lợi trải dài dọc theo bãi biển xinh đẹp cuối thành phố. Nơi đây nổi tiếng với sự kết hợp từ kiến trúc cho đến sự hoàn hảo trong các dịch vụ với chất lượng 5 sao. “', N'Amiana Resort Nha Trang ', NULL, 0, 5)
INSERT [dbo].[KhachSan] ([IDKhachSan], [IDTinhThanh], [IDHinhAnh], [MaKhachSan], [TenKhachSan], [DiaChi], [GioiThieu], [TieuDe], [GhiChu], [IsDelete], [Star]) VALUES (13, 9, 91, N'KSPQ', N'Khách Sạn Mường Thanh Luxury Phú Quốc ', N'Xã Dương Tơ, Phú Quốc , Kiên Giang (Xem bản đồ)', N'“Khách Sạn Mường Thanh Luxury Phú Quốc một chốn nghỉ dưỡng tuyệt vời, với tiện nghi chuẩn quốc tế và thiết kế thanh nhã cùng đội ngũ nhân viên chuyên nghiệp, hứa hẹn là điểm đến không thể bỏ qua cho bất kì ai. “', N'Khách Sạn Mường Thanh Luxury Phú Quốc ', NULL, 0, 3)
INSERT [dbo].[KhachSan] ([IDKhachSan], [IDTinhThanh], [IDHinhAnh], [MaKhachSan], [TenKhachSan], [DiaChi], [GioiThieu], [TieuDe], [GhiChu], [IsDelete], [Star]) VALUES (14, 10, 92, N'KSSP', N'Khách Sạn Pao ', N' Đường Violet, SaPa , Lào Cai', N'“Khách Sạn Pao  Sapa được xây dựng theo phong cách nhà gỗ mộc mạc với chỉ một phòng ngủ và được làm từ đá granite trắng. Đội ngũ nhân viên có phong cách phục vụ ân cần, chu đáo, đảm bảo quý khách sẽ hà... “', N'Khách Sạn Pao ', NULL, 0, 5)
INSERT [dbo].[KhachSan] ([IDKhachSan], [IDTinhThanh], [IDHinhAnh], [MaKhachSan], [TenKhachSan], [DiaChi], [GioiThieu], [TieuDe], [GhiChu], [IsDelete], [Star]) VALUES (15, 13, 93, N'KSHA', N'Lantana Hội An Boutique Hotel & Spa ', N'09 Thoại Ngọc Hầu, Cẩm Phô, Hội An, Quảng Nam', N'“Lantana Hoi An Boutique Hotel & Spa nằm bên bờ sông Hoài, cách sân bay quốc tế Đà Nẵng 25km và mất 5 phút đi bộ vào khu phố cổ Hội An, là nơi lý tưởng để Quý khách lựa chon cho chuyến công tác hoặc kỳ... “', N'Lantana Hội An Boutique Hotel & Spa ', NULL, 0, 5)
INSERT [dbo].[KhachSan] ([IDKhachSan], [IDTinhThanh], [IDHinhAnh], [MaKhachSan], [TenKhachSan], [DiaChi], [GioiThieu], [TieuDe], [GhiChu], [IsDelete], [Star]) VALUES (16, 12, 94, N'KSHL', N'Khách Sạn Royal Hạ Long ', N'Đường Hạ Long, Bãi Cháy, Hạ Long , Quảng Ninh', N'“Khách Sạn Royal Hạ Long có đội ngũ nhân viên được đào tạo chuyên nghiệp và tận tình. Phòng ốc thoáng mát, đầy đủ tiện nghi cần thiết. Trang thiết bị hiện đại và được bài trí sang trọng, ấm cúng. “', N'Khách Sạn Royal Hạ Long ', NULL, 0, 5)
INSERT [dbo].[KhachSan] ([IDKhachSan], [IDTinhThanh], [IDHinhAnh], [MaKhachSan], [TenKhachSan], [DiaChi], [GioiThieu], [TieuDe], [GhiChu], [IsDelete], [Star]) VALUES (17, 11, 95, N'KSH', N'Huế Riverside Boutique Resort & Spa ', N'588 Bùi Thị Xuân, Huế, Thừa Thiên Huế', N'“Huế Riverside Boutique Resort & Spa tọa lạc ngay trung tâm thành phố. Với hệ thống trang thiết bị hiện đại, đội ngũ nhân viên nhiệt tình, chuyên nghiệp hứa hẹn sẽ là một điểm dừng chân hoàn hảo du khá... “', N'Huế Riverside Boutique Resort & Spa ', NULL, 0, 4)
INSERT [dbo].[KhachSan] ([IDKhachSan], [IDTinhThanh], [IDHinhAnh], [MaKhachSan], [TenKhachSan], [DiaChi], [GioiThieu], [TieuDe], [GhiChu], [IsDelete], [Star]) VALUES (18, 5, 96, N'KSHN', N'Khách Sạn Mường Thanh Hà Nội', N'Bắc Linh Đàm, Hoàng Mai, Hà Nội', N'“Khách Sạn Mường Thanh Hà Nội là lựa chọn lý tưởng cho bạn để đi du lịch hay đi công tác với giá cả hợp lí. Các phòng nghỉ đầy đủ tiện nghi. Đội ngũ nhân viên khách sạn phục vụ thân thiện và nhiệt tình... “', N'Khách Sạn Mường Thanh Hà Nội', NULL, 0, 4)
INSERT [dbo].[KhachSan] ([IDKhachSan], [IDTinhThanh], [IDHinhAnh], [MaKhachSan], [TenKhachSan], [DiaChi], [GioiThieu], [TieuDe], [GhiChu], [IsDelete], [Star]) VALUES (19, 15, 103, N'Khách Sạn Imperial Huế ', N'Khách Sạn Imperial Huế ', N' 8 Hùng Vương, Huế, Thừa Thiên Huế', N'“Khách Sạn Imperial Huế có thiết kế cực kỳ sang trọng, bài trí mang đậm phong cách hoàng gia. Đội ngũ nhân viên phục vụ tận tình và chu đáo. Khách sạn nằm ở trung tâm nên thuận tiện đi lại và tham quan... “', N'Khách Sạn Imperial Huế ', NULL, 0, 5)
SET IDENTITY_INSERT [dbo].[KhachSan] OFF
SET IDENTITY_INSERT [dbo].[LoaiPhong] ON 

INSERT [dbo].[LoaiPhong] ([ID_LoaiPhong], [TenLoai], [GhiChu]) VALUES (1, N'Phòng Gia đình', NULL)
INSERT [dbo].[LoaiPhong] ([ID_LoaiPhong], [TenLoai], [GhiChu]) VALUES (2, N'Phòng Tiêu Chuẩn', NULL)
INSERT [dbo].[LoaiPhong] ([ID_LoaiPhong], [TenLoai], [GhiChu]) VALUES (3, N'Phòng Cao Cấp', NULL)
SET IDENTITY_INSERT [dbo].[LoaiPhong] OFF
INSERT [dbo].[PhanQuyen] ([IDQuyen], [IDTaiKhoan]) VALUES (1, 1)
INSERT [dbo].[PhanQuyen] ([IDQuyen], [IDTaiKhoan]) VALUES (1, 2)
INSERT [dbo].[PhanQuyen] ([IDQuyen], [IDTaiKhoan]) VALUES (1, 3)
INSERT [dbo].[PhanQuyen] ([IDQuyen], [IDTaiKhoan]) VALUES (1, 4)
INSERT [dbo].[PhanQuyen] ([IDQuyen], [IDTaiKhoan]) VALUES (2, 1)
SET IDENTITY_INSERT [dbo].[Phong] ON 

INSERT [dbo].[Phong] ([IDPhong], [TenPhong], [ID_ViTri], [TrangThai], [GiaPhong], [ID_LoaiPhong], [Active], [IsDelete], [IDKhachSan], [GiaKM], [Star]) VALUES (1, N'Phòng 1 giường đôi', 1, N'SanSang', 500000, 1, 1, 0, 1, 150000, 5)
INSERT [dbo].[Phong] ([IDPhong], [TenPhong], [ID_ViTri], [TrangThai], [GiaPhong], [ID_LoaiPhong], [Active], [IsDelete], [IDKhachSan], [GiaKM], [Star]) VALUES (2, N'Superior Double Room - No Window  (1 Giường đôi)', 2, N'SanSang', 1000000, 2, 1, 0, 2, 350000, 2)
INSERT [dbo].[Phong] ([IDPhong], [TenPhong], [ID_ViTri], [TrangThai], [GiaPhong], [ID_LoaiPhong], [Active], [IsDelete], [IDKhachSan], [GiaKM], [Star]) VALUES (3, N'Standard', 1, N'DonDep', 750000, 2, 1, 0, 3, 150000, 5)
INSERT [dbo].[Phong] ([IDPhong], [TenPhong], [ID_ViTri], [TrangThai], [GiaPhong], [ID_LoaiPhong], [Active], [IsDelete], [IDKhachSan], [GiaKM], [Star]) VALUES (4, N'P101', 1, N'SanSang', 200000, 2, 1, 0, 4, 150000, 5)
INSERT [dbo].[Phong] ([IDPhong], [TenPhong], [ID_ViTri], [TrangThai], [GiaPhong], [ID_LoaiPhong], [Active], [IsDelete], [IDKhachSan], [GiaKM], [Star]) VALUES (5, N'P101', 1, N'SanSang', 200000, 1, 1, 0, 5, 100000, 4)
INSERT [dbo].[Phong] ([IDPhong], [TenPhong], [ID_ViTri], [TrangThai], [GiaPhong], [ID_LoaiPhong], [Active], [IsDelete], [IDKhachSan], [GiaKM], [Star]) VALUES (6, N'P101', 1, N'SanSang', 200000, 2, 1, 0, 6, 150000, 5)
INSERT [dbo].[Phong] ([IDPhong], [TenPhong], [ID_ViTri], [TrangThai], [GiaPhong], [ID_LoaiPhong], [Active], [IsDelete], [IDKhachSan], [GiaKM], [Star]) VALUES (7, N'P101', 1, N'SanSang', 200000, 1, 1, 0, 7, 150000, 5)
INSERT [dbo].[Phong] ([IDPhong], [TenPhong], [ID_ViTri], [TrangThai], [GiaPhong], [ID_LoaiPhong], [Active], [IsDelete], [IDKhachSan], [GiaKM], [Star]) VALUES (8, N'P101', 1, N'SanSang', 200000, 2, 1, 0, 8, 150000, 4)
INSERT [dbo].[Phong] ([IDPhong], [TenPhong], [ID_ViTri], [TrangThai], [GiaPhong], [ID_LoaiPhong], [Active], [IsDelete], [IDKhachSan], [GiaKM], [Star]) VALUES (11, N'Club Double ( 1 giường đơn )', 2, N'SanSang', 1567000, 2, 1, 0, 1, 150000, 3)
INSERT [dbo].[Phong] ([IDPhong], [TenPhong], [ID_ViTri], [TrangThai], [GiaPhong], [ID_LoaiPhong], [Active], [IsDelete], [IDKhachSan], [GiaKM], [Star]) VALUES (12, N'Grand Deluxe Double or Twin Room  ', 1, N'SanSang', 1840000, 3, 1, 0, 2, 300000, 1)
INSERT [dbo].[Phong] ([IDPhong], [TenPhong], [ID_ViTri], [TrangThai], [GiaPhong], [ID_LoaiPhong], [Active], [IsDelete], [IDKhachSan], [GiaKM], [Star]) VALUES (13, N'Superior (2 Giường đơn, 1 Giường đôi lớn)', 1, N'SanSang', 1320000, 1, 1, 0, 3, 150000, 5)
INSERT [dbo].[Phong] ([IDPhong], [TenPhong], [ID_ViTri], [TrangThai], [GiaPhong], [ID_LoaiPhong], [Active], [IsDelete], [IDKhachSan], [GiaKM], [Star]) VALUES (14, N'P101', 1, N'SanSang', 200000, 1, 1, 0, 4, 150000, 4)
INSERT [dbo].[Phong] ([IDPhong], [TenPhong], [ID_ViTri], [TrangThai], [GiaPhong], [ID_LoaiPhong], [Active], [IsDelete], [IDKhachSan], [GiaKM], [Star]) VALUES (15, N'P101', 1, N'SanSang', 200000, 2, 1, 0, 5, 150000, 2)
INSERT [dbo].[Phong] ([IDPhong], [TenPhong], [ID_ViTri], [TrangThai], [GiaPhong], [ID_LoaiPhong], [Active], [IsDelete], [IDKhachSan], [GiaKM], [Star]) VALUES (16, N'P101', 1, N'SanSang', 200000, 1, 1, 0, 6, 150000, 4)
INSERT [dbo].[Phong] ([IDPhong], [TenPhong], [ID_ViTri], [TrangThai], [GiaPhong], [ID_LoaiPhong], [Active], [IsDelete], [IDKhachSan], [GiaKM], [Star]) VALUES (17, N'P101', 1, N'SanSang', 200000, 1, 1, 0, 7, 150000, 5)
INSERT [dbo].[Phong] ([IDPhong], [TenPhong], [ID_ViTri], [TrangThai], [GiaPhong], [ID_LoaiPhong], [Active], [IsDelete], [IDKhachSan], [GiaKM], [Star]) VALUES (18, N'P101', 1, N'SanSang', 200000, 1, 1, 0, 8, 150000, 4)
INSERT [dbo].[Phong] ([IDPhong], [TenPhong], [ID_ViTri], [TrangThai], [GiaPhong], [ID_LoaiPhong], [Active], [IsDelete], [IDKhachSan], [GiaKM], [Star]) VALUES (19, N'Deluxe Twin (2 giường đơn)', 3, N'SuDung', 2000000, 3, 1, 0, 1, 500000, 3)
INSERT [dbo].[Phong] ([IDPhong], [TenPhong], [ID_ViTri], [TrangThai], [GiaPhong], [ID_LoaiPhong], [Active], [IsDelete], [IDKhachSan], [GiaKM], [Star]) VALUES (21, N'Phòng 2 giường đơn', 1, N'DonDep', 100000, 1, 1, 0, 10, 250000, 3)
INSERT [dbo].[Phong] ([IDPhong], [TenPhong], [ID_ViTri], [TrangThai], [GiaPhong], [ID_LoaiPhong], [Active], [IsDelete], [IDKhachSan], [GiaKM], [Star]) VALUES (22, N'Phòng đôi hướng biển', 2, N'SanSang', 500000, 3, 1, 0, 10, 150000, 5)
INSERT [dbo].[Phong] ([IDPhong], [TenPhong], [ID_ViTri], [TrangThai], [GiaPhong], [ID_LoaiPhong], [Active], [IsDelete], [IDKhachSan], [GiaKM], [Star]) VALUES (23, N'Phòng 1 giường đôi hướng phố', 3, N'SuaChua', 3000000, 3, 1, 0, 1, 150000, 5)
INSERT [dbo].[Phong] ([IDPhong], [TenPhong], [ID_ViTri], [TrangThai], [GiaPhong], [ID_LoaiPhong], [Active], [IsDelete], [IDKhachSan], [GiaKM], [Star]) VALUES (24, N'Junior Double (1 giường đôi)', 2, N'SuDung', 2664000, 3, 1, 0, 1, 150000, 5)
INSERT [dbo].[Phong] ([IDPhong], [TenPhong], [ID_ViTri], [TrangThai], [GiaPhong], [ID_LoaiPhong], [Active], [IsDelete], [IDKhachSan], [GiaKM], [Star]) VALUES (25, N'Club Twin (1 giường đôi)', 4, N'DonDep', 2500000, 3, 1, 0, 1, 200000, 2)
INSERT [dbo].[Phong] ([IDPhong], [TenPhong], [ID_ViTri], [TrangThai], [GiaPhong], [ID_LoaiPhong], [Active], [IsDelete], [IDKhachSan], [GiaKM], [Star]) VALUES (26, N'Deluxe Double', 5, N'SanSang', 2500000, 3, 1, 0, 1, 150000, 5)
INSERT [dbo].[Phong] ([IDPhong], [TenPhong], [ID_ViTri], [TrangThai], [GiaPhong], [ID_LoaiPhong], [Active], [IsDelete], [IDKhachSan], [GiaKM], [Star]) VALUES (27, N'Deluxe Twin', 1, N'SanSang', 1650000, 2, 1, 0, 18, 100000, 3)
INSERT [dbo].[Phong] ([IDPhong], [TenPhong], [ID_ViTri], [TrangThai], [GiaPhong], [ID_LoaiPhong], [Active], [IsDelete], [IDKhachSan], [GiaKM], [Star]) VALUES (28, N'Grand Suite', 3, N'SanSang', 2500000, 3, 1, 0, 18, 100000, 4)
INSERT [dbo].[Phong] ([IDPhong], [TenPhong], [ID_ViTri], [TrangThai], [GiaPhong], [ID_LoaiPhong], [Active], [IsDelete], [IDKhachSan], [GiaKM], [Star]) VALUES (29, N'Deluxe River View', 1, N'SanSang', 2025000, 1, 1, 0, 19, 150000, 4)
INSERT [dbo].[Phong] ([IDPhong], [TenPhong], [ID_ViTri], [TrangThai], [GiaPhong], [ID_LoaiPhong], [Active], [IsDelete], [IDKhachSan], [GiaKM], [Star]) VALUES (30, N'Junior Suite River View', 3, N'SanSang', 3240000, 1, 1, 0, 19, 100000, 5)
SET IDENTITY_INSERT [dbo].[Phong] OFF
SET IDENTITY_INSERT [dbo].[Phong_HinhAnh] ON 

INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (29, 8, 14, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (30, 9, 14, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (31, 10, 14, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (32, 11, 14, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (33, 12, 14, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (34, 2, 4, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (35, 3, 4, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (36, 4, 4, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (37, 6, 4, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (42, 2, 21, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (43, 2, 21, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (54, 42, 5, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (57, 45, 7, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (58, 46, 17, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (59, 48, 8, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (60, 50, 8, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (61, 51, 8, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (62, 52, 8, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (63, 53, 8, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (64, 54, 8, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (65, 55, 8, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (66, 56, 8, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (67, 57, 8, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (75, 58, 11, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (76, 59, 11, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (77, 60, 11, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (78, 61, 11, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (79, 63, 11, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (80, 64, 11, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (81, 65, 11, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (83, 66, 1, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (84, 61, 1, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (85, 62, 1, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (86, 63, 1, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (87, 64, 1, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (88, 65, 1, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (89, 66, 1, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (90, 45, 19, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (91, 61, 19, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (92, 62, 19, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (93, 63, 19, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (94, 65, 19, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (95, 40, 24, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (96, 40, 24, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (97, 61, 24, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (98, 62, 24, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (99, 63, 24, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (100, 64, 24, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (101, 65, 24, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (102, 66, 24, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (104, 68, 2, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (105, 69, 2, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (106, 70, 2, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (107, 71, 2, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (108, 72, 2, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (114, 70, 12, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (115, 71, 12, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (116, 72, 12, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (117, 68, 12, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (118, 69, 12, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (119, 70, 12, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (120, 71, 12, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (121, 72, 12, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (139, 75, 13, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (140, 76, 13, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (141, 77, 13, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (142, 78, 13, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (143, 79, 13, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (144, 80, 13, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (145, 81, 13, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (146, 82, 13, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (147, 97, 27, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (148, 98, 27, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (149, 99, 27, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (150, 100, 27, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (151, 101, 27, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (152, 102, 27, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (153, 97, 28, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (154, 98, 28, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (155, 99, 28, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (156, 100, 28, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (157, 101, 28, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (158, 102, 28, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (159, 104, 29, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (160, 105, 29, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (161, 106, 29, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (162, 107, 29, 1, N'')
INSERT [dbo].[Phong_HinhAnh] ([IDPhong_HinhAnh], [IDHinhAnh], [IDPhong], [Rank], [GhiChu]) VALUES (163, 108, 29, 1, N'')
SET IDENTITY_INSERT [dbo].[Phong_HinhAnh] OFF
SET IDENTITY_INSERT [dbo].[Quyen] ON 

INSERT [dbo].[Quyen] ([IDQuyen], [TenQuyen], [GhiChu]) VALUES (1, N'Xem', N'Xem')
INSERT [dbo].[Quyen] ([IDQuyen], [TenQuyen], [GhiChu]) VALUES (2, N'ThemSuaXoa', N'Thêm sửa xóa')
SET IDENTITY_INSERT [dbo].[Quyen] OFF
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [HoTen], [SDT], [NgaySinh], [TenDangNhap], [MatKhau], [IDChucVu], [IsDelete]) VALUES (1, N'admin', N'0987654321', CAST(N'1990-01-01' AS Date), N'admin', N'12345678', 1, 0)
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [HoTen], [SDT], [NgaySinh], [TenDangNhap], [MatKhau], [IDChucVu], [IsDelete]) VALUES (2, N'Nhân Viên 01', N'0987654321', CAST(N'1971-01-25' AS Date), N'NhanVien1', N'12345678', 2, 1)
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [HoTen], [SDT], [NgaySinh], [TenDangNhap], [MatKhau], [IDChucVu], [IsDelete]) VALUES (3, N'Nguyễn Thị Hằng', N'0973724108', CAST(N'1996-09-21' AS Date), N'hangdieu', N'12345678', 2, 0)
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [HoTen], [SDT], [NgaySinh], [TenDangNhap], [MatKhau], [IDChucVu], [IsDelete]) VALUES (4, N'Nguyễn Văn A', N'0987654321', CAST(N'2018-01-01' AS Date), N'NhanVien1', N'12345678', 2, 0)
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
SET IDENTITY_INSERT [dbo].[TinhThanh] ON 

INSERT [dbo].[TinhThanh] ([IDTinhThanh], [IDHinhAnh], [MaTinh], [TenTinh], [GhiChu], [IsDelete]) VALUES (1, 23, N'HCM', N'Hồ Chí Minh', NULL, 0)
INSERT [dbo].[TinhThanh] ([IDTinhThanh], [IDHinhAnh], [MaTinh], [TenTinh], [GhiChu], [IsDelete]) VALUES (2, 24, N'DaNang', N'Đà Nẵng', NULL, 0)
INSERT [dbo].[TinhThanh] ([IDTinhThanh], [IDHinhAnh], [MaTinh], [TenTinh], [GhiChu], [IsDelete]) VALUES (3, 25, N'VungTau', N'Bà Rịa - Vũng Tàu', NULL, 1)
INSERT [dbo].[TinhThanh] ([IDTinhThanh], [IDHinhAnh], [MaTinh], [TenTinh], [GhiChu], [IsDelete]) VALUES (4, 26, N'DaLat', N'Đà Lạt', NULL, 1)
INSERT [dbo].[TinhThanh] ([IDTinhThanh], [IDHinhAnh], [MaTinh], [TenTinh], [GhiChu], [IsDelete]) VALUES (5, 21, N'HN', N'Hà Nội', NULL, 0)
INSERT [dbo].[TinhThanh] ([IDTinhThanh], [IDHinhAnh], [MaTinh], [TenTinh], [GhiChu], [IsDelete]) VALUES (6, 28, N'PhanThiet', N'Phan Thiết', NULL, 0)
INSERT [dbo].[TinhThanh] ([IDTinhThanh], [IDHinhAnh], [MaTinh], [TenTinh], [GhiChu], [IsDelete]) VALUES (7, 27, N'NhaTrang', N'Nha Trang', NULL, 0)
INSERT [dbo].[TinhThanh] ([IDTinhThanh], [IDHinhAnh], [MaTinh], [TenTinh], [GhiChu], [IsDelete]) VALUES (8, 20, N'TayNinh', N'Tây Ninh', NULL, 1)
INSERT [dbo].[TinhThanh] ([IDTinhThanh], [IDHinhAnh], [MaTinh], [TenTinh], [GhiChu], [IsDelete]) VALUES (9, 29, N'PhuQuoc', N'Phú Quốc', NULL, 0)
INSERT [dbo].[TinhThanh] ([IDTinhThanh], [IDHinhAnh], [MaTinh], [TenTinh], [GhiChu], [IsDelete]) VALUES (10, 30, N'SaPa', N'Sa Pa', NULL, 0)
INSERT [dbo].[TinhThanh] ([IDTinhThanh], [IDHinhAnh], [MaTinh], [TenTinh], [GhiChu], [IsDelete]) VALUES (11, 31, N'Hue', N'Huế', NULL, 1)
INSERT [dbo].[TinhThanh] ([IDTinhThanh], [IDHinhAnh], [MaTinh], [TenTinh], [GhiChu], [IsDelete]) VALUES (12, 32, N'HaLong', N'Hạ Long', NULL, 0)
INSERT [dbo].[TinhThanh] ([IDTinhThanh], [IDHinhAnh], [MaTinh], [TenTinh], [GhiChu], [IsDelete]) VALUES (13, 33, N'HoiAn', N'Hội An', NULL, 0)
INSERT [dbo].[TinhThanh] ([IDTinhThanh], [IDHinhAnh], [MaTinh], [TenTinh], [GhiChu], [IsDelete]) VALUES (14, 25, N'VungTau', N'Bà Rịa - Vũng Tàu', NULL, 0)
INSERT [dbo].[TinhThanh] ([IDTinhThanh], [IDHinhAnh], [MaTinh], [TenTinh], [GhiChu], [IsDelete]) VALUES (15, 31, N'Hue', N'Huế', NULL, 0)
INSERT [dbo].[TinhThanh] ([IDTinhThanh], [IDHinhAnh], [MaTinh], [TenTinh], [GhiChu], [IsDelete]) VALUES (16, 26, N'DaLat', N'Đà Lạt', NULL, 0)
INSERT [dbo].[TinhThanh] ([IDTinhThanh], [IDHinhAnh], [MaTinh], [TenTinh], [GhiChu], [IsDelete]) VALUES (17, 109, N'HN', N'Hà Nam', NULL, 0)
INSERT [dbo].[TinhThanh] ([IDTinhThanh], [IDHinhAnh], [MaTinh], [TenTinh], [GhiChu], [IsDelete]) VALUES (18, 108, N'79', N'Khánh Hòa', NULL, 0)
SET IDENTITY_INSERT [dbo].[TinhThanh] OFF
SET IDENTITY_INSERT [dbo].[ViTri] ON 

INSERT [dbo].[ViTri] ([ID_ViTri], [TenViTri], [GhiChu]) VALUES (1, N'TẦNG 1', NULL)
INSERT [dbo].[ViTri] ([ID_ViTri], [TenViTri], [GhiChu]) VALUES (2, N'TẦNG 2', NULL)
INSERT [dbo].[ViTri] ([ID_ViTri], [TenViTri], [GhiChu]) VALUES (3, N'TẦNG 3', NULL)
INSERT [dbo].[ViTri] ([ID_ViTri], [TenViTri], [GhiChu]) VALUES (4, N'TẦNG 4', NULL)
INSERT [dbo].[ViTri] ([ID_ViTri], [TenViTri], [GhiChu]) VALUES (5, N'TẦNG 5', NULL)
INSERT [dbo].[ViTri] ([ID_ViTri], [TenViTri], [GhiChu]) VALUES (6, N'NGOÀI TRỜI', N'DA XOA')
INSERT [dbo].[ViTri] ([ID_ViTri], [TenViTri], [GhiChu]) VALUES (7, N'Ngoài Trời', N'DA XOA')
SET IDENTITY_INSERT [dbo].[ViTri] OFF
ALTER TABLE [dbo].[DangKiDatPhong]  WITH CHECK ADD  CONSTRAINT [FK_DangKiDatPhong_Phong] FOREIGN KEY([ID_Phong])
REFERENCES [dbo].[Phong] ([IDPhong])
GO
ALTER TABLE [dbo].[DangKiDatPhong] CHECK CONSTRAINT [FK_DangKiDatPhong_Phong]
GO
ALTER TABLE [dbo].[DatPhong]  WITH CHECK ADD  CONSTRAINT [FK_DatPhong_KhachHang] FOREIGN KEY([IDKhachHang])
REFERENCES [dbo].[KhachHang] ([IDKhachHang])
GO
ALTER TABLE [dbo].[DatPhong] CHECK CONSTRAINT [FK_DatPhong_KhachHang]
GO
ALTER TABLE [dbo].[DatPhong]  WITH CHECK ADD  CONSTRAINT [FK_DatPhong_Phong] FOREIGN KEY([IDPhong])
REFERENCES [dbo].[Phong] ([IDPhong])
GO
ALTER TABLE [dbo].[DatPhong] CHECK CONSTRAINT [FK_DatPhong_Phong]
GO
ALTER TABLE [dbo].[DatPhong]  WITH CHECK ADD  CONSTRAINT [FK_DatPhong_TaiKhoan] FOREIGN KEY([IDTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([IDTaiKhoan])
GO
ALTER TABLE [dbo].[DatPhong] CHECK CONSTRAINT [FK_DatPhong_TaiKhoan]
GO
ALTER TABLE [dbo].[GiaoDich]  WITH CHECK ADD  CONSTRAINT [FK_GiaoDich_DatPhong] FOREIGN KEY([IDDatPhong])
REFERENCES [dbo].[DatPhong] ([IDDatPhong])
GO
ALTER TABLE [dbo].[GiaoDich] CHECK CONSTRAINT [FK_GiaoDich_DatPhong]
GO
ALTER TABLE [dbo].[GiaoDich]  WITH CHECK ADD  CONSTRAINT [FK_GiaoDich_DichVu] FOREIGN KEY([IDDichVu])
REFERENCES [dbo].[DichVu] ([IDDichVu])
GO
ALTER TABLE [dbo].[GiaoDich] CHECK CONSTRAINT [FK_GiaoDich_DichVu]
GO
ALTER TABLE [dbo].[GiaoDich]  WITH CHECK ADD  CONSTRAINT [FK_GiaoDich_TaiKhoan] FOREIGN KEY([IDTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([IDTaiKhoan])
GO
ALTER TABLE [dbo].[GiaoDich] CHECK CONSTRAINT [FK_GiaoDich_TaiKhoan]
GO
ALTER TABLE [dbo].[KhachSan]  WITH CHECK ADD  CONSTRAINT [FK_KhachSan_HinhAnh] FOREIGN KEY([IDHinhAnh])
REFERENCES [dbo].[HinhAnh] ([IDHinhAnh])
GO
ALTER TABLE [dbo].[KhachSan] CHECK CONSTRAINT [FK_KhachSan_HinhAnh]
GO
ALTER TABLE [dbo].[KhachSan]  WITH CHECK ADD  CONSTRAINT [FK_KhachSan_TinhThanh] FOREIGN KEY([IDTinhThanh])
REFERENCES [dbo].[TinhThanh] ([IDTinhThanh])
GO
ALTER TABLE [dbo].[KhachSan] CHECK CONSTRAINT [FK_KhachSan_TinhThanh]
GO
ALTER TABLE [dbo].[PhanQuyen]  WITH CHECK ADD  CONSTRAINT [FK_PhanQuyen_Quyen] FOREIGN KEY([IDQuyen])
REFERENCES [dbo].[Quyen] ([IDQuyen])
GO
ALTER TABLE [dbo].[PhanQuyen] CHECK CONSTRAINT [FK_PhanQuyen_Quyen]
GO
ALTER TABLE [dbo].[PhanQuyen]  WITH CHECK ADD  CONSTRAINT [FK_PhanQuyen_TaiKhoan] FOREIGN KEY([IDTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([IDTaiKhoan])
GO
ALTER TABLE [dbo].[PhanQuyen] CHECK CONSTRAINT [FK_PhanQuyen_TaiKhoan]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_KhachSan] FOREIGN KEY([IDKhachSan])
REFERENCES [dbo].[KhachSan] ([IDKhachSan])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_KhachSan]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_LoaiPhong] FOREIGN KEY([ID_LoaiPhong])
REFERENCES [dbo].[LoaiPhong] ([ID_LoaiPhong])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_LoaiPhong]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_ViTri] FOREIGN KEY([ID_ViTri])
REFERENCES [dbo].[ViTri] ([ID_ViTri])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_ViTri]
GO
ALTER TABLE [dbo].[Phong_HinhAnh]  WITH CHECK ADD  CONSTRAINT [FK_Phong_HinhAnh_HinhAnh] FOREIGN KEY([IDHinhAnh])
REFERENCES [dbo].[HinhAnh] ([IDHinhAnh])
GO
ALTER TABLE [dbo].[Phong_HinhAnh] CHECK CONSTRAINT [FK_Phong_HinhAnh_HinhAnh]
GO
ALTER TABLE [dbo].[Phong_HinhAnh]  WITH CHECK ADD  CONSTRAINT [FK_Phong_HinhAnh_Phong] FOREIGN KEY([IDPhong])
REFERENCES [dbo].[Phong] ([IDPhong])
GO
ALTER TABLE [dbo].[Phong_HinhAnh] CHECK CONSTRAINT [FK_Phong_HinhAnh_Phong]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_ChucVu] FOREIGN KEY([IDChucVu])
REFERENCES [dbo].[ChucVu] ([IDChucVu])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_ChucVu]
GO
ALTER TABLE [dbo].[TinhThanh]  WITH CHECK ADD  CONSTRAINT [FK_TinhThanh_HinhAnh] FOREIGN KEY([IDHinhAnh])
REFERENCES [dbo].[HinhAnh] ([IDHinhAnh])
GO
ALTER TABLE [dbo].[TinhThanh] CHECK CONSTRAINT [FK_TinhThanh_HinhAnh]
GO
/****** Object:  StoredProcedure [dbo].[SP_ChucVu_Delete]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_ChucVu_Delete]
  @IDChucVu int
AS BEGIN
    UPDATE [ChucVu] SET [IsDelete] = 1 WHERE    [IDChucVu] = @IDChucVu 
END;



GO
/****** Object:  StoredProcedure [dbo].[SP_ChucVu_GetAll]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_ChucVu_GetAll]
AS BEGIN
    SELECT 
[ChucVu].[GhiChu]
,[ChucVu].[IDChucVu]
,[ChucVu].[IsDelete]
,[ChucVu].[TenCV] FROM [ChucVu] as [ChucVu] 
     
    
WHERE [ChucVu].[IsDelete] = 0 
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_ChucVu_GetByIDChucVu]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_ChucVu_GetByIDChucVu]
@IDChucVu int
AS BEGIN
    SELECT 
    
[ChucVu].[GhiChu]
,[ChucVu].[IDChucVu]
,[ChucVu].[IsDelete]
,[ChucVu].[TenCV] 
    FROM [ChucVu] as [ChucVu] 
     
     WHERE [ChucVu].[IDChucVu] = @IDChucVu  AND [ChucVu].[IsDelete] = 0 
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_ChucVu_Insert]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_ChucVu_Insert]
 @GhiChu nvarchar(50), @IsDelete bit, @TenCV nvarchar(50)
AS BEGIN
    INSERT INTO [ChucVu](  [GhiChu] , [IsDelete] , [TenCV]) VALUES( @GhiChu, @IsDelete, @TenCV)
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_ChucVu_Update]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_ChucVu_Update]
 @GhiChu nvarchar(50), @IDChucVu int, @IsDelete bit, @TenCV nvarchar(50)
AS BEGIN
    UPDATE [ChucVu] SET  [GhiChu] = @GhiChu, [IsDelete] = @IsDelete, [TenCV] = @TenCV WHERE   [IDChucVu] = @IDChucVu
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_DangKiDatPhong_Delete]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_DangKiDatPhong_Delete]
  @ID_DangKi int
AS BEGIN
    DELETE [DangKiDatPhong] WHERE    [ID_DangKi] = @ID_DangKi 
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_DangKiDatPhong_GetAll]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_DangKiDatPhong_GetAll]
AS BEGIN
    SELECT 
[DangKiDatPhong].[Email]
,[DangKiDatPhong].[GhiChu]
,[DangKiDatPhong].[HoTen]
,[DangKiDatPhong].[ID_DangKi]
,[DangKiDatPhong].[ID_Phong]
,[DangKiDatPhong].[Message]
,[DangKiDatPhong].[NgayTao]
,[DangKiDatPhong].[Phone]
,[DangKiDatPhong].[Status]
,[DangKiDatPhong].[TimeEnd]
,[DangKiDatPhong].[TimeStart]
,[PhongJoin].[Active] as [Active_PhongJoin]
,[PhongJoin].[GiaPhong] as [GiaPhong_PhongJoin]
,[PhongJoin].[ID_LoaiPhong] as [ID_LoaiPhong_PhongJoin]
,[PhongJoin].[ID_ViTri] as [ID_ViTri_PhongJoin]
,[PhongJoin].[IsDelete] as [IsDelete_PhongJoin]
,[PhongJoin].[TenPhong] as [TenPhong_PhongJoin]
,[PhongJoin].[TrangThai] as [TrangThai_PhongJoin] FROM [DangKiDatPhong] as [DangKiDatPhong] 
    
join [Phong] as [PhongJoin] on [DangKiDatPhong].[ID_Phong] = [PhongJoin].[IDPhong] 
    
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_DangKiDatPhong_GetByID_DangKi]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_DangKiDatPhong_GetByID_DangKi]
@ID_DangKi int
AS BEGIN
    SELECT 
    
[DangKiDatPhong].[Email]
,[DangKiDatPhong].[GhiChu]
,[DangKiDatPhong].[HoTen]
,[DangKiDatPhong].[ID_DangKi]
,[DangKiDatPhong].[ID_Phong]
,[DangKiDatPhong].[Message]
,[DangKiDatPhong].[NgayTao]
,[DangKiDatPhong].[Phone]
,[DangKiDatPhong].[Status]
,[DangKiDatPhong].[TimeEnd]
,[DangKiDatPhong].[TimeStart]
,[PhongJoin].[Active] as [Active_PhongJoin]
,[PhongJoin].[GiaPhong] as [GiaPhong_PhongJoin]
,[PhongJoin].[ID_LoaiPhong] as [ID_LoaiPhong_PhongJoin]
,[PhongJoin].[ID_ViTri] as [ID_ViTri_PhongJoin]
,[PhongJoin].[IsDelete] as [IsDelete_PhongJoin]
,[PhongJoin].[TenPhong] as [TenPhong_PhongJoin]
,[PhongJoin].[TrangThai] as [TrangThai_PhongJoin] 
    FROM [DangKiDatPhong] as [DangKiDatPhong] 
    
join [Phong] as [PhongJoin] on [DangKiDatPhong].[ID_Phong] = [PhongJoin].[IDPhong] 
     WHERE [DangKiDatPhong].[ID_DangKi] = @ID_DangKi 
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_DangKiDatPhong_Insert]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_DangKiDatPhong_Insert]
 @Email nvarchar(50), @GhiChu nvarchar(500), @HoTen nvarchar(50), @ID_Phong int, @Message nvarchar(500), @NgayTao datetime, @Phone nvarchar(50), @Status tinyint, @TimeEnd datetime, @TimeStart datetime
AS BEGIN
    INSERT INTO [DangKiDatPhong](  [Email] , [GhiChu] , [HoTen] , [ID_Phong] , [Message] , [NgayTao] , [Phone] , [Status] , [TimeEnd] , [TimeStart]) VALUES( @Email, @GhiChu, @HoTen, @ID_Phong, @Message, @NgayTao, @Phone, @Status, @TimeEnd, @TimeStart)
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_DangKiDatPhong_Update]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_DangKiDatPhong_Update]
 @Email nvarchar(50), @GhiChu nvarchar(500), @HoTen nvarchar(50), @ID_DangKi int, @ID_Phong int, @Message nvarchar(500), @NgayTao datetime, @Phone nvarchar(50), @Status tinyint, @TimeEnd datetime, @TimeStart datetime
AS BEGIN
    UPDATE [DangKiDatPhong] SET  [Email] = @Email, [GhiChu] = @GhiChu, [HoTen] = @HoTen, [ID_Phong] = @ID_Phong, [Message] = @Message, [NgayTao] = @NgayTao, [Phone] = @Phone, [Status] = @Status, [TimeEnd] = @TimeEnd, [TimeStart] = @TimeStart WHERE   [ID_DangKi] = @ID_DangKi
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_DatPhong_Delete]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_DatPhong_Delete]
  @IDDatPhong int
AS BEGIN
    DELETE [DatPhong] WHERE    [IDDatPhong] = @IDDatPhong 
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_DatPhong_GetAll]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


;CREATE PROC [dbo].[SP_DatPhong_GetAll]
AS BEGIN
    SELECT 
[DatPhong].[BatDau]
,[DatPhong].[IDDatPhong]
,[DatPhong].[IDKhachHang]
,[DatPhong].[IDPhong]
,[DatPhong].[IDTaiKhoan]
,[DatPhong].[KetThuc]
,[DatPhong].[Status]
,[DatPhong].[ThanhToan]
,[DatPhong].[TongTien]
,[KhachHangJoin].[CMT] as [CMT_KhachHangJoin]
,[KhachHangJoin].[DiaChi] as [DiaChi_KhachHangJoin]
,[KhachHangJoin].[GhiChu] as [GhiChu_KhachHangJoin]
,[KhachHangJoin].[HoTen] as [HoTen_KhachHangJoin]
,[KhachHangJoin].[IsDelete] as [IsDelete_KhachHangJoin]
,[KhachHangJoin].[IsMale] as [IsMale_KhachHangJoin]
,[KhachHangJoin].[NgaySinh] as [NgaySinh_KhachHangJoin]
,[KhachHangJoin].[SDT] as [SDT_KhachHangJoin]
,[PhongJoin].[Active] as [Active_PhongJoin]
,[PhongJoin].[GiaPhong] as [GiaPhong_PhongJoin]
,[PhongJoin].[ID_LoaiPhong] as [ID_LoaiPhong_PhongJoin]
,[PhongJoin].[ID_ViTri] as [ID_ViTri_PhongJoin]
,[PhongJoin].[IsDelete] as [IsDelete_PhongJoin]
,[PhongJoin].[TenPhong] as [TenPhong_PhongJoin]
,[PhongJoin].IDKhachSan as [IDKhachSan_PhongJoin]
,[PhongJoin].[TrangThai] as [TrangThai_PhongJoin]
,[TaiKhoanJoin].[HoTen] as [HoTen_TaiKhoanJoin]
,[TaiKhoanJoin].[IDChucVu] as [IDChucVu_TaiKhoanJoin]
,[TaiKhoanJoin].[IsDelete] as [IsDelete_TaiKhoanJoin]
,[TaiKhoanJoin].[MatKhau] as [MatKhau_TaiKhoanJoin]
,[TaiKhoanJoin].[NgaySinh] as [NgaySinh_TaiKhoanJoin]
,[TaiKhoanJoin].[SDT] as [SDT_TaiKhoanJoin]
,[TaiKhoanJoin].[TenDangNhap] as [TenDangNhap_TaiKhoanJoin] 
,KhachSan.TenKhachSan
,TinhThanh.TenTinh
,dbo.ViTri.TenViTri
FROM [DatPhong] as [DatPhong] 
    
join [KhachHang] as [KhachHangJoin] on [DatPhong].[IDKhachHang] = [KhachHangJoin].[IDKhachHang]
join [Phong] as [PhongJoin] on [DatPhong].[IDPhong] = [PhongJoin].[IDPhong]
join [TaiKhoan] as [TaiKhoanJoin] on [DatPhong].[IDTaiKhoan] = [TaiKhoanJoin].[IDTaiKhoan] 
JOIN dbo.ViTri ON ViTri.ID_ViTri = PhongJoin.ID_ViTri
JOIN dbo.KhachSan ON [PhongJoin].IDKhachSan = KhachSan.IDKhachSan
JOIN dbo.TinhThanh ON KhachSan.IDTinhThanh = TinhThanh.IDTinhThanh
    
END;

GO
/****** Object:  StoredProcedure [dbo].[SP_DatPhong_GetByIDDatPhong]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_DatPhong_GetByIDDatPhong]
@IDDatPhong int
AS BEGIN
    SELECT 
    
[DatPhong].[BatDau]
,[DatPhong].[IDDatPhong]
,[DatPhong].[IDKhachHang]
,[DatPhong].[IDPhong]
,[DatPhong].[IDTaiKhoan]
,[DatPhong].[KetThuc]
,[DatPhong].[Status]
,[DatPhong].[ThanhToan]
,[DatPhong].[TongTien]
,[KhachHangJoin].[CMT] as [CMT_KhachHangJoin]
,[KhachHangJoin].[DiaChi] as [DiaChi_KhachHangJoin]
,[KhachHangJoin].[GhiChu] as [GhiChu_KhachHangJoin]
,[KhachHangJoin].[HoTen] as [HoTen_KhachHangJoin]
,[KhachHangJoin].[IsDelete] as [IsDelete_KhachHangJoin]
,[KhachHangJoin].[IsMale] as [IsMale_KhachHangJoin]
,[KhachHangJoin].[NgaySinh] as [NgaySinh_KhachHangJoin]
,[KhachHangJoin].[SDT] as [SDT_KhachHangJoin]
,[PhongJoin].[Active] as [Active_PhongJoin]
,[PhongJoin].[GiaPhong] as [GiaPhong_PhongJoin]
,[PhongJoin].[ID_LoaiPhong] as [ID_LoaiPhong_PhongJoin]
,[PhongJoin].[ID_ViTri] as [ID_ViTri_PhongJoin]
,[PhongJoin].[IsDelete] as [IsDelete_PhongJoin]
,[PhongJoin].[TenPhong] as [TenPhong_PhongJoin]
,[PhongJoin].[TrangThai] as [TrangThai_PhongJoin]
,[PhongJoin].IDKhachSan as [IDKhachSan_PhongJoin]
,[TaiKhoanJoin].[HoTen] as [HoTen_TaiKhoanJoin]
,[TaiKhoanJoin].[IDChucVu] as [IDChucVu_TaiKhoanJoin]
,[TaiKhoanJoin].[IsDelete] as [IsDelete_TaiKhoanJoin]
,[TaiKhoanJoin].[MatKhau] as [MatKhau_TaiKhoanJoin]
,[TaiKhoanJoin].[NgaySinh] as [NgaySinh_TaiKhoanJoin]
,[TaiKhoanJoin].[SDT] as [SDT_TaiKhoanJoin]
,[TaiKhoanJoin].[TenDangNhap] as [TenDangNhap_TaiKhoanJoin] 
,dbo.ViTri.TenViTri
    FROM [DatPhong] as [DatPhong] 
    
join [KhachHang] as [KhachHangJoin] on [DatPhong].[IDKhachHang] = [KhachHangJoin].[IDKhachHang]
join [Phong] as [PhongJoin] on [DatPhong].[IDPhong] = [PhongJoin].[IDPhong]
join [TaiKhoan] as [TaiKhoanJoin] on [DatPhong].[IDTaiKhoan] = [TaiKhoanJoin].[IDTaiKhoan] 
JOIN dbo.ViTri ON ViTri.ID_ViTri = PhongJoin.ID_ViTri
     WHERE [DatPhong].[IDDatPhong] = @IDDatPhong 
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_DatPhong_Insert]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_DatPhong_Insert]
 @BatDau datetime, @IDKhachHang uniqueidentifier, @IDPhong int, @IDTaiKhoan int, @KetThuc datetime, @Status bit, @ThanhToan bigint, @TongTien bigint
AS BEGIN
    INSERT INTO [DatPhong](  [BatDau] , [IDKhachHang] , [IDPhong] , [IDTaiKhoan] , [KetThuc] , [Status] , [ThanhToan] , [TongTien]) VALUES( @BatDau, @IDKhachHang, @IDPhong, @IDTaiKhoan, @KetThuc, @Status, @ThanhToan, @TongTien)
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_DatPhong_Update]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_DatPhong_Update]
 @BatDau datetime, @IDDatPhong int, @IDKhachHang uniqueidentifier, @IDPhong int, @IDTaiKhoan int, @KetThuc datetime, @Status bit, @ThanhToan bigint, @TongTien bigint
AS BEGIN
    UPDATE [DatPhong] SET  [BatDau] = @BatDau, [IDKhachHang] = @IDKhachHang, [IDPhong] = @IDPhong, [IDTaiKhoan] = @IDTaiKhoan, [KetThuc] = @KetThuc, [Status] = @Status, [ThanhToan] = @ThanhToan, [TongTien] = @TongTien WHERE   [IDDatPhong] = @IDDatPhong
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_DichVu_Delete]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_DichVu_Delete]
  @IDDichVu int
AS BEGIN
    UPDATE [DichVu] SET [IsDelete] = 1 WHERE    [IDDichVu] = @IDDichVu 
END;



GO
/****** Object:  StoredProcedure [dbo].[SP_DichVu_GetAll]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_DichVu_GetAll]
AS BEGIN
    SELECT 
[DichVu].[Active]
,[DichVu].[DonVi]
,[DichVu].[GhiChu]
,[DichVu].[GiaTien]
,[DichVu].[IDDichVu]
,[DichVu].[IsDelete]
,[DichVu].[TenDichVu] FROM [DichVu] as [DichVu] 
     
    
WHERE [DichVu].[IsDelete] = 0 
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_DichVu_GetByIDDichVu]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_DichVu_GetByIDDichVu]
@IDDichVu int
AS BEGIN
    SELECT 
    
[DichVu].[Active]
,[DichVu].[DonVi]
,[DichVu].[GhiChu]
,[DichVu].[GiaTien]
,[DichVu].[IDDichVu]
,[DichVu].[IsDelete]
,[DichVu].[TenDichVu] 
    FROM [DichVu] as [DichVu] 
     
     WHERE [DichVu].[IDDichVu] = @IDDichVu  AND [DichVu].[IsDelete] = 0 
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_DichVu_Insert]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_DichVu_Insert]
 @Active bit, @DonVi nvarchar(50), @GhiChu nvarchar(200), @GiaTien bigint, @IsDelete bit, @TenDichVu nvarchar(50)
AS BEGIN
    INSERT INTO [DichVu](  [Active] , [DonVi] , [GhiChu] , [GiaTien] , [IsDelete] , [TenDichVu]) VALUES( @Active, @DonVi, @GhiChu, @GiaTien, @IsDelete, @TenDichVu)
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_DichVu_Update]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_DichVu_Update]
 @Active bit, @DonVi nvarchar(50), @GhiChu nvarchar(200), @GiaTien bigint, @IDDichVu int, @IsDelete bit, @TenDichVu nvarchar(50)
AS BEGIN
    UPDATE [DichVu] SET  [Active] = @Active, [DonVi] = @DonVi, [GhiChu] = @GhiChu, [GiaTien] = @GiaTien, [IsDelete] = @IsDelete, [TenDichVu] = @TenDichVu WHERE   [IDDichVu] = @IDDichVu
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_GiaoDich_Delete]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_GiaoDich_Delete]
  @IDGiaoDich int
AS BEGIN
    DELETE [GiaoDich] WHERE    [IDGiaoDich] = @IDGiaoDich 
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_GiaoDich_GetAll]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_GiaoDich_GetAll]
AS BEGIN
    SELECT 
[GiaoDich].[BuyTime]
,[GiaoDich].[IDDatPhong]
,[GiaoDich].[IDDichVu]
,[GiaoDich].[IDGiaoDich]
,[GiaoDich].[IDTaiKhoan]
,[GiaoDich].[SoLuong]
,[DatPhongJoin].[BatDau] as [BatDau_DatPhongJoin]
,[DatPhongJoin].[IDKhachHang] as [IDKhachHang_DatPhongJoin]
,[DatPhongJoin].[IDPhong] as [IDPhong_DatPhongJoin]
,[DatPhongJoin].[IDTaiKhoan] as [IDTaiKhoan_DatPhongJoin]
,[DatPhongJoin].[KetThuc] as [KetThuc_DatPhongJoin]
,[DatPhongJoin].[Status] as [Status_DatPhongJoin]
,[DatPhongJoin].[ThanhToan] as [ThanhToan_DatPhongJoin]
,[DatPhongJoin].[TongTien] as [TongTien_DatPhongJoin]
,[DichVuJoin].[Active] as [Active_DichVuJoin]
,[DichVuJoin].[DonVi] as [DonVi_DichVuJoin]
,[DichVuJoin].[GhiChu] as [GhiChu_DichVuJoin]
,[DichVuJoin].[GiaTien] as [GiaTien_DichVuJoin]
,[DichVuJoin].[IsDelete] as [IsDelete_DichVuJoin]
,[DichVuJoin].[TenDichVu] as [TenDichVu_DichVuJoin]
,[TaiKhoanJoin].[HoTen] as [HoTen_TaiKhoanJoin]
,[TaiKhoanJoin].[IDChucVu] as [IDChucVu_TaiKhoanJoin]
,[TaiKhoanJoin].[IsDelete] as [IsDelete_TaiKhoanJoin]
,[TaiKhoanJoin].[MatKhau] as [MatKhau_TaiKhoanJoin]
,[TaiKhoanJoin].[NgaySinh] as [NgaySinh_TaiKhoanJoin]
,[TaiKhoanJoin].[SDT] as [SDT_TaiKhoanJoin]
,[TaiKhoanJoin].[TenDangNhap] as [TenDangNhap_TaiKhoanJoin] FROM [GiaoDich] as [GiaoDich] 
    
join [DatPhong] as [DatPhongJoin] on [GiaoDich].[IDDatPhong] = [DatPhongJoin].[IDDatPhong]
join [DichVu] as [DichVuJoin] on [GiaoDich].[IDDichVu] = [DichVuJoin].[IDDichVu]
join [TaiKhoan] as [TaiKhoanJoin] on [GiaoDich].[IDTaiKhoan] = [TaiKhoanJoin].[IDTaiKhoan] 
    
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_GiaoDich_GetBy_IDDatPhong]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_GiaoDich_GetBy_IDDatPhong]
@IDDatPhong int
AS BEGIN
    SELECT 
[GiaoDich].[BuyTime]
,[GiaoDich].[IDDatPhong]
,[GiaoDich].[IDDichVu]
,[GiaoDich].[IDGiaoDich]
,[GiaoDich].[IDTaiKhoan]
,[GiaoDich].[SoLuong]
,[DatPhongJoin].[BatDau] as [BatDau_DatPhongJoin]
,[DatPhongJoin].[IDKhachHang] as [IDKhachHang_DatPhongJoin]
,[DatPhongJoin].[IDPhong] as [IDPhong_DatPhongJoin]
,[DatPhongJoin].[IDTaiKhoan] as [IDTaiKhoan_DatPhongJoin]
,[DatPhongJoin].[KetThuc] as [KetThuc_DatPhongJoin]
,[DatPhongJoin].[Status] as [Status_DatPhongJoin]
,[DatPhongJoin].[ThanhToan] as [ThanhToan_DatPhongJoin]
,[DatPhongJoin].[TongTien] as [TongTien_DatPhongJoin]
,[DichVuJoin].[Active] as [Active_DichVuJoin]
,[DichVuJoin].[DonVi] as [DonVi_DichVuJoin]
,[DichVuJoin].[GhiChu] as [GhiChu_DichVuJoin]
,[DichVuJoin].[GiaTien] as [GiaTien_DichVuJoin]
,[DichVuJoin].[IsDelete] as [IsDelete_DichVuJoin]
,[DichVuJoin].[TenDichVu] as [TenDichVu_DichVuJoin]
,[TaiKhoanJoin].[HoTen] as [HoTen_TaiKhoanJoin]
,[TaiKhoanJoin].[IDChucVu] as [IDChucVu_TaiKhoanJoin]
,[TaiKhoanJoin].[IsDelete] as [IsDelete_TaiKhoanJoin]
,[TaiKhoanJoin].[NgaySinh] as [NgaySinh_TaiKhoanJoin]
,[TaiKhoanJoin].[SDT] as [SDT_TaiKhoanJoin]
,[TaiKhoanJoin].[TenDangNhap] as [TenDangNhap_TaiKhoanJoin] 
    FROM [GiaoDich] as [GiaoDich] 
    
join [DatPhong] as [DatPhongJoin] on [GiaoDich].[IDDatPhong] = [DatPhongJoin].[IDDatPhong]
join [DichVu] as [DichVuJoin] on [GiaoDich].[IDDichVu] = [DichVuJoin].[IDDichVu]
join [TaiKhoan] as [TaiKhoanJoin] on [GiaoDich].[IDTaiKhoan] = [TaiKhoanJoin].[IDTaiKhoan] 
     WHERE [GiaoDich].[IDDatPhong] = @IDDatPhong
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_GiaoDich_GetByIDGiaoDich]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_GiaoDich_GetByIDGiaoDich]
@IDGiaoDich int
AS BEGIN
    SELECT 
    
[GiaoDich].[BuyTime]
,[GiaoDich].[IDDatPhong]
,[GiaoDich].[IDDichVu]
,[GiaoDich].[IDGiaoDich]
,[GiaoDich].[IDTaiKhoan]
,[GiaoDich].[SoLuong]
,[DatPhongJoin].[BatDau] as [BatDau_DatPhongJoin]
,[DatPhongJoin].[IDKhachHang] as [IDKhachHang_DatPhongJoin]
,[DatPhongJoin].[IDPhong] as [IDPhong_DatPhongJoin]
,[DatPhongJoin].[IDTaiKhoan] as [IDTaiKhoan_DatPhongJoin]
,[DatPhongJoin].[KetThuc] as [KetThuc_DatPhongJoin]
,[DatPhongJoin].[Status] as [Status_DatPhongJoin]
,[DatPhongJoin].[ThanhToan] as [ThanhToan_DatPhongJoin]
,[DatPhongJoin].[TongTien] as [TongTien_DatPhongJoin]
,[DichVuJoin].[Active] as [Active_DichVuJoin]
,[DichVuJoin].[DonVi] as [DonVi_DichVuJoin]
,[DichVuJoin].[GhiChu] as [GhiChu_DichVuJoin]
,[DichVuJoin].[GiaTien] as [GiaTien_DichVuJoin]
,[DichVuJoin].[IsDelete] as [IsDelete_DichVuJoin]
,[DichVuJoin].[TenDichVu] as [TenDichVu_DichVuJoin]
,[TaiKhoanJoin].[HoTen] as [HoTen_TaiKhoanJoin]
,[TaiKhoanJoin].[IDChucVu] as [IDChucVu_TaiKhoanJoin]
,[TaiKhoanJoin].[IsDelete] as [IsDelete_TaiKhoanJoin]
,[TaiKhoanJoin].[MatKhau] as [MatKhau_TaiKhoanJoin]
,[TaiKhoanJoin].[NgaySinh] as [NgaySinh_TaiKhoanJoin]
,[TaiKhoanJoin].[SDT] as [SDT_TaiKhoanJoin]
,[TaiKhoanJoin].[TenDangNhap] as [TenDangNhap_TaiKhoanJoin] 
    FROM [GiaoDich] as [GiaoDich] 
    
join [DatPhong] as [DatPhongJoin] on [GiaoDich].[IDDatPhong] = [DatPhongJoin].[IDDatPhong]
join [DichVu] as [DichVuJoin] on [GiaoDich].[IDDichVu] = [DichVuJoin].[IDDichVu]
join [TaiKhoan] as [TaiKhoanJoin] on [GiaoDich].[IDTaiKhoan] = [TaiKhoanJoin].[IDTaiKhoan] 
     WHERE [GiaoDich].[IDGiaoDich] = @IDGiaoDich 
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_GiaoDich_Insert]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_GiaoDich_Insert]
 @BuyTime datetime, @IDDatPhong int, @IDDichVu int, @IDTaiKhoan int, @SoLuong int
AS BEGIN
    INSERT INTO [GiaoDich](  [BuyTime] , [IDDatPhong] , [IDDichVu] , [IDTaiKhoan] , [SoLuong]) VALUES( @BuyTime, @IDDatPhong, @IDDichVu, @IDTaiKhoan, @SoLuong)
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_GiaoDich_Update]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_GiaoDich_Update]
 @BuyTime datetime, @IDDatPhong int, @IDDichVu int, @IDGiaoDich int, @IDTaiKhoan int, @SoLuong int
AS BEGIN
    UPDATE [GiaoDich] SET  [BuyTime] = @BuyTime, [IDDatPhong] = @IDDatPhong, [IDDichVu] = @IDDichVu, [IDTaiKhoan] = @IDTaiKhoan, [SoLuong] = @SoLuong WHERE   [IDGiaoDich] = @IDGiaoDich
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_HinhAnh_Delete]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_HinhAnh_Delete]
  @IDHinhAnh int
AS BEGIN
	update [HinhAnh] set IsDelete = 1 WHERE    [IDHinhAnh] = @IDHinhAnh 
END;

GO
/****** Object:  StoredProcedure [dbo].[SP_HinhAnh_GetAll]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_HinhAnh_GetAll]
AS BEGIN
    SELECT 
[HinhAnh].[IDHinhAnh]
,[HinhAnh].[ImageLink]
,[HinhAnh].[IsDelete]
,[HinhAnh].[Rank] FROM [HinhAnh] as [HinhAnh] 
     
    
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_HinhAnh_GetByIDHinhAnh]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_HinhAnh_GetByIDHinhAnh]
@IDHinhAnh int
AS BEGIN
    SELECT 
    
[HinhAnh].[IDHinhAnh]
,[HinhAnh].[ImageLink]
,[HinhAnh].[IsDelete]
,[HinhAnh].[Rank] 
    FROM [HinhAnh] as [HinhAnh] 
     
     WHERE [HinhAnh].[IDHinhAnh] = @IDHinhAnh 
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_HinhAnh_Insert]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_HinhAnh_Insert]
 @ImageLink nvarchar(500), @IsDelete bit, @Rank int
AS BEGIN
    INSERT INTO [HinhAnh](  [ImageLink] , [IsDelete] , [Rank]) VALUES( @ImageLink, @IsDelete, @Rank)
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_HinhAnh_Update]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_HinhAnh_Update]
 @IDHinhAnh int, @ImageLink nvarchar(500), @IsDelete bit, @Rank int
AS BEGIN
    UPDATE [HinhAnh] SET  [ImageLink] = @ImageLink, [IsDelete] = @IsDelete, [Rank] = @Rank WHERE   [IDHinhAnh] = @IDHinhAnh
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_KhachHang_Delete]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_KhachHang_Delete]
  @IDKhachHang uniqueidentifier
AS BEGIN
    UPDATE [KhachHang] SET [IsDelete] = 1 WHERE    [IDKhachHang] = @IDKhachHang 
END;



GO
/****** Object:  StoredProcedure [dbo].[SP_KhachHang_GetAll]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_KhachHang_GetAll]
AS BEGIN
    SELECT 
[KhachHang].[CMT]
,[KhachHang].[DiaChi]
,[KhachHang].[GhiChu]
,[KhachHang].[HoTen]
,[KhachHang].[IDKhachHang]
,[KhachHang].[IsDelete]
,[KhachHang].[IsMale]
,[KhachHang].[NgaySinh]
,[KhachHang].[SDT] FROM [KhachHang] as [KhachHang] 
     
    
WHERE [KhachHang].[IsDelete] = 0 
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_KhachHang_GetByIDKhachHang]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_KhachHang_GetByIDKhachHang]
@IDKhachHang uniqueidentifier
AS BEGIN
    SELECT 
    
[KhachHang].[CMT]
,[KhachHang].[DiaChi]
,[KhachHang].[GhiChu]
,[KhachHang].[HoTen]
,[KhachHang].[IDKhachHang]
,[KhachHang].[IsDelete]
,[KhachHang].[IsMale]
,[KhachHang].[NgaySinh]
,[KhachHang].[SDT] 
    FROM [KhachHang] as [KhachHang] 
     
     WHERE [KhachHang].[IDKhachHang] = @IDKhachHang  AND [KhachHang].[IsDelete] = 0 
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_KhachHang_Insert]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_KhachHang_Insert]
 @CMT nvarchar(50), @DiaChi nvarchar(50), @GhiChu nvarchar(200), @HoTen nvarchar(50), @IDKhachHang uniqueidentifier, @IsDelete bit, @IsMale bit, @NgaySinh date, @SDT nvarchar(50)
AS BEGIN
    INSERT INTO [KhachHang](  [CMT] , [DiaChi] , [GhiChu] , [HoTen] , [IDKhachHang] , [IsDelete] , [IsMale] , [NgaySinh] , [SDT]) VALUES( @CMT, @DiaChi, @GhiChu, @HoTen, @IDKhachHang, @IsDelete, @IsMale, @NgaySinh, @SDT)
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_KhachHang_Update]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_KhachHang_Update]
 @CMT nvarchar(50), @DiaChi nvarchar(50), @GhiChu nvarchar(200), @HoTen nvarchar(50), @IDKhachHang uniqueidentifier, @IsDelete bit, @IsMale bit, @NgaySinh date, @SDT nvarchar(50)
AS BEGIN
    UPDATE [KhachHang] SET  [CMT] = @CMT, [DiaChi] = @DiaChi, [GhiChu] = @GhiChu, [HoTen] = @HoTen, [IsDelete] = @IsDelete, [IsMale] = @IsMale, [NgaySinh] = @NgaySinh, [SDT] = @SDT WHERE   [IDKhachHang] = @IDKhachHang
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_LoaiPhong_Delete]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_LoaiPhong_Delete]
  @ID_LoaiPhong int
AS BEGIN
    DELETE [LoaiPhong] WHERE    [ID_LoaiPhong] = @ID_LoaiPhong 
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_LoaiPhong_GetAll]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_LoaiPhong_GetAll]
AS BEGIN
    SELECT 
[LoaiPhong].[GhiChu]
,[LoaiPhong].[ID_LoaiPhong]
,[LoaiPhong].[TenLoai] FROM [LoaiPhong] as [LoaiPhong] 
     
    
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_LoaiPhong_GetByID_LoaiPhong]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_LoaiPhong_GetByID_LoaiPhong]
@ID_LoaiPhong int
AS BEGIN
    SELECT 
    
[LoaiPhong].[GhiChu]
,[LoaiPhong].[ID_LoaiPhong]
,[LoaiPhong].[TenLoai] 
    FROM [LoaiPhong] as [LoaiPhong] 
     
     WHERE [LoaiPhong].[ID_LoaiPhong] = @ID_LoaiPhong 
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_LoaiPhong_Insert]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_LoaiPhong_Insert]
 @GhiChu nvarchar(50), @TenLoai nvarchar(50)
AS BEGIN
    INSERT INTO [LoaiPhong](  [GhiChu] , [TenLoai]) VALUES( @GhiChu, @TenLoai)
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_LoaiPhong_Update]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_LoaiPhong_Update]
 @GhiChu nvarchar(50), @ID_LoaiPhong int, @TenLoai nvarchar(50)
AS BEGIN
    UPDATE [LoaiPhong] SET  [GhiChu] = @GhiChu, [TenLoai] = @TenLoai WHERE   [ID_LoaiPhong] = @ID_LoaiPhong
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_PhanQuyen_Delete]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_PhanQuyen_Delete]
  @IDQuyen int ,  @IDTaiKhoan int
AS BEGIN
    DELETE [PhanQuyen] WHERE    [IDQuyen] = @IDQuyen  AND [IDTaiKhoan] = @IDTaiKhoan 
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_PhanQuyen_GetAll]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_PhanQuyen_GetAll]
AS BEGIN
    SELECT 
[PhanQuyen].[IDQuyen]
,[PhanQuyen].[IDTaiKhoan]
,[QuyenJoin].[GhiChu] as [GhiChu_QuyenJoin]
,[QuyenJoin].[TenQuyen] as [TenQuyen_QuyenJoin]
,[TaiKhoanJoin].[HoTen] as [HoTen_TaiKhoanJoin]
,[TaiKhoanJoin].[IDChucVu] as [IDChucVu_TaiKhoanJoin]
,[TaiKhoanJoin].[IsDelete] as [IsDelete_TaiKhoanJoin]
,[TaiKhoanJoin].[MatKhau] as [MatKhau_TaiKhoanJoin]
,[TaiKhoanJoin].[NgaySinh] as [NgaySinh_TaiKhoanJoin]
,[TaiKhoanJoin].[SDT] as [SDT_TaiKhoanJoin]
,[TaiKhoanJoin].[TenDangNhap] as [TenDangNhap_TaiKhoanJoin] FROM [PhanQuyen] as [PhanQuyen] 
    
join [Quyen] as [QuyenJoin] on [PhanQuyen].[IDQuyen] = [QuyenJoin].[IDQuyen]
join [TaiKhoan] as [TaiKhoanJoin] on [PhanQuyen].[IDTaiKhoan] = [TaiKhoanJoin].[IDTaiKhoan] 
    
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_PhanQuyen_GetByIDQuyen]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_PhanQuyen_GetByIDQuyen]
@IDQuyen int
AS BEGIN
    SELECT 
    
[PhanQuyen].[IDQuyen]
,[PhanQuyen].[IDTaiKhoan]
,[QuyenJoin].[GhiChu] as [GhiChu_QuyenJoin]
,[QuyenJoin].[TenQuyen] as [TenQuyen_QuyenJoin]
,[TaiKhoanJoin].[HoTen] as [HoTen_TaiKhoanJoin]
,[TaiKhoanJoin].[IDChucVu] as [IDChucVu_TaiKhoanJoin]
,[TaiKhoanJoin].[IsDelete] as [IsDelete_TaiKhoanJoin]
,[TaiKhoanJoin].[MatKhau] as [MatKhau_TaiKhoanJoin]
,[TaiKhoanJoin].[NgaySinh] as [NgaySinh_TaiKhoanJoin]
,[TaiKhoanJoin].[SDT] as [SDT_TaiKhoanJoin]
,[TaiKhoanJoin].[TenDangNhap] as [TenDangNhap_TaiKhoanJoin] 
    FROM [PhanQuyen] as [PhanQuyen] 
    
join [Quyen] as [QuyenJoin] on [PhanQuyen].[IDQuyen] = [QuyenJoin].[IDQuyen]
join [TaiKhoan] as [TaiKhoanJoin] on [PhanQuyen].[IDTaiKhoan] = [TaiKhoanJoin].[IDTaiKhoan] 
     WHERE [PhanQuyen].[IDQuyen] = @IDQuyen 
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_PhanQuyen_GetByIDTaiKhoan]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_PhanQuyen_GetByIDTaiKhoan]
@IDTaiKhoan int
AS BEGIN
    SELECT 
    
[PhanQuyen].[IDQuyen]
,[PhanQuyen].[IDTaiKhoan]
,[QuyenJoin].[GhiChu] as [GhiChu_QuyenJoin]
,[QuyenJoin].[TenQuyen] as [TenQuyen_QuyenJoin]
,[TaiKhoanJoin].[HoTen] as [HoTen_TaiKhoanJoin]
,[TaiKhoanJoin].[IDChucVu] as [IDChucVu_TaiKhoanJoin]
,[TaiKhoanJoin].[IsDelete] as [IsDelete_TaiKhoanJoin]
,[TaiKhoanJoin].[MatKhau] as [MatKhau_TaiKhoanJoin]
,[TaiKhoanJoin].[NgaySinh] as [NgaySinh_TaiKhoanJoin]
,[TaiKhoanJoin].[SDT] as [SDT_TaiKhoanJoin]
,[TaiKhoanJoin].[TenDangNhap] as [TenDangNhap_TaiKhoanJoin] 
    FROM [PhanQuyen] as [PhanQuyen] 
    
join [Quyen] as [QuyenJoin] on [PhanQuyen].[IDQuyen] = [QuyenJoin].[IDQuyen]
join [TaiKhoan] as [TaiKhoanJoin] on [PhanQuyen].[IDTaiKhoan] = [TaiKhoanJoin].[IDTaiKhoan] 
     WHERE [PhanQuyen].[IDTaiKhoan] = @IDTaiKhoan 
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_PhanQuyen_Insert]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_PhanQuyen_Insert]
 @IDQuyen int, @IDTaiKhoan int
AS BEGIN
    INSERT INTO [PhanQuyen](  [IDQuyen] , [IDTaiKhoan]) VALUES( @IDQuyen, @IDTaiKhoan)
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_Phong_Delete]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_Phong_Delete]
  @IDPhong int
AS BEGIN
    UPDATE [Phong] SET [IsDelete] = 1 WHERE    [IDPhong] = @IDPhong 
END;



GO
/****** Object:  StoredProcedure [dbo].[SP_Phong_GetAll]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


;CREATE PROC [dbo].[SP_Phong_GetAll]
AS BEGIN
    SELECT 
[Phong].[Active]
,[Phong].[GiaPhong]
,[Phong].[IDKhachSan]
,[Phong].[ID_LoaiPhong]
,[Phong].[ID_ViTri]
,[Phong].[IDPhong]
,[Phong].[IsDelete]
,[Phong].[TenPhong]
,[Phong].GiaKM
,[Phong].Star
,[Phong].[TrangThai]
,ks.TenKhachSan
,tinh.TenTinh
,[LoaiPhongJoin].[GhiChu] as [GhiChu_LoaiPhongJoin]
,[LoaiPhongJoin].[TenLoai] as [TenLoai_LoaiPhongJoin]
,[ViTriJoin].[GhiChu] as [GhiChu_ViTriJoin]
,[ViTriJoin].[TenViTri] as [TenViTri_ViTriJoin] FROM [Phong] as [Phong] 
    
join [LoaiPhong] as [LoaiPhongJoin] on [Phong].[ID_LoaiPhong] = [LoaiPhongJoin].[ID_LoaiPhong]
join [ViTri] as [ViTriJoin] on [Phong].[ID_ViTri] = [ViTriJoin].[ID_ViTri] 
join KhachSan as ks on ks.IDKhachSan = Phong.IDKhachSan
join TinhThanh as tinh on ks.IDTinhThanh = ks.IDTinhThanh
    
WHERE [Phong].[IsDelete] = 0 
END;

GO
/****** Object:  StoredProcedure [dbo].[SP_Phong_GetByIDPhong]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


;CREATE PROC [dbo].[SP_Phong_GetByIDPhong]
@IDPhong int
AS BEGIN
    SELECT 
    
[Phong].[Active]
,[Phong].[GiaPhong]
,[Phong].[IDKhachSan]
,[Phong].[ID_LoaiPhong]
,[Phong].[ID_ViTri]
,[Phong].[IDPhong]
,[Phong].[IsDelete]
,[Phong].GiaKM
,[Phong].Star
,[Phong].[TenPhong]
,[Phong].[TrangThai]
,ks.TenKhachSan
,tinh.TenTinh
,[LoaiPhongJoin].[GhiChu] as [GhiChu_LoaiPhongJoin]
,[LoaiPhongJoin].[TenLoai] as [TenLoai_LoaiPhongJoin]
,[ViTriJoin].[GhiChu] as [GhiChu_ViTriJoin]
,[ViTriJoin].[TenViTri] as [TenViTri_ViTriJoin] 
    FROM [Phong] as [Phong] 
    
join [LoaiPhong] as [LoaiPhongJoin] on [Phong].[ID_LoaiPhong] = [LoaiPhongJoin].[ID_LoaiPhong]
join [ViTri] as [ViTriJoin] on [Phong].[ID_ViTri] = [ViTriJoin].[ID_ViTri] 
join KhachSan as ks on ks.IDKhachSan = Phong.IDKhachSan
join TinhThanh as tinh on ks.IDTinhThanh = ks.IDTinhThanh
     WHERE [Phong].[IDPhong] = @IDPhong  AND [Phong].[IsDelete] = 0 
END;

GO
/****** Object:  StoredProcedure [dbo].[SP_Phong_HinhAnh_Delete]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_Phong_HinhAnh_Delete]
  @IDPhong_HinhAnh int
AS BEGIN
    DELETE [Phong_HinhAnh] WHERE    [IDPhong_HinhAnh] = @IDPhong_HinhAnh 
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_Phong_HinhAnh_GetAll]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_Phong_HinhAnh_GetAll]
AS BEGIN
    SELECT 
[Phong_HinhAnh].[GhiChu]
,[Phong_HinhAnh].[IDHinhAnh]
,[Phong_HinhAnh].[IDPhong]
,[Phong_HinhAnh].[IDPhong_HinhAnh]
,[Phong_HinhAnh].[Rank]
,[HinhAnhJoin].[ImageLink] as [ImageLink_HinhAnhJoin]
,[HinhAnhJoin].[IsDelete] as [IsDelete_HinhAnhJoin]
,[HinhAnhJoin].[Rank] as [Rank_HinhAnhJoin]
,[PhongJoin].[Active] as [Active_PhongJoin]
,[PhongJoin].[GiaPhong] as [GiaPhong_PhongJoin]
,[PhongJoin].[ID_LoaiPhong] as [ID_LoaiPhong_PhongJoin]
,[PhongJoin].[ID_ViTri] as [ID_ViTri_PhongJoin]
,[PhongJoin].[IsDelete] as [IsDelete_PhongJoin]
,[PhongJoin].[TenPhong] as [TenPhong_PhongJoin]
,[PhongJoin].[TrangThai] as [TrangThai_PhongJoin] FROM [Phong_HinhAnh] as [Phong_HinhAnh] 
    
join [HinhAnh] as [HinhAnhJoin] on [Phong_HinhAnh].[IDHinhAnh] = [HinhAnhJoin].[IDHinhAnh]
join [Phong] as [PhongJoin] on [Phong_HinhAnh].[IDPhong] = [PhongJoin].[IDPhong] 
    
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_Phong_HinhAnh_GetByIDPhong]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;create PROC [dbo].[SP_Phong_HinhAnh_GetByIDPhong]
@IDPhong int
AS BEGIN
    SELECT 
    
[Phong_HinhAnh].[GhiChu]
,[Phong_HinhAnh].[IDHinhAnh]
,[Phong_HinhAnh].[IDPhong]
,[Phong_HinhAnh].[IDPhong_HinhAnh]
,[Phong_HinhAnh].[Rank]
,[HinhAnhJoin].[ImageLink] as [ImageLink_HinhAnhJoin]
,[HinhAnhJoin].[IsDelete] as [IsDelete_HinhAnhJoin]
,[HinhAnhJoin].[Rank] as [Rank_HinhAnhJoin]
,[PhongJoin].[Active] as [Active_PhongJoin]
,[PhongJoin].[GiaPhong] as [GiaPhong_PhongJoin]
,[PhongJoin].[ID_LoaiPhong] as [ID_LoaiPhong_PhongJoin]
,[PhongJoin].[ID_ViTri] as [ID_ViTri_PhongJoin]
,[PhongJoin].[IsDelete] as [IsDelete_PhongJoin]
,[PhongJoin].[TenPhong] as [TenPhong_PhongJoin]
,[PhongJoin].[TrangThai] as [TrangThai_PhongJoin] 
    FROM [Phong_HinhAnh] as [Phong_HinhAnh] 
    
join [HinhAnh] as [HinhAnhJoin] on [Phong_HinhAnh].[IDHinhAnh] = [HinhAnhJoin].[IDHinhAnh]
join [Phong] as [PhongJoin] on [Phong_HinhAnh].[IDPhong] = [PhongJoin].[IDPhong] 
     WHERE [Phong_HinhAnh].[IDPhong] = @IDPhong 
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_Phong_HinhAnh_GetByIDPhong_HinhAnh]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_Phong_HinhAnh_GetByIDPhong_HinhAnh]
@IDPhong_HinhAnh int
AS BEGIN
    SELECT 
    
[Phong_HinhAnh].[GhiChu]
,[Phong_HinhAnh].[IDHinhAnh]
,[Phong_HinhAnh].[IDPhong]
,[Phong_HinhAnh].[IDPhong_HinhAnh]
,[Phong_HinhAnh].[Rank]
,[HinhAnhJoin].[ImageLink] as [ImageLink_HinhAnhJoin]
,[HinhAnhJoin].[IsDelete] as [IsDelete_HinhAnhJoin]
,[HinhAnhJoin].[Rank] as [Rank_HinhAnhJoin]
,[PhongJoin].[Active] as [Active_PhongJoin]
,[PhongJoin].[GiaPhong] as [GiaPhong_PhongJoin]
,[PhongJoin].[ID_LoaiPhong] as [ID_LoaiPhong_PhongJoin]
,[PhongJoin].[ID_ViTri] as [ID_ViTri_PhongJoin]
,[PhongJoin].[IsDelete] as [IsDelete_PhongJoin]
,[PhongJoin].[TenPhong] as [TenPhong_PhongJoin]
,[PhongJoin].[TrangThai] as [TrangThai_PhongJoin] 
    FROM [Phong_HinhAnh] as [Phong_HinhAnh] 
    
join [HinhAnh] as [HinhAnhJoin] on [Phong_HinhAnh].[IDHinhAnh] = [HinhAnhJoin].[IDHinhAnh]
join [Phong] as [PhongJoin] on [Phong_HinhAnh].[IDPhong] = [PhongJoin].[IDPhong] 
     WHERE [Phong_HinhAnh].[IDPhong_HinhAnh] = @IDPhong_HinhAnh 
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_Phong_HinhAnh_Insert]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_Phong_HinhAnh_Insert]
 @GhiChu nvarchar(50), @IDHinhAnh int, @IDPhong int, @Rank int
AS BEGIN
    INSERT INTO [Phong_HinhAnh](  [GhiChu] , [IDHinhAnh] , [IDPhong] , [Rank]) VALUES( @GhiChu, @IDHinhAnh, @IDPhong, @Rank)
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_Phong_HinhAnh_Update]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_Phong_HinhAnh_Update]
 @GhiChu nvarchar(50), @IDHinhAnh int, @IDPhong int, @IDPhong_HinhAnh int, @Rank int
AS BEGIN
    UPDATE [Phong_HinhAnh] SET  [GhiChu] = @GhiChu, [IDHinhAnh] = @IDHinhAnh, [IDPhong] = @IDPhong, [Rank] = @Rank WHERE   [IDPhong_HinhAnh] = @IDPhong_HinhAnh
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_Phong_Insert]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


;CREATE PROC [dbo].[SP_Phong_Insert]
 @Active bit, @GiaPhong bigint, @ID_LoaiPhong int, @ID_ViTri int, @IDKhachSan int, @IsDelete bit, @TenPhong nvarchar(50), @TrangThai nvarchar(50) , @GiaKM int, @Star int
AS BEGIN
    INSERT INTO [Phong](  [Active] , [GiaPhong] , [ID_LoaiPhong] , [ID_ViTri] ,IDKhachSan, [IsDelete] , [TenPhong] , [TrangThai], GiaKM , Star) VALUES( @Active, @GiaPhong, @ID_LoaiPhong, @ID_ViTri,@IDKhachSan, @IsDelete, @TenPhong, @TrangThai, @GiaKM, @Star)
END;

GO
/****** Object:  StoredProcedure [dbo].[SP_Phong_Update]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


;CREATE PROC [dbo].[SP_Phong_Update]
 @Active bit, @GiaPhong bigint, @ID_LoaiPhong int, @IDKhachSan int, @ID_ViTri int, @IDPhong int, @IsDelete bit, @TenPhong nvarchar(50), @TrangThai nvarchar(50), @GiaKM int, @Star int
AS BEGIN
    UPDATE [Phong] SET  [Active] = @Active, [GiaPhong] = @GiaPhong,IDKhachSan = @IDKhachSan, [ID_LoaiPhong] = @ID_LoaiPhong, [ID_ViTri] = @ID_ViTri, [IsDelete] = @IsDelete, [TenPhong] = @TenPhong, [TrangThai] = @TrangThai, GiaKM = @GiaKM, Star = @Star WHERE   [IDPhong] = @IDPhong
END;

GO
/****** Object:  StoredProcedure [dbo].[SP_Quyen_Delete]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_Quyen_Delete]
  @IDQuyen int
AS BEGIN
    DELETE [Quyen] WHERE    [IDQuyen] = @IDQuyen 
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_Quyen_GetAll]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_Quyen_GetAll]
AS BEGIN
    SELECT 
[Quyen].[GhiChu]
,[Quyen].[IDQuyen]
,[Quyen].[TenQuyen] FROM [Quyen] as [Quyen] 
     
    
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_Quyen_GetByIDQuyen]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_Quyen_GetByIDQuyen]
@IDQuyen int
AS BEGIN
    SELECT 
    
[Quyen].[GhiChu]
,[Quyen].[IDQuyen]
,[Quyen].[TenQuyen] 
    FROM [Quyen] as [Quyen] 
     
     WHERE [Quyen].[IDQuyen] = @IDQuyen 
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_Quyen_Insert]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_Quyen_Insert]
 @GhiChu nvarchar(200), @TenQuyen nvarchar(50)
AS BEGIN
    INSERT INTO [Quyen](  [GhiChu] , [TenQuyen]) VALUES( @GhiChu, @TenQuyen)
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_Quyen_Update]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_Quyen_Update]
 @GhiChu nvarchar(200), @IDQuyen int, @TenQuyen nvarchar(50)
AS BEGIN
    UPDATE [Quyen] SET  [GhiChu] = @GhiChu, [TenQuyen] = @TenQuyen WHERE   [IDQuyen] = @IDQuyen
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_TaiKhoan_CheckLogin]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_TaiKhoan_CheckLogin]
@TenDangNhap NVARCHAR(50)
,@MatKhau NVARCHAR(50)
AS SELECT 
t.[IDTaiKhoan]
      ,t.[HoTen]
      ,t.[SDT]
      ,t.[NgaySinh]
      ,t.[TenDangNhap]
      ,t.[MatKhau]
      ,t.[IDChucVu]
	  ,c.TenCV
	  ,c.GhiChu,
	  c.IsDelete
 FROM dbo.TaiKhoan AS t
 JOIN dbo.ChucVu AS c ON c.IDChucVu = t.IDChucVu AND t.TenDangNhap = @TenDangNhap AND t.MatKhau = @MatKhau AND t.IsDelete = 0



GO
/****** Object:  StoredProcedure [dbo].[SP_TaiKhoan_Delete]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_TaiKhoan_Delete]
  @IDTaiKhoan int
AS BEGIN
    UPDATE [TaiKhoan] SET [IsDelete] = 1 WHERE    [IDTaiKhoan] = @IDTaiKhoan 
END;



GO
/****** Object:  StoredProcedure [dbo].[SP_TaiKhoan_DoiMatKhau]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_TaiKhoan_DoiMatKhau]
@IDTaiKhoan INT
,@MatKhauCu NVARCHAR(50)
,@MatKhauMoi NVARCHAR(50)
AS 
	IF (SELECT IDTaiKhoan FROM dbo.TaiKhoan WHERE	IDTaiKhoan=@IDTaiKhoan AND MatKhau = @MatKhauCu AND IsDelete = 0 ) IS NOT NULL
	BEGIN
		UPDATE dbo.TaiKhoan SET MatKhau = @MatKhauMoi WHERE IDTaiKhoan = @IDTaiKhoan AND IsDelete = 0
		SELECT 
		[TaiKhoan].[HoTen]
		,[TaiKhoan].[IDChucVu]
		,[TaiKhoan].[IDTaiKhoan]
		,[TaiKhoan].[IsDelete]
		,[TaiKhoan].[NgaySinh]
		,[TaiKhoan].[SDT]
		,[TaiKhoan].[TenDangNhap]
		,[ChucVuJoin].[GhiChu] as [GhiChu_ChucVuJoin]
		,[ChucVuJoin].[IsDelete] as [IsDelete_ChucVuJoin]
		,[ChucVuJoin].[TenCV] as [TenCV_ChucVuJoin] FROM [TaiKhoan] as [TaiKhoan] 
		join [ChucVu] as [ChucVuJoin] on [TaiKhoan].[IDChucVu] = [ChucVuJoin].[IDChucVu]  AND [TaiKhoan].[IDTaiKhoan] = @IDTaiKhoan    
		WHERE [TaiKhoan].[IsDelete] = 0 
	END
	 



GO
/****** Object:  StoredProcedure [dbo].[SP_TaiKhoan_GetAll]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_TaiKhoan_GetAll]
AS BEGIN
    SELECT 
[TaiKhoan].[HoTen]
,[TaiKhoan].[IDChucVu]
,[TaiKhoan].[IDTaiKhoan]
,[TaiKhoan].[IsDelete]
,[TaiKhoan].[NgaySinh]
,[TaiKhoan].[SDT]
,[TaiKhoan].[TenDangNhap]
,[ChucVuJoin].[GhiChu] as [GhiChu_ChucVuJoin]
,[ChucVuJoin].[IsDelete] as [IsDelete_ChucVuJoin]
,[ChucVuJoin].[TenCV] as [TenCV_ChucVuJoin] FROM [TaiKhoan] as [TaiKhoan] 
    
join [ChucVu] as [ChucVuJoin] on [TaiKhoan].[IDChucVu] = [ChucVuJoin].[IDChucVu] 
    
WHERE [TaiKhoan].[IsDelete] = 0 
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_TaiKhoan_GetByIDTaiKhoan]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_TaiKhoan_GetByIDTaiKhoan]
@IDTaiKhoan int
AS BEGIN
    SELECT 
    
[TaiKhoan].[HoTen]
,[TaiKhoan].[IDChucVu]
,[TaiKhoan].[IDTaiKhoan]
,[TaiKhoan].[IsDelete]
,[TaiKhoan].[NgaySinh]
,[TaiKhoan].[SDT]
,[TaiKhoan].[TenDangNhap]
,[ChucVuJoin].[GhiChu] as [GhiChu_ChucVuJoin]
,[ChucVuJoin].[IsDelete] as [IsDelete_ChucVuJoin]
,[ChucVuJoin].[TenCV] as [TenCV_ChucVuJoin] 
    FROM [TaiKhoan] as [TaiKhoan] 
    
join [ChucVu] as [ChucVuJoin] on [TaiKhoan].[IDChucVu] = [ChucVuJoin].[IDChucVu] 
     WHERE [TaiKhoan].[IDTaiKhoan] = @IDTaiKhoan  AND [TaiKhoan].[IsDelete] = 0 
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_TaiKhoan_Insert]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_TaiKhoan_Insert]
 @HoTen nvarchar(50), @IDChucVu int, @IsDelete bit, @MatKhau nvarchar(50), @NgaySinh date, @SDT nvarchar(50), @TenDangNhap nvarchar(50)
AS BEGIN
    INSERT INTO [TaiKhoan](  [HoTen] , [IDChucVu] , [IsDelete] , [MatKhau] , [NgaySinh] , [SDT] , [TenDangNhap]) VALUES( @HoTen, @IDChucVu, @IsDelete, @MatKhau, @NgaySinh, @SDT, @TenDangNhap)
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_TaiKhoan_Update]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_TaiKhoan_Update]
 @HoTen nvarchar(50), @IDChucVu int, @IDTaiKhoan int, @MatKhau nvarchar(50), @NgaySinh date, @SDT nvarchar(50), @TenDangNhap nvarchar(50)
AS BEGIN
    UPDATE [TaiKhoan] SET  [HoTen] = @HoTen, [IDChucVu] = @IDChucVu, [NgaySinh] = @NgaySinh, [SDT] = @SDT, [TenDangNhap] = @TenDangNhap WHERE   [IDTaiKhoan] = @IDTaiKhoan
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_ViTri_Delete]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_ViTri_Delete]
  @ID_ViTri int
AS BEGIN
    DELETE [ViTri] WHERE    [ID_ViTri] = @ID_ViTri 
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_ViTri_GetAll]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_ViTri_GetAll]
AS BEGIN
    SELECT 
[ViTri].[GhiChu]
,[ViTri].[ID_ViTri]
,[ViTri].[TenViTri] FROM [ViTri] as [ViTri] 
     
    
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_ViTri_GetByID_ViTri]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_ViTri_GetByID_ViTri]
@ID_ViTri int
AS BEGIN
    SELECT 
    
[ViTri].[GhiChu]
,[ViTri].[ID_ViTri]
,[ViTri].[TenViTri] 
    FROM [ViTri] as [ViTri] 
     
     WHERE [ViTri].[ID_ViTri] = @ID_ViTri 
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_ViTri_Insert]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_ViTri_Insert]
 @GhiChu nvarchar(50), @TenViTri nvarchar(50)
AS BEGIN
    INSERT INTO [ViTri](  [GhiChu] , [TenViTri]) VALUES( @GhiChu, @TenViTri)
END;




GO
/****** Object:  StoredProcedure [dbo].[SP_ViTri_Update]    Script Date: 9/12/2021 8:40:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

;CREATE PROC [dbo].[SP_ViTri_Update]
 @GhiChu nvarchar(50), @ID_ViTri int, @TenViTri nvarchar(50)
AS BEGIN
    UPDATE [ViTri] SET  [GhiChu] = @GhiChu, [TenViTri] = @TenViTri WHERE   [ID_ViTri] = @ID_ViTri
END;




GO
