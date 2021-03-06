USE [master]
GO
/****** Object:  Database [veritabani]    Script Date: 21.01.2021 18:45:27 ******/
CREATE DATABASE [veritabani]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'veritabani', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\veritabani.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'veritabani_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\veritabani_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [veritabani] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [veritabani].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [veritabani] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [veritabani] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [veritabani] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [veritabani] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [veritabani] SET ARITHABORT OFF 
GO
ALTER DATABASE [veritabani] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [veritabani] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [veritabani] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [veritabani] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [veritabani] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [veritabani] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [veritabani] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [veritabani] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [veritabani] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [veritabani] SET  DISABLE_BROKER 
GO
ALTER DATABASE [veritabani] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [veritabani] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [veritabani] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [veritabani] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [veritabani] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [veritabani] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [veritabani] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [veritabani] SET RECOVERY FULL 
GO
ALTER DATABASE [veritabani] SET  MULTI_USER 
GO
ALTER DATABASE [veritabani] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [veritabani] SET DB_CHAINING OFF 
GO
ALTER DATABASE [veritabani] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [veritabani] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [veritabani] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [veritabani] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'veritabani', N'ON'
GO
ALTER DATABASE [veritabani] SET QUERY_STORE = OFF
GO
USE [veritabani]
GO
/****** Object:  UserDefinedFunction [dbo].[veritabani]    Script Date: 21.01.2021 18:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[veritabani] (@object_id int, @index_id int)
RETURNS sysname
AS
BEGIN
RETURN(SELECT name FROM sys.indexes WHERE
 
 object_id = @object_id and index_id = @index_id)
END;
GO
/****** Object:  Table [dbo].[Alıslar]    Script Date: 21.01.2021 18:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alıslar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[aliAdi] [nvarchar](30) NOT NULL,
	[tedarikAdi] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bolgeler]    Script Date: 21.01.2021 18:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bolgeler](
	[bolgeId] [int] IDENTITY(1,1) NOT NULL,
	[bolgeAdi] [nvarchar](30) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Müdürs]    Script Date: 21.01.2021 18:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Müdürs](
	[mudurId] [int] IDENTITY(1,1) NOT NULL,
	[mudurAdi] [nvarchar](30) NOT NULL,
	[mudurbolge] [nvarchar](15) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sehirAdi]    Script Date: 21.01.2021 18:45:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sehirAdi](
	[sehirId] [int] IDENTITY(1,1) NOT NULL,
	[sehirAdi] [nvarchar](30) NOT NULL,
	[sehirbolge] [nvarchar](15) NOT NULL,
	[muduradi] [nvarchar](9) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Alıslar] ON 

INSERT [dbo].[Alıslar] ([Id], [aliAdi], [tedarikAdi]) VALUES (1, N'TavuKANAT', N'AsafET')
INSERT [dbo].[Alıslar] ([Id], [aliAdi], [tedarikAdi]) VALUES (2, N'Köfte', N'AsafET')
INSERT [dbo].[Alıslar] ([Id], [aliAdi], [tedarikAdi]) VALUES (3, N'Tavuk Pirzola', N'AsafET')
INSERT [dbo].[Alıslar] ([Id], [aliAdi], [tedarikAdi]) VALUES (4, N'Antrikot', N'AsafET')
INSERT [dbo].[Alıslar] ([Id], [aliAdi], [tedarikAdi]) VALUES (5, N'Sucuk', N'KasapAli')
INSERT [dbo].[Alıslar] ([Id], [aliAdi], [tedarikAdi]) VALUES (6, N'Tavuk But', N'KasapVeli')
INSERT [dbo].[Alıslar] ([Id], [aliAdi], [tedarikAdi]) VALUES (7, N'Tavuk', N'Kasap')
INSERT [dbo].[Alıslar] ([Id], [aliAdi], [tedarikAdi]) VALUES (8, N'Ciğer', N'KasapAli')
INSERT [dbo].[Alıslar] ([Id], [aliAdi], [tedarikAdi]) VALUES (9, N'KuzuBut', N'Kasap')
SET IDENTITY_INSERT [dbo].[Alıslar] OFF
GO
SET IDENTITY_INSERT [dbo].[Bolgeler] ON 

INSERT [dbo].[Bolgeler] ([bolgeId], [bolgeAdi]) VALUES (1, N'Zümrütevler')
INSERT [dbo].[Bolgeler] ([bolgeId], [bolgeAdi]) VALUES (2, N'Maltepe')
INSERT [dbo].[Bolgeler] ([bolgeId], [bolgeAdi]) VALUES (3, N'Kadiköy')
INSERT [dbo].[Bolgeler] ([bolgeId], [bolgeAdi]) VALUES (4, N'Küçükyalı')
INSERT [dbo].[Bolgeler] ([bolgeId], [bolgeAdi]) VALUES (5, N'Pendik')
SET IDENTITY_INSERT [dbo].[Bolgeler] OFF
GO
SET IDENTITY_INSERT [dbo].[Müdürs] ON 

INSERT [dbo].[Müdürs] ([mudurId], [mudurAdi], [mudurbolge]) VALUES (1, N'Ali', N'Zümrütevler')
INSERT [dbo].[Müdürs] ([mudurId], [mudurAdi], [mudurbolge]) VALUES (2, N'Ahmet', N'Maltepe')
INSERT [dbo].[Müdürs] ([mudurId], [mudurAdi], [mudurbolge]) VALUES (3, N'Ayşe', N'Kadiköy')
INSERT [dbo].[Müdürs] ([mudurId], [mudurAdi], [mudurbolge]) VALUES (4, N'Fatma', N'Küçükyalı')
INSERT [dbo].[Müdürs] ([mudurId], [mudurAdi], [mudurbolge]) VALUES (5, N'Ece', N'Pendik')
SET IDENTITY_INSERT [dbo].[Müdürs] OFF
GO
SET IDENTITY_INSERT [dbo].[sehirAdi] ON 

INSERT [dbo].[sehirAdi] ([sehirId], [sehirAdi], [sehirbolge], [muduradi]) VALUES (1, N'İstanbul', N'Zümrütevler', N'Ali')
INSERT [dbo].[sehirAdi] ([sehirId], [sehirAdi], [sehirbolge], [muduradi]) VALUES (2, N'İstanbul', N'Maltepe', N'Ahmet')
INSERT [dbo].[sehirAdi] ([sehirId], [sehirAdi], [sehirbolge], [muduradi]) VALUES (3, N'İstanbul', N'Kadiköy', N'Ayşe')
INSERT [dbo].[sehirAdi] ([sehirId], [sehirAdi], [sehirbolge], [muduradi]) VALUES (4, N'İstanbul', N'Küçükyalı', N'Fatma')
INSERT [dbo].[sehirAdi] ([sehirId], [sehirAdi], [sehirbolge], [muduradi]) VALUES (5, N'İstanbul', N'Pendik', N'Ece')
SET IDENTITY_INSERT [dbo].[sehirAdi] OFF
GO
/****** Object:  StoredProcedure [dbo].[alisekle]    Script Date: 21.01.2021 18:45:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[alisekle]
@a_AliAdi nvarchar (30),
@a_tedarikAdi nvarchar (30)
AS
insert into Alıslar values(@a_AliAdi,@a_tedarikAdi)
GO
/****** Object:  StoredProcedure [dbo].[alisgöster]    Script Date: 21.01.2021 18:45:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[alisgöster] 
@a_aliAdi nvarchar (30)
AS
select * from Alıslar where	aliAdi=@a_aliAdi
GO
/****** Object:  StoredProcedure [dbo].[alislistesi]    Script Date: 21.01.2021 18:45:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[alislistesi]
AS
select *from Alıslar
GO
/****** Object:  StoredProcedure [dbo].[bakım]    Script Date: 21.01.2021 18:45:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[bakım]
as	
select * from sys.dm_db_index_physical_stats (DB_ID(),null,null,null,'LIMITED') WHERE avg_fragmentation_in_percent >10.0 and index_id>0
GO
/****** Object:  StoredProcedure [dbo].[sorgusp]    Script Date: 21.01.2021 18:45:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sorgusp]
as
GO
USE [master]
GO
ALTER DATABASE [veritabani] SET  READ_WRITE 
GO
