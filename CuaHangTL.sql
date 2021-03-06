USE [master]
GO
/****** Object:  Database [CuaHangTienLoi]    Script Date: 2021/02/27 9:47:16 ******/
CREATE DATABASE [CuaHangTienLoi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CuaHangTienLoi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\CuaHangTienLoi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CuaHangTienLoi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\CuaHangTienLoi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [CuaHangTienLoi] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CuaHangTienLoi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CuaHangTienLoi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CuaHangTienLoi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CuaHangTienLoi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CuaHangTienLoi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CuaHangTienLoi] SET ARITHABORT OFF 
GO
ALTER DATABASE [CuaHangTienLoi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CuaHangTienLoi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CuaHangTienLoi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CuaHangTienLoi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CuaHangTienLoi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CuaHangTienLoi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CuaHangTienLoi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CuaHangTienLoi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CuaHangTienLoi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CuaHangTienLoi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CuaHangTienLoi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CuaHangTienLoi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CuaHangTienLoi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CuaHangTienLoi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CuaHangTienLoi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CuaHangTienLoi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CuaHangTienLoi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CuaHangTienLoi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CuaHangTienLoi] SET  MULTI_USER 
GO
ALTER DATABASE [CuaHangTienLoi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CuaHangTienLoi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CuaHangTienLoi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CuaHangTienLoi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CuaHangTienLoi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CuaHangTienLoi] SET QUERY_STORE = OFF
GO
USE [CuaHangTienLoi]
GO
/****** Object:  Table [dbo].[CTHDBan]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHDBan](
	[MaHD] [varchar](20) NOT NULL,
	[MaSP] [varchar](20) NOT NULL,
	[SoLuong] [tinyint] NULL,
 CONSTRAINT [PK_CTHDBan] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTNhap]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTNhap](
	[MaHD] [varchar](20) NOT NULL,
	[MaSP] [varchar](20) NOT NULL,
	[GiaNhap] [bigint] NULL,
	[SoLuong] [smallint] NULL,
 CONSTRAINT [PK_CTNhap] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HDBan]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HDBan](
	[MaKH] [varchar](20) NULL,
	[MaHD] [varchar](20) NOT NULL,
	[NgayMua] [date] NULL,
	[MaNVGiao] [varchar](20) NULL,
 CONSTRAINT [PK_HDBan] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HDNhap]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HDNhap](
	[MaHD] [varchar](20) NOT NULL,
	[NgayNhap] [date] NULL,
	[MaNCC] [varchar](20) NULL,
 CONSTRAINT [PK_HDNhap] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [varchar](20) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](70) NULL,
	[SoDT] [varchar](20) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [varchar](20) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](70) NULL,
	[SoDT] [varchar](20) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [varchar](20) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SoDT] [varchar](20) NULL,
	[Luong] [bigint] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhomSP]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhomSP](
	[MaNhom] [varchar](20) NOT NULL,
	[TenNhom] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhomSP] PRIMARY KEY CLUSTERED 
(
	[MaNhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [varchar](20) NOT NULL,
	[Ten] [nvarchar](100) NULL,
	[MaNhom] [varchar](20) NULL,
	[MaNCC] [varchar](20) NULL,
	[GiaBan] [bigint] NULL,
	[HinhAnh] [varchar](30) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaNV] [varchar](20) NOT NULL,
	[MatKhau] [varchar](20) NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CTHDBan] ([MaHD], [MaSP], [SoLuong]) VALUES (N'1000', N'139', 1)
INSERT [dbo].[CTHDBan] ([MaHD], [MaSP], [SoLuong]) VALUES (N'1000', N'144', 2)
INSERT [dbo].[CTHDBan] ([MaHD], [MaSP], [SoLuong]) VALUES (N'1000', N'155', 30)
INSERT [dbo].[CTHDBan] ([MaHD], [MaSP], [SoLuong]) VALUES (N'419', N'110', 10)
INSERT [dbo].[CTHDBan] ([MaHD], [MaSP], [SoLuong]) VALUES (N'419', N'122', 2)
INSERT [dbo].[CTHDBan] ([MaHD], [MaSP], [SoLuong]) VALUES (N'419', N'135', 7)
INSERT [dbo].[CTHDBan] ([MaHD], [MaSP], [SoLuong]) VALUES (N'429', N'122', 6)
INSERT [dbo].[CTHDBan] ([MaHD], [MaSP], [SoLuong]) VALUES (N'429', N'131', 3)
INSERT [dbo].[CTHDBan] ([MaHD], [MaSP], [SoLuong]) VALUES (N'444', N'152', 3)
INSERT [dbo].[CTHDBan] ([MaHD], [MaSP], [SoLuong]) VALUES (N'444', N'180', 2)
INSERT [dbo].[CTHDBan] ([MaHD], [MaSP], [SoLuong]) VALUES (N'445', N'155', 15)
INSERT [dbo].[CTHDBan] ([MaHD], [MaSP], [SoLuong]) VALUES (N'445', N'180', 10)
INSERT [dbo].[CTHDBan] ([MaHD], [MaSP], [SoLuong]) VALUES (N'445', N'181', 2)
INSERT [dbo].[CTHDBan] ([MaHD], [MaSP], [SoLuong]) VALUES (N'445', N'201', 5)
INSERT [dbo].[CTHDBan] ([MaHD], [MaSP], [SoLuong]) VALUES (N'455', N'144', 1)
INSERT [dbo].[CTHDBan] ([MaHD], [MaSP], [SoLuong]) VALUES (N'465', N'133', 5)
INSERT [dbo].[CTHDBan] ([MaHD], [MaSP], [SoLuong]) VALUES (N'465', N'155', 10)
INSERT [dbo].[CTHDBan] ([MaHD], [MaSP], [SoLuong]) VALUES (N'465', N'181', 8)
INSERT [dbo].[CTHDBan] ([MaHD], [MaSP], [SoLuong]) VALUES (N'478', N'192', 7)
INSERT [dbo].[CTHDBan] ([MaHD], [MaSP], [SoLuong]) VALUES (N'490', N'139', 10)
INSERT [dbo].[CTHDBan] ([MaHD], [MaSP], [SoLuong]) VALUES (N'492', N'128', 3)
INSERT [dbo].[CTHDBan] ([MaHD], [MaSP], [SoLuong]) VALUES (N'492', N'135', 4)
GO
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'1', N'123', 2000, 402)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'1', N'125', 5000, 23)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'1', N'126', 12000, 50)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'10', N'211', 40000, 77)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'10', N'212', 33000, 81)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'10', N'213', 23000, 91)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'11', N'135', 5000, 34)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'11', N'177', 71000, 22)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'11', N'180', 89000, 58)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'12', N'110', 8000, 3)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'12', N'122', 16000, 35)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'12', N'155', 95000, 98)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'13', N'214', 17000, 88)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'13', N'215', 5000, 111)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'14', N'80', 7500, 44)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'14', N'81', 10000, 75)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'14', N'83', 13000, 33)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'15', N'181', 8000, 8)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'15', N'182', 38000, 61)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'16', N'93', 6500, 10)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'16', N'97', 30000, 45)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'16', N'98', 24000, 29)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'17', N'201', 40000, 12)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'17', N'202', 90000, 36)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'17', N'203', 190000, 43)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'17', N'204', 450000, 54)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'17', N'205', 44000, 18)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'17', N'206', 95000, 29)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'17', N'207', 185000, 82)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'17', N'208', 480000, 66)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'19', N'122', 15000, 43)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'19', N'188', 22000, 49)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'2', N'152', 4000, 92)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'2', N'155', 10000, 10)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'22', N'88', 15000, 100)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'22', N'89', 19000, 88)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'3', N'131', 12000, 40)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'3', N'132', 7000, 101)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'3', N'133', 9000, 201)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'3', N'134', 20000, 53)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'30', N'139', 32000, 26)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'30', N'144', 33000, 71)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'4', N'135', 12000, 67)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'4', N'140', 4000, 20)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'5', N'112', 7000, 12)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'5', N'131', 12300, 353)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'5', N'152', 9000, 68)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'6', N'135', 15000, 72)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'6', N'136', 10000, 90)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'6', N'138', 11000, 39)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'7', N'125', 21000, 143)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'7', N'175', 10200, 24)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'7', N'192', 2500, 10)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'8', N'128', 2500000, 44)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'8', N'133', 50000, 5)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'8', N'135', 4000, 150)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'8', N'171', 3500, 1)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'9', N'70', 13000, 33)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'9', N'71', 8000, 40)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'9', N'75', 14000, 48)
INSERT [dbo].[CTNhap] ([MaHD], [MaSP], [GiaNhap], [SoLuong]) VALUES (N'9', N'76', 1000, 149)
GO
INSERT [dbo].[HDBan] ([MaKH], [MaHD], [NgayMua], [MaNVGiao]) VALUES (N'1', N'1000', CAST(N'2020-01-01' AS Date), N'10')
INSERT [dbo].[HDBan] ([MaKH], [MaHD], [NgayMua], [MaNVGiao]) VALUES (N'135', N'419', CAST(N'2015-09-15' AS Date), N'22')
INSERT [dbo].[HDBan] ([MaKH], [MaHD], [NgayMua], [MaNVGiao]) VALUES (N'198', N'429', CAST(N'2018-08-23' AS Date), N'14')
INSERT [dbo].[HDBan] ([MaKH], [MaHD], [NgayMua], [MaNVGiao]) VALUES (N'192', N'444', CAST(N'2009-09-23' AS Date), N'08')
INSERT [dbo].[HDBan] ([MaKH], [MaHD], [NgayMua], [MaNVGiao]) VALUES (N'111', N'445', CAST(N'2009-09-23' AS Date), N'22')
INSERT [dbo].[HDBan] ([MaKH], [MaHD], [NgayMua], [MaNVGiao]) VALUES (N'120', N'455', CAST(N'2012-05-12' AS Date), N'30')
INSERT [dbo].[HDBan] ([MaKH], [MaHD], [NgayMua], [MaNVGiao]) VALUES (N'120', N'465', CAST(N'2009-10-03' AS Date), N'22')
INSERT [dbo].[HDBan] ([MaKH], [MaHD], [NgayMua], [MaNVGiao]) VALUES (N'192', N'478', CAST(N'2010-10-22' AS Date), N'15')
INSERT [dbo].[HDBan] ([MaKH], [MaHD], [NgayMua], [MaNVGiao]) VALUES (N'135', N'490', CAST(N'2019-09-10' AS Date), N'08')
INSERT [dbo].[HDBan] ([MaKH], [MaHD], [NgayMua], [MaNVGiao]) VALUES (N'244', N'492', CAST(N'2001-03-04' AS Date), N'35')
GO
INSERT [dbo].[HDNhap] ([MaHD], [NgayNhap], [MaNCC]) VALUES (N'1', CAST(N'2000-01-01' AS Date), N'000')
INSERT [dbo].[HDNhap] ([MaHD], [NgayNhap], [MaNCC]) VALUES (N'10', CAST(N'2011-09-20' AS Date), N'556')
INSERT [dbo].[HDNhap] ([MaHD], [NgayNhap], [MaNCC]) VALUES (N'11', CAST(N'2001-12-20' AS Date), N'519')
INSERT [dbo].[HDNhap] ([MaHD], [NgayNhap], [MaNCC]) VALUES (N'12', CAST(N'2009-01-30' AS Date), N'539')
INSERT [dbo].[HDNhap] ([MaHD], [NgayNhap], [MaNCC]) VALUES (N'13', CAST(N'2015-01-12' AS Date), N'557')
INSERT [dbo].[HDNhap] ([MaHD], [NgayNhap], [MaNCC]) VALUES (N'14', CAST(N'2014-10-23' AS Date), N'562')
INSERT [dbo].[HDNhap] ([MaHD], [NgayNhap], [MaNCC]) VALUES (N'15', CAST(N'1999-05-29' AS Date), N'532')
INSERT [dbo].[HDNhap] ([MaHD], [NgayNhap], [MaNCC]) VALUES (N'16', CAST(N'2015-04-20' AS Date), N'589')
INSERT [dbo].[HDNhap] ([MaHD], [NgayNhap], [MaNCC]) VALUES (N'17', CAST(N'2010-10-15' AS Date), N'590')
INSERT [dbo].[HDNhap] ([MaHD], [NgayNhap], [MaNCC]) VALUES (N'19', CAST(N'2008-10-19' AS Date), N'543')
INSERT [dbo].[HDNhap] ([MaHD], [NgayNhap], [MaNCC]) VALUES (N'2', CAST(N'2005-04-05' AS Date), N'512')
INSERT [dbo].[HDNhap] ([MaHD], [NgayNhap], [MaNCC]) VALUES (N'22', CAST(N'2000-09-04' AS Date), N'544')
INSERT [dbo].[HDNhap] ([MaHD], [NgayNhap], [MaNCC]) VALUES (N'3', CAST(N'2009-01-09' AS Date), N'521')
INSERT [dbo].[HDNhap] ([MaHD], [NgayNhap], [MaNCC]) VALUES (N'30', CAST(N'2007-09-10' AS Date), N'539')
INSERT [dbo].[HDNhap] ([MaHD], [NgayNhap], [MaNCC]) VALUES (N'4', CAST(N'2003-12-12' AS Date), N'522')
INSERT [dbo].[HDNhap] ([MaHD], [NgayNhap], [MaNCC]) VALUES (N'5', CAST(N'2005-12-31' AS Date), N'569')
INSERT [dbo].[HDNhap] ([MaHD], [NgayNhap], [MaNCC]) VALUES (N'6', CAST(N'2000-12-06' AS Date), N'530')
INSERT [dbo].[HDNhap] ([MaHD], [NgayNhap], [MaNCC]) VALUES (N'7', CAST(N'2002-03-10' AS Date), N'555')
INSERT [dbo].[HDNhap] ([MaHD], [NgayNhap], [MaNCC]) VALUES (N'8', CAST(N'2003-08-15' AS Date), N'540')
INSERT [dbo].[HDNhap] ([MaHD], [NgayNhap], [MaNCC]) VALUES (N'9', CAST(N'2009-09-10' AS Date), N'543')
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [SoDT]) VALUES (N'1', N'Chu Thị Hường', N'1 Hà Nội', N'012345678')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [SoDT]) VALUES (N'111', N'Vũ Thành Xuân', N'42 Lê Duẩn', N'0932154246')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [SoDT]) VALUES (N'120', N'Hoàng Trung Kiên', N'36 Phan Đình Phùng', N'0145531398')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [SoDT]) VALUES (N'124', N'Lê Hồng Nguyên', N'26 Hoàng Diệu', N'0145683173')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [SoDT]) VALUES (N'135', N'Hồ Anh Vũ', N'66 Lạc Long Quân', N'0945256382')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [SoDT]) VALUES (N'155', N'Nguyễn Lê Minh Anh', N'49 Lạc Long Quân', N'0933414845')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [SoDT]) VALUES (N'192', N'Nguyễn Thành Nam', N'15 Hoàng Quốc Việt', N'0835283423')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [SoDT]) VALUES (N'198', N'Nguyễn Hồng Quang', N'22 Lê Duẩn', N'0831345821')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [SoDT]) VALUES (N'23', N'Vũ Huy Quang', N'23 Cầu Giấy', N'0987123654')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [SoDT]) VALUES (N'244', N'Nguyễn Nhật Linh', N'33 Văn Cao', N'0125624478')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [SoDT]) VALUES (N'87', N'Vương Phương Anh', N'53 Thụy Khuê', N'0143543842')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [SoDT]) VALUES (N'99', N'Đặng Nhật Minh', N'38 Hoàng Quốc Việt', N'0832143264')
GO
INSERT [dbo].[NhaCungCap] ([MaNCC], [Ten], [DiaChi], [SoDT]) VALUES (N'000', N'Không xác định', N'Không rõ', N'00000000000')
INSERT [dbo].[NhaCungCap] ([MaNCC], [Ten], [DiaChi], [SoDT]) VALUES (N'512', N'Pepsico', N'88 Từ Sơn Bắc Ninh', N'02223765418')
INSERT [dbo].[NhaCungCap] ([MaNCC], [Ten], [DiaChi], [SoDT]) VALUES (N'519', N'Pampers', N'Hòa Bình', N'18006315')
INSERT [dbo].[NhaCungCap] ([MaNCC], [Ten], [DiaChi], [SoDT]) VALUES (N'521', N'Nestle', N'123 Ba Đình Hà Nội', N'0391432734')
INSERT [dbo].[NhaCungCap] ([MaNCC], [Ten], [DiaChi], [SoDT]) VALUES (N'522', N'Tràng An', N'Tổ 30 Cầu Giấy Hà Nội', N'0437564459')
INSERT [dbo].[NhaCungCap] ([MaNCC], [Ten], [DiaChi], [SoDT]) VALUES (N'530', N'Ariel', N'Gia Lộc Hải Dương', N'0321565489')
INSERT [dbo].[NhaCungCap] ([MaNCC], [Ten], [DiaChi], [SoDT]) VALUES (N'532', N'Unilever', N'A2-3 Củ Chi Tp.HCM', N'02854135686')
INSERT [dbo].[NhaCungCap] ([MaNCC], [Ten], [DiaChi], [SoDT]) VALUES (N'539', N'Cty cổ phần TH', N'166 Nguyễn Thái Học Tp.Vinh', N'1800545440')
INSERT [dbo].[NhaCungCap] ([MaNCC], [Ten], [DiaChi], [SoDT]) VALUES (N'540', N'Coca', N'17 Thường Tín Hà Nội', N'0433853725')
INSERT [dbo].[NhaCungCap] ([MaNCC], [Ten], [DiaChi], [SoDT]) VALUES (N'543', N'Panasonic', N'Khu J1 J2 Cầu Thăng Long Hà Nội', N'02439550111')
INSERT [dbo].[NhaCungCap] ([MaNCC], [Ten], [DiaChi], [SoDT]) VALUES (N'544', N'Kuulaa', N'Thuận Thành Bắc Ninh', N'0394857231')
INSERT [dbo].[NhaCungCap] ([MaNCC], [Ten], [DiaChi], [SoDT]) VALUES (N'555', N'Mộc Châu', N'194 Mộc Châu Sơn La', N'02123866065')
INSERT [dbo].[NhaCungCap] ([MaNCC], [Ten], [DiaChi], [SoDT]) VALUES (N'556', N'Rabity', N'Lạng Giang Bắc Giang', N'0347591360')
INSERT [dbo].[NhaCungCap] ([MaNCC], [Ten], [DiaChi], [SoDT]) VALUES (N'557', N'Elimaz', N'Văn Lãng Lạng Sơn', N'0304039205')
INSERT [dbo].[NhaCungCap] ([MaNCC], [Ten], [DiaChi], [SoDT]) VALUES (N'562', N'Hafuto', N'Bắc Sơn Lạng Sơn', N'0395736425')
INSERT [dbo].[NhaCungCap] ([MaNCC], [Ten], [DiaChi], [SoDT]) VALUES (N'569', N'Acecook', N'Tiên Sơn Tiên Du Bắc Ninh', N'02838150969')
INSERT [dbo].[NhaCungCap] ([MaNCC], [Ten], [DiaChi], [SoDT]) VALUES (N'589', N'BabyZ', N'Kim Bảng Hà Nam', N'0385827531')
INSERT [dbo].[NhaCungCap] ([MaNCC], [Ten], [DiaChi], [SoDT]) VALUES (N'590', N'Vifon', N'Quỳnh Phụ Thái Bình', N'0394857146')
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [SoDT], [Luong]) VALUES (N'08', N'Hoàng Văn Quang', N'49 Láng Hạ', N'0838239876', 2500000)
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [SoDT], [Luong]) VALUES (N'10', N'Tăng Thế Thịnh', N'1 Lạc Long Quân', N'0838651134', 9999999)
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [SoDT], [Luong]) VALUES (N'12', N'Đỗ Văn Thiện', N'19 Võ Văn Kiệt', N'0125245687', 2500000)
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [SoDT], [Luong]) VALUES (N'14', N'Lê Anh Tú', N'135 Bà Triệu', N'0123681492', 5500000)
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [SoDT], [Luong]) VALUES (N'15', N'Hoàng Trung Anh', N'22 Láng Hạ', N'0135899258', 3300000)
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [SoDT], [Luong]) VALUES (N'20', N'Đỗ Hoàng Long', N'55 Đinh Tiên Hoàng', N'0984314524', 4400000)
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [SoDT], [Luong]) VALUES (N'22', N'Vũ Thành Nam', N'34 Hoàng Quốc Việt', N'0813582592', 4400000)
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [SoDT], [Luong]) VALUES (N'29', N'Nguyễn Vũ Nhật Hạ', N'99 Bà Triệu', N'0839515949', 3500000)
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [SoDT], [Luong]) VALUES (N'30', N'Nguyễn Quang Minh', N'02 Hoàng Hoa Thám', N'0859275492', 4400000)
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [SoDT], [Luong]) VALUES (N'32', N'Nguyễn Thị Phương Dung', N'107 Hoàng Hoa Thám', N'0955298825', 3500000)
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [DiaChi], [SoDT], [Luong]) VALUES (N'35', N'Đặng Ngọc Khánh', N'65 Phan Đình Phùng', N'0943154529', 3300000)
GO
INSERT [dbo].[NhomSP] ([MaNhom], [TenNhom]) VALUES (N'1', N'Thực phẩm')
INSERT [dbo].[NhomSP] ([MaNhom], [TenNhom]) VALUES (N'2', N'Khăn giấy, tã bỉm')
INSERT [dbo].[NhomSP] ([MaNhom], [TenNhom]) VALUES (N'3', N'Đồ gia dụng')
INSERT [dbo].[NhomSP] ([MaNhom], [TenNhom]) VALUES (N'4', N'Đồ dùng cá nhân')
INSERT [dbo].[NhomSP] ([MaNhom], [TenNhom]) VALUES (N'5', N'Gia vị')
INSERT [dbo].[NhomSP] ([MaNhom], [TenNhom]) VALUES (N'6', N'Thẻ điện thoại')
INSERT [dbo].[NhomSP] ([MaNhom], [TenNhom]) VALUES (N'7', N'Văn phòng phẩm')
INSERT [dbo].[NhomSP] ([MaNhom], [TenNhom]) VALUES (N'8', N'Không xác định')
GO
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'110', N'Pepsi', N'1', N'512', 2000, N'110_pepsi.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'112', N'7up', N'1', N'512', 4000, N'7up.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'122', N'Sữa Mộc Châu', N'1', N'555', 15000, N'suamocchau.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'123', N'Sữa ông thọ', N'1', N'562', 28000, N'suaongtho.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'125', N'Sữa chua lên men Mộc Châu', N'1', N'555', 20000, N'suachuamocchau.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'126', N'Sữa đậu nành Vinamilk', N'1', N'562', 4000, N'suadaunanhvinamilk.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'127', N'Sữa tươi Vinamilk', N'1', N'562', 20000, N'suavinamilk.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'128', N'Bò Sữa', N'8', N'000', 1500000, N'bosua.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'129', N'Sữa chua Vinamilk', N'1', N'562', 15000, N'suachuavinamilk.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'131', N'Snack Teppy', N'1', N'522', 35000, N'snackteppy.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'132', N'Snack cay', N'1', N'522', 5000, N'snackcay.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'133', N'Nước mắm Tràng An', N'5', N'522', 76000, N'nuocmamtrangan.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'134', N'Snack ngô', N'1', N'522', 5000, N'snackngo.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'135', N'Coca lon', N'1', N'540', 3500, N'cocalon.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'136', N'Snack khoai tây', N'1', N'522', 6500, N'snackkhoai.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'138', N'Coca chai nhỏ', N'1', N'540', 7500, N'cocanho.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'139', N'Dầu ăn Tràng An', N'5', N'522', 55000, N'dauantrangan.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'140', N'Coca chai to', N'1', N'540', 16000, N'cocato.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'143', N'Pin tiểu', N'3', N'543', 4000, N'pintieu.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'144', N'Pin con thỏ', N'8', N'543', 1500, N'pincontho.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'152', N'TH true water', N'1', N'539', 9000, N'thtruewater.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'155', N'TH true milk', N'1', N'539', 30000, N'thtruemilk.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'171', N'Mì Cung Đình', N'1', N'569', 5500, N'micungdinh.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'175', N'Mì hảo hảo', N'1', N'569', 3200, N'mihaohao.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'177', N'Muối chấm hảo hảo', N'5', N'569', 12000, N'muoihaohao.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'180', N'Dầu gội đầu Sunsilk', N'3', N'532', 87000, N'daugoisunsilk.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'181', N'Nước lau nhà Sunlight', N'3', N'532', 99000, N'nuoclaunhasunsilk.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'182', N'Nước xả Comfort', N'3', N'532', 105000, N'nuoccomfort.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'183', N'Dầu gội Head&Shoulder', N'3', N'532', 69000, N'daugoiheadshoulder.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'188', N'Nước rửa chén Sunlight', N'3', N'532', 67000, N'nuocruabatsunlight.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'192', N'Bỉm Pamper', N'2', N'519', 50000, N'bimpamper.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'201', N'Thẻ Vina 50k', N'6', N'556', 50000, N'vina50k.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'202', N'Thẻ Vina 100k', N'6', N'556', 100000, N'vina100k.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'203', N'Thẻ Vina 200k', N'6', N'556', 200000, N'vina200k.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'204', N'Thẻ Vina 500k', N'6', N'556', 500000, N'vina500k.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'205', N'Thẻ Viettel 50k', N'6', N'557', 50000, N'viettel50k.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'206', N'Thẻ Viettel 100k', N'6', N'557', 100000, N'viettel100k.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'207', N'Thẻ Viettel 200k', N'6', N'557', 200000, N'viettel200k.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'208', N'Thẻ Viettel 500k', N'6', N'557', 500000, N'viettel500k.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'211', N'Giấy in Double A khổ A3', N'7', N'577', 150000, N'giayindoublea.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'212', N'Giấy cuộn A0', N'7', N'577', 10000, N'giaycuona0.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'213', N'Bút bi Thiên Long', N'7', N'577', 3000, N'butbithienlong.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'214', N'Bút lông Thiên Long', N'7', N'577', 12000, N'butlongthienlong.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'215', N'Bút xóa CP-02', N'7', N'577', 15000, N'butxoacp02.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'58', N'Bàn chải đánh răng', N'6', N'000', 23000, N'banchaidanhrang.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'70', N'Khẩu trang vải', N'4', N'000', 12000, N'khautrangvai.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'71', N'Khẩu trang y tế', N'4', N'000', 25000, N'khautrangyte.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'75', N'Muối bột canh I-ốt', N'5', N'000', 4000, N'muoibotcanh.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'76', N'Đường trắng', N'5', N'000', 32000, N'duongtrang.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'77', N'Đường đỏ', N'5', N'000', 40000, N'duongdo.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'80', N'Băng vệ sinh Kotex', N'4', N'521', 25000, N'kotex.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'81', N'Giấy vệ sinh Mylan', N'2', N'589', 87000, N'giaymylan.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'83', N'Giấy rút Alibaba', N'2', N'589', 42000, N'giayalibaba.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'88', N'Giấy vệ sinh Arosa', N'2', N'544', 44000, N'giayarosa.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'89', N'Giấy vệ sinh Rose', N'2', N'544', 36000, N'giayrose.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'92', N'Kem đánh răng P/S', N'4', N'590', 25000, N'kemdanhrangps.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'93', N'Bàn chải đánh răng P/S', N'4', N'590', 10000, N'banchaips.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'97', N'Bàn chải đánh răng Colgate', N'4', N'530', 11000, N'banchaicolgate.jpg')
INSERT [dbo].[SanPham] ([MaSP], [Ten], [MaNhom], [MaNCC], [GiaBan], [HinhAnh]) VALUES (N'98', N'Kem đánh răng Colgate', N'4', N'530', 30000, N'kemdanhrangcolgate.jpg')
GO
ALTER TABLE [dbo].[CTHDBan]  WITH CHECK ADD  CONSTRAINT [FK_CTHDBan_HDBan] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HDBan] ([MaHD])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTHDBan] CHECK CONSTRAINT [FK_CTHDBan_HDBan]
GO
ALTER TABLE [dbo].[CTHDBan]  WITH CHECK ADD  CONSTRAINT [FK_CTHDBan_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[CTHDBan] CHECK CONSTRAINT [FK_CTHDBan_SanPham]
GO
ALTER TABLE [dbo].[CTNhap]  WITH CHECK ADD  CONSTRAINT [FK_CTNhap_HDNhap] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HDNhap] ([MaHD])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTNhap] CHECK CONSTRAINT [FK_CTNhap_HDNhap]
GO
ALTER TABLE [dbo].[CTNhap]  WITH CHECK ADD  CONSTRAINT [FK_CTNhap_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[CTNhap] CHECK CONSTRAINT [FK_CTNhap_SanPham]
GO
ALTER TABLE [dbo].[HDBan]  WITH CHECK ADD  CONSTRAINT [FK_HDBan_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HDBan] CHECK CONSTRAINT [FK_HDBan_KhachHang]
GO
ALTER TABLE [dbo].[HDBan]  WITH CHECK ADD  CONSTRAINT [FK_HDBan_NhanVien] FOREIGN KEY([MaNVGiao])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HDBan] CHECK CONSTRAINT [FK_HDBan_NhanVien]
GO
ALTER TABLE [dbo].[HDNhap]  WITH CHECK ADD  CONSTRAINT [FK_HDNhap_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[HDNhap] CHECK CONSTRAINT [FK_HDNhap_NhaCungCap]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhomSP] FOREIGN KEY([MaNhom])
REFERENCES [dbo].[NhomSP] ([MaNhom])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhomSP]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_NhanVien]
GO
/****** Object:  StoredProcedure [dbo].[DoanhThu_Ngay]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DoanhThu_Ngay]
@ngay date

AS
BEGIN
	SELECT c.MaSP, s.Ten, SUM(c.SoLuong) AS SoLuong, s.GiaBan*SUM(c.SoLuong) AS TongGiaTri
	FROM HDBan h join CTHDBan c on h.MaHD=c.MaHD, SanPham s
	WHERE h.NgayMua LIKE @ngay and c.MaSP=s.MaSP
	GROUP BY c.MaSP, s.Ten, s.GiaBan
END
GO
/****** Object:  StoredProcedure [dbo].[DoanhThu_Ngay_Ngay]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DoanhThu_Ngay_Ngay]
@ngay1 date,
@ngay2 date

AS
BEGIN
	SELECT c.MaSP, s.Ten, SUM(c.SoLuong) AS SoLuong, s.GiaBan*SUM(c.SoLuong) AS TongGiaTri
	FROM HDBan h join CTHDBan c on h.MaHD=c.MaHD, SanPham s
	WHERE h.NgayMua BETWEEN CONVERT(date,@ngay1) and CONVERT(date,@ngay2) and c.MaSP=s.MaSP
	GROUP BY c.MaSP, s.Ten, s.GiaBan
END
GO
/****** Object:  StoredProcedure [dbo].[HDBan_Sua]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[HDBan_Sua]
	@maHD varchar(20),
	@ngaymua date,
	@maNVgiao varchar(20)
AS
BEGIN

	UPDATE HDBan
	SET NgayMua = @ngaymua,
		MaNVGiao = @maNVgiao
	WHERE MaHD = @maHD

END
GO
/****** Object:  StoredProcedure [dbo].[HDBan_Them]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[HDBan_Them]
	@maKH varchar(20),
	@maHD varchar(20),
	@ngaymua date,
	@maNVgiao varchar(20)
AS
BEGIN

	INSERT INTO HDBan (MaKH,MaHD,NgayMua,MaNVGiao)
	VALUES (@maKH,@maHD,@ngaymua,@maNVgiao)

END
GO
/****** Object:  StoredProcedure [dbo].[HDBan_Xoa]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[HDBan_Xoa]
@maHD varchar(20)

AS
BEGIN
	DELETE FROM HDBan WHERE MaHD = @maHD
END
GO
/****** Object:  StoredProcedure [dbo].[HoaDon_HienThi_All]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[HoaDon_HienThi_All]

AS
BEGIN
	SELECT h.MaHD, k.HoTen AS TenKhachHang, h.NgayMua, n.HoTen AS NhanVienGiao
	FROM HDBan h JOIN KhachHang k on h.MaKH=k.MaKH, NhanVien n
	WHERE h.MaNVGiao = n.MaNV
END
GO
/****** Object:  StoredProcedure [dbo].[HoaDon_HienThi_Detail]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[HoaDon_HienThi_Detail]
@maHD varchar(20)

AS
BEGIN
	SELECT s.MaSP, s.Ten, c.SoLuong, (c.SoLuong*s.GiaBan) AS ThanhTien
	FROM CTHDBan c JOIN SanPham s on c.MaSP=s.MaSP
	WHERE c.MaHD = @maHD
END
GO
/****** Object:  StoredProcedure [dbo].[KhachHang_HienThi_All]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[KhachHang_HienThi_All]

AS
BEGIN
	SELECT MaKH, HoTen, SoDT, DiaChi
	FROM KhachHang
END
GO
/****** Object:  StoredProcedure [dbo].[KhachHang_Sua]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[KhachHang_Sua]
	@IDkhach varchar(20),
	@hoten nvarchar(50),
	@diachi nvarchar(70),
	@sdt varchar(20)
AS
BEGIN

	UPDATE KhachHang
	SET HoTen = @hoten,
		DiaChi = @diachi,
		SoDT = @sdt
	WHERE MaKH = @IDkhach

END
GO
/****** Object:  StoredProcedure [dbo].[KhachHang_Them]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[KhachHang_Them]
	@IDkhach varchar(20),
	@hoten nvarchar(50),
	@diachi nvarchar(70),
	@sdt varchar(20)
AS
BEGIN

	INSERT INTO KhachHang(MaKH,HoTen,DiaChi,SoDT)
	VALUES (@IDkhach,@hoten,@diachi,@sdt)

END
GO
/****** Object:  StoredProcedure [dbo].[KhachHang_TimKiem_Name]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[KhachHang_TimKiem_Name]
@tenKH nvarchar(50)

AS
BEGIN
	SELECT MaKH, HoTen, SoDT, DiaChi
	FROM KhachHang
	WHERE HoTen LIKE N'%' + @tenKH + N'%'
END
GO
/****** Object:  StoredProcedure [dbo].[KhachHang_Xoa]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[KhachHang_Xoa]
@maKH varchar(20)

AS
BEGIN
	DELETE FROM KhachHang WHERE MaKH = @maKH
END
GO
/****** Object:  StoredProcedure [dbo].[NhaCC_HienThi_All]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[NhaCC_HienThi_All]

AS
BEGIN
	SELECT * FROM NhaCungCap
END
GO
/****** Object:  StoredProcedure [dbo].[NhaCC_Sua]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[NhaCC_Sua]
@maNCC varchar(20),
@tenNCC nvarchar(50),
@diachi nvarchar(70),
@soDT varchar(20)

AS
BEGIN
	UPDATE NhaCungCap
	SET Ten = @tenNCC,
		DiaChi = @diachi,
		SoDT = @soDT
	WHERE MaNCC = @maNCC
END
GO
/****** Object:  StoredProcedure [dbo].[NhaCC_Them]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[NhaCC_Them]
@maNCC varchar(20),
@tenNCC nvarchar(50),
@diachi nvarchar(50),
@soDT varchar(20)

AS
BEGIN
	INSERT INTO NhaCungCap(MaNCC, Ten, DiaChi, SoDT)
	VALUES (@maNCC, @tenNCC, @diachi, @soDT)
END
GO
/****** Object:  StoredProcedure [dbo].[NhanVien_HienThi_All]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[NhanVien_HienThi_All]

AS
BEGIN
	SELECT * FROM NhanVien
END
GO
/****** Object:  StoredProcedure [dbo].[NhanVien_Sua]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[NhanVien_Sua]
@maNV varchar(20),
@tenNV nvarchar(50),
@diachi nvarchar(50),
@soDT varchar(20),
@luong bigint

AS
BEGIN
	UPDATE NhanVien
	SET HoTen = @tenNV,
		DiaChi = @diachi,
		SoDT = @soDT,
		Luong = @luong
	WHERE MaNV = @maNV
END
GO
/****** Object:  StoredProcedure [dbo].[NhanVien_Them]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[NhanVien_Them]
@maNV varchar(20),
@hoten nvarchar(50),
@diachi nvarchar(50),
@soDT varchar(20),
@luong bigint

AS
BEGIN
	INSERT INTO NhanVien(MaNV, HoTen, DiaChi, SoDT, Luong)
	VALUES (@maNV, @hoten, @diachi, @soDT, @luong)
END
GO
/****** Object:  StoredProcedure [dbo].[NhanVien_TimKiem_Name]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[NhanVien_TimKiem_Name]
@tenNV nvarchar(50)

AS
BEGIN
	SELECT MaNV, HoTen, SoDT, Luong
	FROM NhanVien
	WHERE HoTen LIKE N'%' + @tenNV + N'%'
END
GO
/****** Object:  StoredProcedure [dbo].[NhanVien_TimKiem_Salary]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[NhanVien_TimKiem_Salary]
@luong1 bigint,
@luong2 bigint

AS
BEGIN
	SELECT MaNV, HoTen, SoDT, Luong
	FROM NhanVien
	WHERE Luong BETWEEN @luong1 AND @luong2
END
GO
/****** Object:  StoredProcedure [dbo].[NhanVien_Xoa]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[NhanVien_Xoa]
@maNV varchar(20)

AS
BEGIN
	DELETE FROM NhanVien WHERE MaNV = @maNV
END
GO
/****** Object:  StoredProcedure [dbo].[NhomSP_Them]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[NhomSP_Them]
@manhom varchar(20),
@tennhom nvarchar(50)

AS
BEGIN
	INSERT INTO NhomSP(MaNhom,TenNhom)
	VALUES (@manhom, @tennhom)
END
GO
/****** Object:  StoredProcedure [dbo].[SanPham_HienThi_All]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SanPham_HienThi_All]


AS
BEGIN
	SELECT * FROM SanPham
END

GO
/****** Object:  StoredProcedure [dbo].[SanPham_Sua]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SanPham_Sua]
@maSP varchar(20),
@tenSP nvarchar(100),
@maNCC varchar(20),
@giaban bigint,
@hinhanh varchar(30)

AS
BEGIN
	UPDATE SanPham
	SET Ten = @tenSP,
		MaNCC = @maNCC,
		GiaBan = @giaban,
		HinhAnh = @hinhanh
	WHERE MaSP = @maSP
END
GO
/****** Object:  StoredProcedure [dbo].[SanPham_Them]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SanPham_Them]
@maSP varchar(20),
@tenSP nvarchar(50),
@maNhom varchar(20),
@maNCC varchar(20),
@giaBan bigint

AS
BEGIN
	INSERT INTO SanPham(MaSP, Ten, MaNhom, MaNCC, GiaBan)
	VALUES (@maSP, @tenSP, @maNhom, @maNCC, @giaBan)
END
GO
/****** Object:  StoredProcedure [dbo].[SanPham_TimKiem_ID]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SanPham_TimKiem_ID]
@maSP varchar(20)

AS
BEGIN
	SELECT MaSP, Ten, GiaBan
	FROM SanPham
	WHERE MaSP = @maSP
END

GO
/****** Object:  StoredProcedure [dbo].[SanPham_TimKiem_Name]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SanPham_TimKiem_Name]
@tenSP nvarchar(50)

AS
BEGIN
SELECT s.MaSP, s.Ten AS TenSanPham, n.Ten AS NhaCungCap, s.GiaBan
	FROM SanPham s JOIN NhaCungCap n on s.MaNCC=n.MaNCC
	WHERE s.Ten like (N'%' + @tenSP + N'%')
END

GO
/****** Object:  StoredProcedure [dbo].[SanPham_TimKiem_Price]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SanPham_TimKiem_Price]
@giaBan1 bigint,
@giaBan2 bigint

AS
BEGIN
	SELECT s.MaSP, s.Ten AS TenSanPham, n.Ten AS NhaCungCap, s.GiaBan
	FROM SanPham s JOIN NhaCungCap n on s.MaNCC=n.MaNCC
	WHERE GiaBan BETWEEN @giaBan1 AND @giaBan2
END
GO
/****** Object:  StoredProcedure [dbo].[SanPham_TimKiem_Supplier]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SanPham_TimKiem_Supplier]
@tenNCC nvarchar(50)

AS
BEGIN
	SELECT s.MaSP, s.Ten AS TenSanPham, n.Ten AS NhaCungCap, s.GiaBan
	FROM SanPham s JOIN NhaCungCap n on s.MaNCC=n.MaNCC
	WHERE n.Ten LIKE N'%' + @tenNCC + N'%'
END
GO
/****** Object:  StoredProcedure [dbo].[SanPham_Xoa]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SanPham_Xoa]
@maSP varchar(20)

AS
BEGIN
	DELETE FROM SanPham WHERE MaSP = @maSP
END
GO
/****** Object:  StoredProcedure [dbo].[ThongKe_Ngay]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ThongKe_Ngay]
@ngay date

AS
BEGIN
	SELECT c.MaSP, s.Ten, SUM(c.SoLuong) AS SoLuong
	FROM HDBan h join CTHDBan c on h.MaHD=c.MaHD, SanPham s
	WHERE h.NgayMua LIKE @ngay and c.MaSP=s.MaSP
	GROUP BY c.MaSP, s.Ten
END
GO
/****** Object:  StoredProcedure [dbo].[ThongKe_Ngay_Ngay]    Script Date: 2021/02/27 9:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ThongKe_Ngay_Ngay]
@ngay1 date,
@ngay2 date

AS
BEGIN
	SELECT c.MaSP, s.Ten, SUM(c.SoLuong) AS SoLuong
	FROM HDBan h join CTHDBan c on h.MaHD=c.MaHD, SanPham s
	WHERE h.NgayMua BETWEEN CONVERT(date,@ngay1) and CONVERT(date,@ngay2) and c.MaSP=s.MaSP
	GROUP BY c.MaSP, s.Ten
END
GO
USE [master]
GO
ALTER DATABASE [CuaHangTienLoi] SET  READ_WRITE 
GO
