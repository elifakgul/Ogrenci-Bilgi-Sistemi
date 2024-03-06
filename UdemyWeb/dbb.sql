USE [master]
GO
/****** Object:  Database [UdemySiteDBB]    Script Date: 9.01.2024 16:01:38 ******/
CREATE DATABASE [UdemySiteDBB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'UdemySiteDBB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\UdemySiteDBB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'UdemySiteDBB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\UdemySiteDBB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [UdemySiteDBB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UdemySiteDBB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UdemySiteDBB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UdemySiteDBB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UdemySiteDBB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UdemySiteDBB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UdemySiteDBB] SET ARITHABORT OFF 
GO
ALTER DATABASE [UdemySiteDBB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [UdemySiteDBB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [UdemySiteDBB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [UdemySiteDBB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UdemySiteDBB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UdemySiteDBB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UdemySiteDBB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UdemySiteDBB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UdemySiteDBB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UdemySiteDBB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [UdemySiteDBB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UdemySiteDBB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UdemySiteDBB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UdemySiteDBB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UdemySiteDBB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UdemySiteDBB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [UdemySiteDBB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [UdemySiteDBB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [UdemySiteDBB] SET  MULTI_USER 
GO
ALTER DATABASE [UdemySiteDBB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UdemySiteDBB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [UdemySiteDBB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [UdemySiteDBB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [UdemySiteDBB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [UdemySiteDBB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [UdemySiteDBB] SET QUERY_STORE = ON
GO
ALTER DATABASE [UdemySiteDBB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [UdemySiteDBB]
GO
/****** Object:  Table [dbo].[TBL_DERSLER]    Script Date: 9.01.2024 16:01:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_DERSLER](
	[DERSID] [int] IDENTITY(1,1) NOT NULL,
	[DERSAD] [varchar](50) NULL,
 CONSTRAINT [PK_TBL_DERSLER] PRIMARY KEY CLUSTERED 
(
	[DERSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_DUYURULAR]    Script Date: 9.01.2024 16:01:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_DUYURULAR](
	[DUYURUID] [int] IDENTITY(1,1) NOT NULL,
	[DUYURUBASLIK] [varchar](50) NULL,
	[DUYURUICERIK] [varchar](250) NULL,
	[DUYURUOGRT] [int] NULL,
 CONSTRAINT [PK_TBL_DUYURULAR] PRIMARY KEY CLUSTERED 
(
	[DUYURUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_MESAJLAR]    Script Date: 9.01.2024 16:01:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_MESAJLAR](
	[MESAJID] [int] IDENTITY(1,1) NOT NULL,
	[GONDEREN] [varchar](5) NULL,
	[ALICI] [varchar](5) NULL,
	[BASLIK] [varchar](50) NULL,
	[ICERIK] [varchar](500) NULL,
	[TARIH] [smalldatetime] NULL,
 CONSTRAINT [PK_TBL_MESAJLAR] PRIMARY KEY CLUSTERED 
(
	[MESAJID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_NOTLAR]    Script Date: 9.01.2024 16:01:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_NOTLAR](
	[NOTID] [int] NULL,
	[OGRENCIID] [int] NOT NULL,
	[DERSNID] [int] NOT NULL,
	[SINAV1] [tinyint] NULL,
	[SINAV2] [tinyint] NULL,
	[SINAV3] [tinyint] NULL,
	[ORTALAMA] [decimal](18, 2) NULL,
	[DURUM] [bit] NULL,
 CONSTRAINT [PK_TBL_NOTLAR] PRIMARY KEY CLUSTERED 
(
	[OGRENCIID] ASC,
	[DERSNID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_OGRENCI]    Script Date: 9.01.2024 16:01:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_OGRENCI](
	[OGRID] [int] IDENTITY(1,1) NOT NULL,
	[NUMARA] [varchar](5) NULL,
	[OGRAD] [varchar](30) NULL,
	[OGRSOYAD] [varchar](30) NULL,
	[OGRFOTOGRAF] [varchar](100) NULL,
	[OGRTELEFON] [varchar](20) NULL,
	[OGRMAIL] [varchar](50) NULL,
	[OGRSIFRE] [varchar](50) NULL,
 CONSTRAINT [PK_TBL_OGRENCI] PRIMARY KEY CLUSTERED 
(
	[OGRID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_OGRETMEN]    Script Date: 9.01.2024 16:01:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_OGRETMEN](
	[OGRTID] [int] IDENTITY(1,1) NOT NULL,
	[OGRTADSOYAD] [varchar](30) NULL,
	[OGRTFOTO] [varchar](100) NULL,
	[OGRTBRANS] [int] NULL,
	[OGRNUMARA] [varchar](5) NULL,
 CONSTRAINT [PK_TBL_OGRETMEN] PRIMARY KEY CLUSTERED 
(
	[OGRTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TBL_MESAJLAR] ADD  CONSTRAINT [DF_TBL_MESAJLAR_TARIH]  DEFAULT (getdate()) FOR [TARIH]
GO
ALTER TABLE [dbo].[TBL_NOTLAR] ADD  CONSTRAINT [DF_TBL_NOTLAR_SINAV1]  DEFAULT ((0)) FOR [SINAV1]
GO
ALTER TABLE [dbo].[TBL_NOTLAR] ADD  CONSTRAINT [DF_TBL_NOTLAR_SINAV2]  DEFAULT ((0)) FOR [SINAV2]
GO
ALTER TABLE [dbo].[TBL_NOTLAR] ADD  CONSTRAINT [DF_TBL_NOTLAR_SINAV3]  DEFAULT ((0)) FOR [SINAV3]
GO
ALTER TABLE [dbo].[TBL_NOTLAR] ADD  CONSTRAINT [DF_TBL_NOTLAR_ORTALAMA]  DEFAULT ((0)) FOR [ORTALAMA]
GO
ALTER TABLE [dbo].[TBL_NOTLAR] ADD  CONSTRAINT [DF_TBL_NOTLAR_DURUM]  DEFAULT ((0)) FOR [DURUM]
GO
ALTER TABLE [dbo].[TBL_DUYURULAR]  WITH CHECK ADD  CONSTRAINT [FK_TBL_DUYURULAR_TBL_OGRETMEN] FOREIGN KEY([DUYURUOGRT])
REFERENCES [dbo].[TBL_OGRETMEN] ([OGRTID])
GO
ALTER TABLE [dbo].[TBL_DUYURULAR] CHECK CONSTRAINT [FK_TBL_DUYURULAR_TBL_OGRETMEN]
GO
ALTER TABLE [dbo].[TBL_NOTLAR]  WITH CHECK ADD  CONSTRAINT [FK_TBL_NOTLAR_TBL_DERSLER] FOREIGN KEY([DERSNID])
REFERENCES [dbo].[TBL_DERSLER] ([DERSID])
GO
ALTER TABLE [dbo].[TBL_NOTLAR] CHECK CONSTRAINT [FK_TBL_NOTLAR_TBL_DERSLER]
GO
ALTER TABLE [dbo].[TBL_NOTLAR]  WITH CHECK ADD  CONSTRAINT [FK_TBL_NOTLAR_TBL_OGRENCI] FOREIGN KEY([OGRENCIID])
REFERENCES [dbo].[TBL_OGRENCI] ([OGRID])
GO
ALTER TABLE [dbo].[TBL_NOTLAR] CHECK CONSTRAINT [FK_TBL_NOTLAR_TBL_OGRENCI]
GO
ALTER TABLE [dbo].[TBL_OGRETMEN]  WITH CHECK ADD  CONSTRAINT [FK_TBL_OGRETMEN_TBL_DERSLER] FOREIGN KEY([OGRTBRANS])
REFERENCES [dbo].[TBL_DERSLER] ([DERSID])
GO
ALTER TABLE [dbo].[TBL_OGRETMEN] CHECK CONSTRAINT [FK_TBL_OGRETMEN_TBL_DERSLER]
GO
/****** Object:  StoredProcedure [dbo].[OgrNotlari]    Script Date: 9.01.2024 16:01:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[OgrNotlari]
As
Select NOTID, OGRENCIID,(OGRAD+' '+OGRSOYAD) AS 'OGRENCIADSOYAD',DERSAD,SINAV1,SINAV2,SINAV3,ORTALAMA,DURUM from TBL_NOTLAR
INNER JOIN TBL_OGRENCI
ON TBL_OGRENCI.OGRID=TBL_NOTLAR.OGRENCIID
INNER JOIN TBL_DERSLER
ON TBL_DERSLER.DERSID=TBL_NOTLAR.DERSNID
GO
USE [master]
GO
ALTER DATABASE [UdemySiteDBB] SET  READ_WRITE 
GO
