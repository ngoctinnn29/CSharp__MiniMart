CREATE DATABASE [mini-mart]
GO
ALTER DATABASE [mini-mart] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [mini-mart].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [mini-mart] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [mini-mart] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [mini-mart] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [mini-mart] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [mini-mart] SET ARITHABORT OFF 
GO
ALTER DATABASE [mini-mart] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [mini-mart] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [mini-mart] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [mini-mart] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [mini-mart] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [mini-mart] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [mini-mart] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [mini-mart] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [mini-mart] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [mini-mart] SET  DISABLE_BROKER 
GO
ALTER DATABASE [mini-mart] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [mini-mart] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [mini-mart] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [mini-mart] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [mini-mart] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [mini-mart] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [mini-mart] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [mini-mart] SET RECOVERY FULL 
GO
ALTER DATABASE [mini-mart] SET  MULTI_USER 
GO
ALTER DATABASE [mini-mart] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [mini-mart] SET DB_CHAINING OFF 
GO
ALTER DATABASE [mini-mart] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [mini-mart] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [mini-mart] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [mini-mart] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'mini-mart', N'ON'
GO
ALTER DATABASE [mini-mart] SET QUERY_STORE = ON
GO
ALTER DATABASE [mini-mart] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [mini-mart]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 11/6/2023 8:29:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[maAdmin] [varchar](10) NOT NULL,
	[tenTaiKhoan] [nvarchar](255) NOT NULL,
	[tenAdmin] [nvarchar](255) NOT NULL,
	[gioiTinh] [nvarchar](3) NULL,
	[ngaySinh] [date] NULL,
	[soDienThoai] [varchar](15) NULL,
	[email] [varchar](255) NULL,
	[diaChi] [nvarchar](255) NULL,
	[trangThai] [bit] NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[maAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 11/6/2023 8:29:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[maHoaDon] [varchar](10) NOT NULL,
	[maSanPham] [varchar](10) NOT NULL,
	[maKhuyenMai] [varchar](10) NOT NULL,
	[soLuong] [int] NOT NULL,
	[donGia] [money] NOT NULL,
	[thanhTien] [money] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 11/6/2023 8:29:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[maPhieuNhap] [varchar](10) NOT NULL,
	[maSanPham] [varchar](10) NOT NULL,
	[soLuong] [int] NOT NULL,
	[donGia] [money] NOT NULL,
	[thanhTien] [money] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 11/6/2023 8:29:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[maHoaDon] [varchar](10) NOT NULL,
	[maNhanVien] [varchar](10) NOT NULL,
	[maKhachHang] [varchar](10) NULL,
	[maKhuyenMai] [varchar](10) NULL,
	[thoiGianTao] [datetime] NOT NULL,
	[tongTien] [money] NOT NULL,
	[giaTriKhuyenMai] [money] NULL,
	[thanhTien] [money] NOT NULL,
	[tienNhan] [money] NOT NULL,
	[tienThua] [money] NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[maHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/6/2023 8:29:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[maKhachHang] [varchar](10) NOT NULL,
	[tenKhachHang] [nvarchar](255) NOT NULL,
	[gioiTinh] [nvarchar](3) NULL,
	[ngaySinh] [date] NULL,
	[soDienThoai] [varchar](15) NOT NULL,
	[email] [varchar](255) NULL,
	[diaChi] [nvarchar](255) NULL,
	[bacThanhVien] [nvarchar](50) NOT NULL,
	[diemThanhVien] [int] NOT NULL,
	[diemTichLuy] [int] NOT NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[maKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 11/6/2023 8:29:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[maKhuyenMai] [varchar](10) NOT NULL,
	[maQuanLi] [varchar](10) NOT NULL,
	[tenKhuyenMai] [nvarchar](255) NOT NULL,
	[thoiGianBatDau] [datetime] NOT NULL,
	[thoiGianKetThuc] [datetime] NOT NULL,
	[doiTuongApDung] [nvarchar](50) NOT NULL,
	[loaiGiaTri] [nvarchar](50) NOT NULL,
	[giaTriApDung] [float] NOT NULL,
	[trangThai] [bit] NOT NULL,
 CONSTRAINT [PK_KhuyenMai] PRIMARY KEY CLUSTERED 
(
	[maKhuyenMai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 11/6/2023 8:29:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[maLoaiSanPham] [varchar](10) NOT NULL,
	[tenLoaiSanPham] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[maLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 11/6/2023 8:29:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[maNhaCungCap] [varchar](10) NOT NULL,
	[tenNhaCungCap] [nvarchar](255) NOT NULL,
	[soDienThoai] [varchar](15) NULL,
	[email] [varchar](255) NULL,
	[diaChi] [nvarchar](255) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[maNhaCungCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/6/2023 8:29:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[maNhanVien] [varchar](10) NOT NULL,
	[tenTaiKhoan] [nvarchar](255) NOT NULL,
	[tenNhanVien] [nvarchar](255) NOT NULL,
	[gioiTinh] [nvarchar](3) NULL,
	[ngaySinh] [date] NULL,
	[soDienThoai] [varchar](15) NULL,
	[email] [varchar](255) NULL,
	[diaChi] [nvarchar](255) NULL,
	[trangThai] [bit] NOT NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[maNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 11/6/2023 8:29:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[maPhanQuyen] [varchar](10) NOT NULL,
	[tenPhanQuyen] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[maPhanQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 11/6/2023 8:29:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[maPhieuNhap] [varchar](10) NOT NULL,
	[maNhaCungCap] [varchar](10) NOT NULL,
	[maNhanVien] [varchar](10) NOT NULL,
	[maQuanLi] [varchar](10) NOT NULL,
	[thoiGianTao] [datetime] NOT NULL,
	[thanhTien] [money] NOT NULL,
	[trangThaiDuyet] [bit] NOT NULL,
	[trangThai] [bit] NOT NULL,
 CONSTRAINT [PK_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[maPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuanLi]    Script Date: 11/6/2023 8:29:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuanLi](
	[maQuanLi] [varchar](10) NOT NULL,
	[tenTaiKhoan] [nvarchar](255) NOT NULL,
	[tenQuanLi] [nvarchar](255) NOT NULL,
	[gioiTinh] [nvarchar](3) NULL,
	[ngaySinh] [date] NULL,
	[soDienThoai] [varchar](15) NULL,
	[email] [varchar](255) NULL,
	[diaChi] [nvarchar](255) NULL,
	[trangThai] [bit] NOT NULL,
 CONSTRAINT [PK_QuanLi] PRIMARY KEY CLUSTERED 
(
	[maQuanLi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 11/6/2023 8:29:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[maSanPham] [varchar](10) NOT NULL,
	[maLoaiSanPham] [varchar](10) NOT NULL,
	[maNhaCungCap] [varchar](10) NOT NULL,
	[tenSanPham] [nvarchar](255) NOT NULL,
	[donViTinh] [nvarchar](50) NOT NULL,
	[soLuong] [int] NOT NULL,
	[giaBan] [money] NOT NULL,
	[duongDanAnh] [varchar](255) NOT NULL,
	[trangThai] [bit] NOT NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[maSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 11/6/2023 8:29:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[maPhanQuyen] [varchar](10) NOT NULL,
	[tenTaiKhoan] [nvarchar](255) NOT NULL,
	[matKhau] [varchar](50) NOT NULL,
	[trangThai] [bit] NOT NULL,
 CONSTRAINT [PK_TaiKhoan_1] PRIMARY KEY CLUSTERED 
(
	[tenTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Admin]  WITH CHECK ADD  CONSTRAINT [FK_Admin_TaiKhoan] FOREIGN KEY([tenTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([tenTaiKhoan])
GO
ALTER TABLE [dbo].[Admin] CHECK CONSTRAINT [FK_Admin_TaiKhoan]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([maHoaDon])
REFERENCES [dbo].[HoaDon] ([maHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_KhuyenMai] FOREIGN KEY([maKhuyenMai])
REFERENCES [dbo].[KhuyenMai] ([maKhuyenMai])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_KhuyenMai]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_SanPham] FOREIGN KEY([maSanPham])
REFERENCES [dbo].[SanPham] ([maSanPham])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_SanPham]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_MaPhieuNhap] FOREIGN KEY([maPhieuNhap])
REFERENCES [dbo].[PhieuNhap] ([maPhieuNhap])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_MaPhieuNhap]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_SanPham] FOREIGN KEY([maSanPham])
REFERENCES [dbo].[SanPham] ([maSanPham])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_SanPham]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([maKhachHang])
REFERENCES [dbo].[KhachHang] ([maKhachHang])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhuyenMai] FOREIGN KEY([maKhuyenMai])
REFERENCES [dbo].[KhuyenMai] ([maKhuyenMai])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhuyenMai]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[KhuyenMai]  WITH CHECK ADD  CONSTRAINT [FK_KhuyenMai_QuanLi] FOREIGN KEY([maQuanLi])
REFERENCES [dbo].[QuanLi] ([maQuanLi])
GO
ALTER TABLE [dbo].[KhuyenMai] CHECK CONSTRAINT [FK_KhuyenMai_QuanLi]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_TaiKhoan] FOREIGN KEY([tenTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([tenTaiKhoan])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_TaiKhoan]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhaCungCap] FOREIGN KEY([maNhaCungCap])
REFERENCES [dbo].[NhaCungCap] ([maNhaCungCap])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhaCungCap]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhanVien] FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhanVien]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_QuanLi] FOREIGN KEY([maQuanLi])
REFERENCES [dbo].[QuanLi] ([maQuanLi])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_QuanLi]
GO
ALTER TABLE [dbo].[QuanLi]  WITH CHECK ADD  CONSTRAINT [FK_QuanLi_TaiKhoan] FOREIGN KEY([tenTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([tenTaiKhoan])
GO
ALTER TABLE [dbo].[QuanLi] CHECK CONSTRAINT [FK_QuanLi_TaiKhoan]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([maLoaiSanPham])
REFERENCES [dbo].[LoaiSanPham] ([maLoaiSanPham])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaCungCap] FOREIGN KEY([maNhaCungCap])
REFERENCES [dbo].[NhaCungCap] ([maNhaCungCap])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaCungCap]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_PhanQuyen] FOREIGN KEY([maPhanQuyen])
REFERENCES [dbo].[PhanQuyen] ([maPhanQuyen])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_PhanQuyen]
GO
USE [master]
GO
ALTER DATABASE [mini-mart] SET  READ_WRITE 
GO
