USE [master]
GO

/****** Object:  Database [Information]    Script Date: 10/06/2019 1:23:38 PM ******/
DROP DATABASE [Information]
GO

/****** Object:  Database [Information]    Script Date: 10/06/2019 1:23:38 PM ******/
CREATE DATABASE [Information]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Information', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER2017\MSSQL\DATA\Information.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Information_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER2017\MSSQL\DATA\Information_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [Information] SET COMPATIBILITY_LEVEL = 140
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Information].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Information] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Information] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Information] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Information] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Information] SET ARITHABORT OFF 
GO

ALTER DATABASE [Information] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Information] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Information] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Information] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Information] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Information] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Information] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Information] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Information] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Information] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Information] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Information] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Information] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Information] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Information] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Information] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Information] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Information] SET RECOVERY FULL 
GO

ALTER DATABASE [Information] SET  MULTI_USER 
GO

ALTER DATABASE [Information] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Information] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Information] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Information] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [Information] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [Information] SET QUERY_STORE = OFF
GO

ALTER DATABASE [Information] SET  READ_WRITE 
GO


