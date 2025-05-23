USE [master]
GO
/****** Object:  Database [CodeMeli]    Script Date: 6/2/2019 4:46:32 PM ******/
CREATE DATABASE [CodeMeli]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CodeMeli', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\CodeMeli.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CodeMeli_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\CodeMeli_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [CodeMeli] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CodeMeli].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CodeMeli] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CodeMeli] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CodeMeli] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CodeMeli] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CodeMeli] SET ARITHABORT OFF 
GO
ALTER DATABASE [CodeMeli] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CodeMeli] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CodeMeli] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CodeMeli] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CodeMeli] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CodeMeli] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CodeMeli] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CodeMeli] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CodeMeli] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CodeMeli] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CodeMeli] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CodeMeli] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CodeMeli] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CodeMeli] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CodeMeli] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CodeMeli] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CodeMeli] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CodeMeli] SET RECOVERY FULL 
GO
ALTER DATABASE [CodeMeli] SET  MULTI_USER 
GO
ALTER DATABASE [CodeMeli] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CodeMeli] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CodeMeli] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CodeMeli] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CodeMeli] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'CodeMeli', N'ON'
GO
ALTER DATABASE [CodeMeli] SET QUERY_STORE = OFF
GO
USE [CodeMeli]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [CodeMeli]
GO
/****** Object:  Table [dbo].[CodeHistories]    Script Date: 6/2/2019 4:46:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CodeHistories](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Ip] [nvarchar](50) NULL,
	[CreatedDateTime] [datetime] NULL,
 CONSTRAINT [PK_CodeHistories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CodeHistories] ON 

INSERT [dbo].[CodeHistories] ([Id], [Code], [Ip], [CreatedDateTime]) VALUES (2, N'0568666666', N'123', CAST(N'2019-06-02T16:44:29.980' AS DateTime))
INSERT [dbo].[CodeHistories] ([Id], [Code], [Ip], [CreatedDateTime]) VALUES (3, N'0568666666', N'123', CAST(N'2019-06-02T16:44:40.710' AS DateTime))
SET IDENTITY_INSERT [dbo].[CodeHistories] OFF
USE [master]
GO
ALTER DATABASE [CodeMeli] SET  READ_WRITE 
GO
