USE [master]
GO

/****** Object:  Database [dbCiaTecnica]    Script Date: 10/24/2018 01:03:03 ******/
IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'dbCiaTecnica')
DROP DATABASE [dbCiaTecnica]
GO

CREATE DATABASE [dbCiaTecnica] ON  PRIMARY 
( NAME = N'dbCiaTecnica', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\dbCiaTecnica.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'dbCiaTecnica_log', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\dbCiaTecnica_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [dbCiaTecnica] SET COMPATIBILITY_LEVEL = 100
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbCiaTecnica].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [dbCiaTecnica] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [dbCiaTecnica] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [dbCiaTecnica] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [dbCiaTecnica] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [dbCiaTecnica] SET ARITHABORT OFF 
GO

ALTER DATABASE [dbCiaTecnica] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [dbCiaTecnica] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [dbCiaTecnica] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [dbCiaTecnica] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [dbCiaTecnica] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [dbCiaTecnica] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [dbCiaTecnica] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [dbCiaTecnica] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [dbCiaTecnica] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [dbCiaTecnica] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [dbCiaTecnica] SET  DISABLE_BROKER 
GO

ALTER DATABASE [dbCiaTecnica] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [dbCiaTecnica] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [dbCiaTecnica] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [dbCiaTecnica] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [dbCiaTecnica] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [dbCiaTecnica] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [dbCiaTecnica] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [dbCiaTecnica] SET  READ_WRITE 
GO

ALTER DATABASE [dbCiaTecnica] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [dbCiaTecnica] SET  MULTI_USER 
GO

ALTER DATABASE [dbCiaTecnica] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [dbCiaTecnica] SET DB_CHAINING OFF 
GO

/****** Object:  Table [dbo].[Cliente]    Script Date: 10/24/2018 01:05:33 ******/
USE [dbCiaTecnica]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Cliente](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[NrCpfCnPj] [nvarchar](14) NULL,
	[NmClienteRazao] [nvarchar](15) NULL,
	[NmSobreFantasia] [nvarchar](15) NULL,
	[TpPessoa] [int] NULL,
	[DtNascimento] [smalldatetime] NULL,
	[NrCep] [nchar](8) NULL,
	[NmLogradouro] [nvarchar](50) NULL,
	[NrNumero] [int] NULL,
	[NmComplemento] [nvarchar](30) NULL,
	[NmBairro] [nvarchar](50) NULL,
	[NmCidade] [nvarchar](50) NULL,
	[NmUF] [nvarchar](2) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO



/****** Object:  Table [dbo].[TipoPessoa]    Script Date: 10/24/2018 01:06:26 ******/
USE [dbCiaTecnica]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TipoPessoa](
	[IdTipoPessoa] [int] IDENTITY(1,1) NOT NULL,
	[NmTipoPessoa] [nvarchar](50) NULL,
 CONSTRAINT [PK_TipoCliente] PRIMARY KEY CLUSTERED 
(
	[IdTipoPessoa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


/****** Object:  Table [dbo].[Estado]    Script Date: 10/24/2018 01:06:42 ******/
USE [dbCiaTecnica]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Estado](
	[IdEstado] [int] IDENTITY(1,1) NOT NULL,
	[NmUF] [nvarchar](2) NULL,
	[NmEstado] [nvarchar](50) NULL,
 CONSTRAINT [PK_Estado] PRIMARY KEY CLUSTERED 
(
	[IdEstado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


