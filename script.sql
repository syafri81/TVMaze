USE [master]
GO
/****** Object:  Database [TVMaze]    Script Date: 02/28/2022 06:52:27 ******/
CREATE DATABASE [TVMaze] ON  PRIMARY 
( NAME = N'TVMaze', FILENAME = N'E:\DBFile\TVMaze.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TVMaze_log', FILENAME = N'E:\DBFile\TVMaze_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TVMaze] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TVMaze].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TVMaze] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [TVMaze] SET ANSI_NULLS OFF
GO
ALTER DATABASE [TVMaze] SET ANSI_PADDING OFF
GO
ALTER DATABASE [TVMaze] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [TVMaze] SET ARITHABORT OFF
GO
ALTER DATABASE [TVMaze] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [TVMaze] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [TVMaze] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [TVMaze] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [TVMaze] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [TVMaze] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [TVMaze] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [TVMaze] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [TVMaze] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [TVMaze] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [TVMaze] SET  DISABLE_BROKER
GO
ALTER DATABASE [TVMaze] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [TVMaze] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [TVMaze] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [TVMaze] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [TVMaze] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [TVMaze] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [TVMaze] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [TVMaze] SET  READ_WRITE
GO
ALTER DATABASE [TVMaze] SET RECOVERY FULL
GO
ALTER DATABASE [TVMaze] SET  MULTI_USER
GO
ALTER DATABASE [TVMaze] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [TVMaze] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'TVMaze', N'ON'
GO
USE [TVMaze]
GO
/****** Object:  Table [dbo].[tblPerson]    Script Date: 02/28/2022 06:52:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblPerson](
	[id] [int] NOT NULL,
	[url] [varchar](500) NOT NULL,
	[name] [varchar](300) NOT NULL,
	[birthday] [varchar](50) NULL,
	[deathday] [varchar](50) NULL,
	[gender] [varchar](50) NOT NULL,
	[updated] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblPerson] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblPerson] ([id], [url], [name], [birthday], [deathday], [gender], [updated]) VALUES (1, N'https://www.tvmaze.com/people/1/mike-vogel', N'Mike Vogel', N'1979-07-17', NULL, N'Male', N'1634211735')
INSERT [dbo].[tblPerson] ([id], [url], [name], [birthday], [deathday], [gender], [updated]) VALUES (2, N'https://www.tvmaze.com/people/2/rachelle-lefevre', N'Rachelle Lefevre', N'1979-02-01', NULL, N'Female', N'1525948477')
INSERT [dbo].[tblPerson] ([id], [url], [name], [birthday], [deathday], [gender], [updated]) VALUES (3, N'https://www.tvmaze.com/people/3/alexander-koch', N'Alexander Koch', N'1988-02-24', NULL, N'Male', N'1563305370')
INSERT [dbo].[tblPerson] ([id], [url], [name], [birthday], [deathday], [gender], [updated]) VALUES (4, N'https://www.tvmaze.com/people/4/eddie-cahill', N'Eddie Cahill', N'1978-01-15', NULL, N'Male', N'1540028501')
INSERT [dbo].[tblPerson] ([id], [url], [name], [birthday], [deathday], [gender], [updated]) VALUES (5, N'https://www.tvmaze.com/people/5/colin-ford', N'Colin Ford', N'1996-09-12', NULL, N'Male', N'1540533090')
INSERT [dbo].[tblPerson] ([id], [url], [name], [birthday], [deathday], [gender], [updated]) VALUES (6, N'https://www.tvmaze.com/people/6/nicholas-strong', N'Nicholas Strong', NULL, NULL, N'Male', N'1561568499')
INSERT [dbo].[tblPerson] ([id], [url], [name], [birthday], [deathday], [gender], [updated]) VALUES (7, N'https://www.tvmaze.com/people/7/mackenzie-lintz', N'Mackenzie Lintz', N'1996-11-22', NULL, N'Female', N'1439593087')
INSERT [dbo].[tblPerson] ([id], [url], [name], [birthday], [deathday], [gender], [updated]) VALUES (8, N'https://www.tvmaze.com/people/8/karla-crome', N'Karla Crome', N'1989-06-22', NULL, N'Female', N'1525954896')
INSERT [dbo].[tblPerson] ([id], [url], [name], [birthday], [deathday], [gender], [updated]) VALUES (9, N'https://www.tvmaze.com/people/9/dean-norris', N'Dean Norris', N'1963-04-08', NULL, N'Male', N'1634392343')
INSERT [dbo].[tblPerson] ([id], [url], [name], [birthday], [deathday], [gender], [updated]) VALUES (10, N'https://www.tvmaze.com/people/10/natalie-martinez', N'Natalie Martinez', N'1984-07-12', NULL, N'Female', N'1634639044')
INSERT [dbo].[tblPerson] ([id], [url], [name], [birthday], [deathday], [gender], [updated]) VALUES (11, N'https://www.tvmaze.com/people/11/britt-robertson', N'Britt Robertson', N'1990-04-18', NULL, N'Female', N'1534677744')
INSERT [dbo].[tblPerson] ([id], [url], [name], [birthday], [deathday], [gender], [updated]) VALUES (12, N'https://www.tvmaze.com/people/12/aisha-hinds', N'Aisha Hinds', N'1975-11-13', NULL, N'Female', N'1634514394')
INSERT [dbo].[tblPerson] ([id], [url], [name], [birthday], [deathday], [gender], [updated]) VALUES (13, N'https://www.tvmaze.com/people/13/jolene-purdy', N'Jolene Purdy', N'1983-12-09', NULL, N'Female', N'1530067898')
INSERT [dbo].[tblPerson] ([id], [url], [name], [birthday], [deathday], [gender], [updated]) VALUES (14, N'https://www.tvmaze.com/people/14/jeff-fahey', N'Jeff Fahey', N'1952-11-29', NULL, N'Male', N'1517624297')
INSERT [dbo].[tblPerson] ([id], [url], [name], [birthday], [deathday], [gender], [updated]) VALUES (88, N'https://www.tvmaze.com/people/88/james-caviezel', N'James Caviezel', N'1968-09-26', NULL, N'Male', N'1578390834')
INSERT [dbo].[tblPerson] ([id], [url], [name], [birthday], [deathday], [gender], [updated]) VALUES (89, N'https://www.tvmaze.com/people/89/taraji-p-henson', N'Taraji P. Henson', N'1970-09-11', NULL, N'Female', N'1621949176')
INSERT [dbo].[tblPerson] ([id], [url], [name], [birthday], [deathday], [gender], [updated]) VALUES (90, N'https://www.tvmaze.com/people/90/kevin-chapman', N'Kevin Chapman', N'1962-07-29', NULL, N'Male', N'1567428509')
INSERT [dbo].[tblPerson] ([id], [url], [name], [birthday], [deathday], [gender], [updated]) VALUES (91, N'https://www.tvmaze.com/people/91/amy-acker', N'Amy Acker', N'1976-12-05', NULL, N'Female', N'1625187080')
INSERT [dbo].[tblPerson] ([id], [url], [name], [birthday], [deathday], [gender], [updated]) VALUES (92, N'https://www.tvmaze.com/people/92/sarah-shahi', N'Sarah Shahi', N'1980-01-10', NULL, N'Female', N'1633138363')
INSERT [dbo].[tblPerson] ([id], [url], [name], [birthday], [deathday], [gender], [updated]) VALUES (93, N'https://www.tvmaze.com/people/93/michael-emerson', N'Michael Emerson', N'1954-09-07', NULL, N'Male', N'1633848718')
INSERT [dbo].[tblPerson] ([id], [url], [name], [birthday], [deathday], [gender], [updated]) VALUES (35903, N'https://www.tvmaze.com/people/35903/kylie-bunbury', N'Kylie Bunbury', N'1989-01-30', NULL, N'Female', N'1634276484')
/****** Object:  Table [dbo].[tblLink]    Script Date: 02/28/2022 06:52:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblLink](
	[id] [int] NOT NULL,
	[url] [varchar](2000) NOT NULL,
	[casttype] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (1, N'https://api.tvmaze.com/people/1', 1)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (1, N'https://api.tvmaze.com/characters/1', 2)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (2, N'https://api.tvmaze.com/people/2', 1)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (2, N'https://api.tvmaze.com/characters/2', 2)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (3, N'https://api.tvmaze.com/people/3', 1)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (3, N'https://api.tvmaze.com/characters/3', 2)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (5, N'https://api.tvmaze.com/people/5', 1)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (5, N'https://api.tvmaze.com/characters/5', 2)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (7, N'https://api.tvmaze.com/people/7', 1)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (7, N'https://api.tvmaze.com/characters/7', 2)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (9, N'https://api.tvmaze.com/people/9', 1)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (9, N'https://api.tvmaze.com/characters/9', 2)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (4, N'https://api.tvmaze.com/people/4', 1)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (4, N'https://api.tvmaze.com/characters/4', 2)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (6, N'https://api.tvmaze.com/people/6', 1)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (6, N'https://api.tvmaze.com/characters/6', 2)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (11, N'https://api.tvmaze.com/people/11', 1)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (11, N'https://api.tvmaze.com/characters/11', 2)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (12, N'https://api.tvmaze.com/people/12', 1)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (12, N'https://api.tvmaze.com/characters/12', 2)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (10, N'https://api.tvmaze.com/people/10', 1)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (10, N'https://api.tvmaze.com/characters/10', 2)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (8, N'https://api.tvmaze.com/people/8', 1)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (8, N'https://api.tvmaze.com/characters/8', 2)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (35903, N'https://api.tvmaze.com/people/35903', 1)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (140786, N'https://api.tvmaze.com/characters/140786', 2)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (13, N'https://api.tvmaze.com/people/13', 1)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (13, N'https://api.tvmaze.com/characters/13', 2)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (14, N'https://api.tvmaze.com/people/14', 1)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (14, N'https://api.tvmaze.com/characters/14', 2)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (88, N'https://api.tvmaze.com/people/88', 1)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (64, N'https://api.tvmaze.com/characters/64', 2)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (93, N'https://api.tvmaze.com/people/93', 1)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (69, N'https://api.tvmaze.com/characters/69', 2)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (90, N'https://api.tvmaze.com/people/90', 1)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (66, N'https://api.tvmaze.com/characters/66', 2)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (89, N'https://api.tvmaze.com/people/89', 1)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (65, N'https://api.tvmaze.com/characters/65', 2)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (91, N'https://api.tvmaze.com/people/91', 1)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (67, N'https://api.tvmaze.com/characters/67', 2)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (92, N'https://api.tvmaze.com/people/92', 1)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (27030, N'https://api.tvmaze.com/characters/27030', 2)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (552012, N'https://api.tvmaze.com/characters/552012', 2)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (140786, N'https://api.tvmaze.com/characters/140786', 2)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (64, N'https://api.tvmaze.com/characters/64', 2)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (69, N'https://api.tvmaze.com/characters/69', 2)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (66, N'https://api.tvmaze.com/characters/66', 2)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (65, N'https://api.tvmaze.com/characters/65', 2)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (67, N'https://api.tvmaze.com/characters/67', 2)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (27030, N'https://api.tvmaze.com/characters/27030', 2)
INSERT [dbo].[tblLink] ([id], [url], [casttype]) VALUES (552012, N'https://api.tvmaze.com/characters/552012', 2)
/****** Object:  Table [dbo].[tblImage]    Script Date: 02/28/2022 06:52:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblImage](
	[id] [int] NOT NULL,
	[medium] [varchar](2000) NULL,
	[original] [varchar](2000) NULL,
	[casttype] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (1, N'https://static.tvmaze.com/uploads/images/medium_portrait/0/1815.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/0/1815.jpg', 1)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (1, N'https://static.tvmaze.com/uploads/images/medium_portrait/0/3.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/0/3.jpg', 2)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (2, N'https://static.tvmaze.com/uploads/images/medium_portrait/82/207417.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/82/207417.jpg', 1)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (2, N'https://static.tvmaze.com/uploads/images/medium_portrait/0/6.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/0/6.jpg', 2)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (3, N'https://static.tvmaze.com/uploads/images/medium_portrait/205/513325.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/205/513325.jpg', 1)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (3, N'https://static.tvmaze.com/uploads/images/medium_portrait/0/10.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/0/10.jpg', 2)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (5, N'https://static.tvmaze.com/uploads/images/medium_portrait/142/356748.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/142/356748.jpg', 1)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (5, N'https://static.tvmaze.com/uploads/images/medium_portrait/0/7.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/0/7.jpg', 2)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (7, N'https://static.tvmaze.com/uploads/images/medium_portrait/3/7816.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/3/7816.jpg', 1)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (7, N'https://static.tvmaze.com/uploads/images/medium_portrait/0/793.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/0/793.jpg', 2)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (9, N'https://static.tvmaze.com/uploads/images/medium_portrait/163/408986.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/163/408986.jpg', 1)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (9, N'https://static.tvmaze.com/uploads/images/medium_portrait/0/2.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/0/2.jpg', 2)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (4, N'https://static.tvmaze.com/uploads/images/medium_portrait/0/1162.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/0/1162.jpg', 1)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (4, N'https://static.tvmaze.com/uploads/images/medium_portrait/17/44108.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/17/44108.jpg', 2)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (6, N'https://static.tvmaze.com/uploads/images/medium_portrait/0/2499.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/0/2499.jpg', 1)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (6, N'https://static.tvmaze.com/uploads/images/medium_portrait/0/5.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/0/5.jpg', 2)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (11, N'https://static.tvmaze.com/uploads/images/medium_portrait/158/396055.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/158/396055.jpg', 1)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (11, N'https://static.tvmaze.com/uploads/images/medium_portrait/0/4.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/0/4.jpg', 2)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (12, N'https://static.tvmaze.com/uploads/images/medium_portrait/1/2665.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/1/2665.jpg', 1)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (12, N'https://static.tvmaze.com/uploads/images/medium_portrait/0/8.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/0/8.jpg', 2)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (10, N'https://static.tvmaze.com/uploads/images/medium_portrait/282/706093.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/282/706093.jpg', 1)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (10, N'https://static.tvmaze.com/uploads/images/medium_portrait/0/792.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/0/792.jpg', 2)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (8, N'https://static.tvmaze.com/uploads/images/medium_portrait/3/7817.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/3/7817.jpg', 1)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (8, N'https://static.tvmaze.com/uploads/images/medium_portrait/0/794.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/0/794.jpg', 2)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (35903, N'https://static.tvmaze.com/uploads/images/medium_portrait/3/8789.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/3/8789.jpg', 1)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (140786, N'https://static.tvmaze.com/uploads/images/medium_portrait/17/44109.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/17/44109.jpg', 2)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (13, N'https://static.tvmaze.com/uploads/images/medium_portrait/2/5993.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/2/5993.jpg', 1)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (13, N'https://static.tvmaze.com/uploads/images/medium_portrait/0/9.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/0/9.jpg', 2)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (14, N'https://static.tvmaze.com/uploads/images/medium_portrait/0/1163.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/0/1163.jpg', 1)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (14, N'', N'', 2)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (88, N'https://static.tvmaze.com/uploads/images/medium_portrait/2/6581.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/2/6581.jpg', 1)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (64, N'https://static.tvmaze.com/uploads/images/medium_portrait/0/13.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/0/13.jpg', 2)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (93, N'https://static.tvmaze.com/uploads/images/medium_portrait/2/6590.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/2/6590.jpg', 1)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (69, N'https://static.tvmaze.com/uploads/images/medium_portrait/0/12.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/0/12.jpg', 2)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (90, N'https://static.tvmaze.com/uploads/images/medium_portrait/2/6588.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/2/6588.jpg', 1)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (66, N'https://static.tvmaze.com/uploads/images/medium_portrait/0/1165.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/0/1165.jpg', 2)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (89, N'https://static.tvmaze.com/uploads/images/medium_portrait/321/802998.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/321/802998.jpg', 1)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (65, N'https://static.tvmaze.com/uploads/images/medium_portrait/0/1164.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/0/1164.jpg', 2)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (91, N'https://static.tvmaze.com/uploads/images/medium_portrait/335/837994.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/335/837994.jpg', 1)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (67, N'https://static.tvmaze.com/uploads/images/medium_portrait/0/1166.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/0/1166.jpg', 2)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (92, N'https://static.tvmaze.com/uploads/images/medium_portrait/59/148423.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/59/148423.jpg', 1)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (27030, N'https://static.tvmaze.com/uploads/images/medium_portrait/0/14.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/0/14.jpg', 2)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (552012, N'', N'', 2)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (140786, N'https://static.tvmaze.com/uploads/images/medium_portrait/17/44109.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/17/44109.jpg', 2)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (64, N'https://static.tvmaze.com/uploads/images/medium_portrait/0/13.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/0/13.jpg', 2)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (69, N'https://static.tvmaze.com/uploads/images/medium_portrait/0/12.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/0/12.jpg', 2)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (66, N'https://static.tvmaze.com/uploads/images/medium_portrait/0/1165.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/0/1165.jpg', 2)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (65, N'https://static.tvmaze.com/uploads/images/medium_portrait/0/1164.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/0/1164.jpg', 2)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (67, N'https://static.tvmaze.com/uploads/images/medium_portrait/0/1166.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/0/1166.jpg', 2)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (27030, N'https://static.tvmaze.com/uploads/images/medium_portrait/0/14.jpg', N'https://static.tvmaze.com/uploads/images/original_untouched/0/14.jpg', 2)
INSERT [dbo].[tblImage] ([id], [medium], [original], [casttype]) VALUES (552012, N'', N'', 2)
/****** Object:  Table [dbo].[tblCountry]    Script Date: 02/28/2022 06:52:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCountry](
	[id] [int] NOT NULL,
	[name] [varchar](500) NOT NULL,
	[code] [varchar](50) NOT NULL,
	[timezone] [varchar](100) NOT NULL,
 CONSTRAINT [PK_tblCountry] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblCountry] ([id], [name], [code], [timezone]) VALUES (1, N'United States', N'US', N'America/New_York')
INSERT [dbo].[tblCountry] ([id], [name], [code], [timezone]) VALUES (2, N'Canada', N'CA', N'America/Halifax')
INSERT [dbo].[tblCountry] ([id], [name], [code], [timezone]) VALUES (3, N'United States', N'US', N'America/New_York')
INSERT [dbo].[tblCountry] ([id], [name], [code], [timezone]) VALUES (4, N'United States', N'US', N'America/New_York')
INSERT [dbo].[tblCountry] ([id], [name], [code], [timezone]) VALUES (5, N'United States', N'US', N'America/New_York')
INSERT [dbo].[tblCountry] ([id], [name], [code], [timezone]) VALUES (6, N'United States', N'US', N'America/New_York')
INSERT [dbo].[tblCountry] ([id], [name], [code], [timezone]) VALUES (7, N'United States', N'US', N'America/New_York')
INSERT [dbo].[tblCountry] ([id], [name], [code], [timezone]) VALUES (8, N'United Kingdom', N'GB', N'Europe/London')
INSERT [dbo].[tblCountry] ([id], [name], [code], [timezone]) VALUES (9, N'United States', N'US', N'America/New_York')
INSERT [dbo].[tblCountry] ([id], [name], [code], [timezone]) VALUES (10, N'United States', N'US', N'America/New_York')
INSERT [dbo].[tblCountry] ([id], [name], [code], [timezone]) VALUES (11, N'United States', N'US', N'America/New_York')
INSERT [dbo].[tblCountry] ([id], [name], [code], [timezone]) VALUES (12, N'United States', N'US', N'America/New_York')
INSERT [dbo].[tblCountry] ([id], [name], [code], [timezone]) VALUES (13, N'United States', N'US', N'America/New_York')
INSERT [dbo].[tblCountry] ([id], [name], [code], [timezone]) VALUES (14, N'United States', N'US', N'America/New_York')
INSERT [dbo].[tblCountry] ([id], [name], [code], [timezone]) VALUES (88, N'United States', N'US', N'America/New_York')
INSERT [dbo].[tblCountry] ([id], [name], [code], [timezone]) VALUES (89, N'United States', N'US', N'America/New_York')
INSERT [dbo].[tblCountry] ([id], [name], [code], [timezone]) VALUES (90, N'United States', N'US', N'America/New_York')
INSERT [dbo].[tblCountry] ([id], [name], [code], [timezone]) VALUES (91, N'United States', N'US', N'America/New_York')
INSERT [dbo].[tblCountry] ([id], [name], [code], [timezone]) VALUES (92, N'United States', N'US', N'America/New_York')
INSERT [dbo].[tblCountry] ([id], [name], [code], [timezone]) VALUES (93, N'United States', N'US', N'America/New_York')
INSERT [dbo].[tblCountry] ([id], [name], [code], [timezone]) VALUES (35903, N'Canada', N'CA', N'America/Halifax')
/****** Object:  Table [dbo].[tblCharacter]    Script Date: 02/28/2022 06:52:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblCharacter](
	[id] [int] NOT NULL,
	[url] [varchar](500) NOT NULL,
	[name] [varchar](300) NOT NULL,
	[self] [bit] NOT NULL,
	[voice] [bit] NOT NULL,
 CONSTRAINT [PK_tblCharacter] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblCharacter] ([id], [url], [name], [self], [voice]) VALUES (1, N'https://www.tvmaze.com/characters/1/under-the-dome-dale-barbie-barbara', N'Dale "Barbie" Barbara', 0, 0)
INSERT [dbo].[tblCharacter] ([id], [url], [name], [self], [voice]) VALUES (2, N'https://www.tvmaze.com/characters/2/under-the-dome-julia-shumway', N'Julia Shumway', 0, 0)
INSERT [dbo].[tblCharacter] ([id], [url], [name], [self], [voice]) VALUES (3, N'https://www.tvmaze.com/characters/3/under-the-dome-junior-rennie', N'Junior Rennie', 0, 0)
INSERT [dbo].[tblCharacter] ([id], [url], [name], [self], [voice]) VALUES (4, N'https://www.tvmaze.com/characters/4/under-the-dome-sam-verdreaux', N'Sam Verdreaux', 0, 0)
INSERT [dbo].[tblCharacter] ([id], [url], [name], [self], [voice]) VALUES (5, N'https://www.tvmaze.com/characters/5/under-the-dome-joe-mcalister', N'Joe McAlister', 0, 0)
INSERT [dbo].[tblCharacter] ([id], [url], [name], [self], [voice]) VALUES (6, N'https://www.tvmaze.com/characters/6/under-the-dome-phil-bushey', N'Phil Bushey', 0, 0)
INSERT [dbo].[tblCharacter] ([id], [url], [name], [self], [voice]) VALUES (7, N'https://www.tvmaze.com/characters/7/under-the-dome-norrie-calvert-hill', N'Norrie Calvert-Hill', 0, 0)
INSERT [dbo].[tblCharacter] ([id], [url], [name], [self], [voice]) VALUES (8, N'https://www.tvmaze.com/characters/8/under-the-dome-rebecca-pine', N'Rebecca Pine', 0, 0)
INSERT [dbo].[tblCharacter] ([id], [url], [name], [self], [voice]) VALUES (9, N'https://www.tvmaze.com/characters/9/under-the-dome-james-big-jim-rennie', N'James "Big Jim" Rennie', 0, 0)
INSERT [dbo].[tblCharacter] ([id], [url], [name], [self], [voice]) VALUES (10, N'https://www.tvmaze.com/characters/10/under-the-dome-deputy-linda-esquivel', N'Deputy Linda Esquivel', 0, 0)
INSERT [dbo].[tblCharacter] ([id], [url], [name], [self], [voice]) VALUES (11, N'https://www.tvmaze.com/characters/11/under-the-dome-angie-mcalister', N'Angie McAlister', 0, 0)
INSERT [dbo].[tblCharacter] ([id], [url], [name], [self], [voice]) VALUES (12, N'https://www.tvmaze.com/characters/12/under-the-dome-carolyn-hill', N'Carolyn Hill', 0, 0)
INSERT [dbo].[tblCharacter] ([id], [url], [name], [self], [voice]) VALUES (13, N'https://www.tvmaze.com/characters/13/under-the-dome-dodee-weaver', N'Dodee Weaver', 0, 0)
INSERT [dbo].[tblCharacter] ([id], [url], [name], [self], [voice]) VALUES (14, N'https://www.tvmaze.com/characters/14/under-the-dome-sheriff-duke-perkins', N'Sheriff Duke Perkins', 0, 0)
INSERT [dbo].[tblCharacter] ([id], [url], [name], [self], [voice]) VALUES (64, N'https://www.tvmaze.com/characters/64/person-of-interest-john-reese', N'John Reese', 0, 0)
INSERT [dbo].[tblCharacter] ([id], [url], [name], [self], [voice]) VALUES (65, N'https://www.tvmaze.com/characters/65/person-of-interest-jocelyn-joss-carter', N'Jocelyn "Joss" Carter', 0, 0)
INSERT [dbo].[tblCharacter] ([id], [url], [name], [self], [voice]) VALUES (66, N'https://www.tvmaze.com/characters/66/person-of-interest-lionel-fusco', N'Lionel Fusco', 0, 0)
INSERT [dbo].[tblCharacter] ([id], [url], [name], [self], [voice]) VALUES (67, N'https://www.tvmaze.com/characters/67/person-of-interest-samantha-root-groves', N'Samantha "Root" Groves', 0, 0)
INSERT [dbo].[tblCharacter] ([id], [url], [name], [self], [voice]) VALUES (69, N'https://www.tvmaze.com/characters/69/person-of-interest-harold-finch', N'Harold Finch', 0, 0)
INSERT [dbo].[tblCharacter] ([id], [url], [name], [self], [voice]) VALUES (27030, N'https://www.tvmaze.com/characters/27030/person-of-interest-sameen-shaw', N'Sameen Shaw', 0, 0)
INSERT [dbo].[tblCharacter] ([id], [url], [name], [self], [voice]) VALUES (140786, N'https://www.tvmaze.com/characters/140786/under-the-dome-eva-sinclair', N'Eva Sinclair', 0, 0)
INSERT [dbo].[tblCharacter] ([id], [url], [name], [self], [voice]) VALUES (552012, N'https://www.tvmaze.com/characters/552012/person-of-interest-the-machine', N'The Machine', 0, 0)
/****** Object:  StoredProcedure [dbo].[save_person]    Script Date: 02/28/2022 06:52:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[save_person]
	@id int,
	@url varchar (500),
	@name varchar(300),
	@birthday varchar(50) = null,
	@deathday varchar(50) = null,
	@gender varchar(50),
	@updated varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into tblPerson
		select @id, @url, @name, @birthday, @deathday, @gender, @updated
	
END
GO
/****** Object:  StoredProcedure [dbo].[save_link]    Script Date: 02/28/2022 06:52:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[save_link]
	@id int,
	@url varchar(2000),
	@casttype int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into tblLink select @id, @url, @casttype
END
GO
/****** Object:  StoredProcedure [dbo].[save_image]    Script Date: 02/28/2022 06:52:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[save_image]
	@id int,
	@medium varchar(2000),
	@original varchar (2000),
	@casttype int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into tblImage select @id, @medium, @original, @casttype
END
GO
/****** Object:  StoredProcedure [dbo].[save_country]    Script Date: 02/28/2022 06:52:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[save_country]
	@id int,
	@name varchar(300),
	@code varchar (50),
	@timezone varchar (100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into tblCountry select @id, @name, @code, @timezone
END
GO
/****** Object:  StoredProcedure [dbo].[save_character]    Script Date: 02/28/2022 06:52:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[save_character]
	@id int,
	@url varchar (500),
	@name varchar(300),
	@self bit,
	@voice bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into tblCharacter
		select @id, @url, @name, @self, @voice
	
END
GO
