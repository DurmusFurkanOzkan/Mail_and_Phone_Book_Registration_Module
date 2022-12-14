USE [master]
GO
/****** Object:  Database [Telefon_Mail_Kayıt_Rehberi]    Script Date: 21.10.2022 15:26:25 ******/
CREATE DATABASE [Telefon_Mail_Kayıt_Rehberi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Telefon_Mail_Kayıt_Rehberi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Telefon_Mail_Kayıt_Rehberi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Telefon_Mail_Kayıt_Rehberi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Telefon_Mail_Kayıt_Rehberi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Telefon_Mail_Kayıt_Rehberi] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Telefon_Mail_Kayıt_Rehberi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Telefon_Mail_Kayıt_Rehberi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Telefon_Mail_Kayıt_Rehberi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Telefon_Mail_Kayıt_Rehberi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Telefon_Mail_Kayıt_Rehberi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Telefon_Mail_Kayıt_Rehberi] SET ARITHABORT OFF 
GO
ALTER DATABASE [Telefon_Mail_Kayıt_Rehberi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Telefon_Mail_Kayıt_Rehberi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Telefon_Mail_Kayıt_Rehberi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Telefon_Mail_Kayıt_Rehberi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Telefon_Mail_Kayıt_Rehberi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Telefon_Mail_Kayıt_Rehberi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Telefon_Mail_Kayıt_Rehberi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Telefon_Mail_Kayıt_Rehberi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Telefon_Mail_Kayıt_Rehberi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Telefon_Mail_Kayıt_Rehberi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Telefon_Mail_Kayıt_Rehberi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Telefon_Mail_Kayıt_Rehberi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Telefon_Mail_Kayıt_Rehberi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Telefon_Mail_Kayıt_Rehberi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Telefon_Mail_Kayıt_Rehberi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Telefon_Mail_Kayıt_Rehberi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Telefon_Mail_Kayıt_Rehberi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Telefon_Mail_Kayıt_Rehberi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Telefon_Mail_Kayıt_Rehberi] SET  MULTI_USER 
GO
ALTER DATABASE [Telefon_Mail_Kayıt_Rehberi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Telefon_Mail_Kayıt_Rehberi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Telefon_Mail_Kayıt_Rehberi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Telefon_Mail_Kayıt_Rehberi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Telefon_Mail_Kayıt_Rehberi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Telefon_Mail_Kayıt_Rehberi] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Telefon_Mail_Kayıt_Rehberi] SET QUERY_STORE = OFF
GO
USE [Telefon_Mail_Kayıt_Rehberi]
GO
/****** Object:  Table [dbo].[Kayit]    Script Date: 21.10.2022 15:26:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kayit](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[AD] [varchar](20) NULL,
	[SOYAD] [varchar](20) NULL,
	[TELEFON] [varchar](20) NULL,
	[MAIL] [varchar](20) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Telefon_Mail_Kayıt_Rehberi] SET  READ_WRITE 
GO
