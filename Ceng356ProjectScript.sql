USE [master]
GO
/****** Object:  Database [356proj]    Script Date: 23.06.2021 14:09:40 ******/
CREATE DATABASE [356proj]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'356proj', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\356proj.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'356proj_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\356proj_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [356proj] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [356proj].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [356proj] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [356proj] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [356proj] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [356proj] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [356proj] SET ARITHABORT OFF 
GO
ALTER DATABASE [356proj] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [356proj] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [356proj] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [356proj] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [356proj] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [356proj] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [356proj] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [356proj] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [356proj] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [356proj] SET  DISABLE_BROKER 
GO
ALTER DATABASE [356proj] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [356proj] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [356proj] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [356proj] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [356proj] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [356proj] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [356proj] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [356proj] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [356proj] SET  MULTI_USER 
GO
ALTER DATABASE [356proj] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [356proj] SET DB_CHAINING OFF 
GO
ALTER DATABASE [356proj] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [356proj] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [356proj] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [356proj] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [356proj] SET QUERY_STORE = OFF
GO
USE [356proj]
GO
/****** Object:  Table [dbo].[Guest]    Script Date: 23.06.2021 14:09:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guest](
	[guest_id] [varchar](100) NOT NULL,
	[first_name] [varchar](100) NULL,
	[last_name] [varchar](100) NULL,
	[adress] [varchar](1000) NULL,
	[email] [varchar](100) NULL,
	[phone] [varchar](100) NULL,
	[city] [varchar](100) NULL,
	[country] [varchar](100) NULL,
 CONSTRAINT [guest_id_pk] PRIMARY KEY CLUSTERED 
(
	[guest_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[payment]    Script Date: 23.06.2021 14:09:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[payment](
	[paymentId] [varchar](100) NOT NULL,
	[guest_id] [varchar](100) NOT NULL,
	[reservation_id] [varchar](100) NULL,
	[firstName] [varchar](100) NULL,
	[lastName] [varchar](100) NULL,
 CONSTRAINT [paymentId_pk] PRIMARY KEY CLUSTERED 
(
	[paymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservation]    Script Date: 23.06.2021 14:09:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservation](
	[reservation_id] [varchar](100) NOT NULL,
	[guest_id] [varchar](100) NOT NULL,
	[room_id] [varchar](100) NOT NULL,
	[reservation_date] [date] NULL,
	[check_in_date] [date] NULL,
	[check_out_date] [date] NULL,
	[adults] [int] NULL,
	[children] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[reservation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 23.06.2021 14:09:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[room_id] [varchar](100) NOT NULL,
	[room_type_name] [varchar](100) NULL,
	[otherTypeName] [varchar](100) NULL,
	[basePrice] [int] NULL,
	[room_status] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[room_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Guest] ([guest_id], [first_name], [last_name], [adress], [email], [phone], [city], [country]) VALUES (N'a1000', N'Ece', N'Ay', N'Ankara', N'ece@gmail.com', N'05237891223', N'Ankara', N'Türkiye')
INSERT [dbo].[Guest] ([guest_id], [first_name], [last_name], [adress], [email], [phone], [city], [country]) VALUES (N'b2000', N'Ozlem', N'Kuzgun', N'İstanbul', N'ozlem@gmail.com', N'05447895645', N'İstnabul', N'Türkiye')
INSERT [dbo].[Guest] ([guest_id], [first_name], [last_name], [adress], [email], [phone], [city], [country]) VALUES (N'c3000', N'Halil', N'Kılıç', N'İzmir', N'cenk@gmail.com', N'05354565654', N'İzmir', N'Türkiye')
INSERT [dbo].[Guest] ([guest_id], [first_name], [last_name], [adress], [email], [phone], [city], [country]) VALUES (N'd4000', N'Kubilay', N'Yeşilyurt', N'Lagos', N'kubilay@gmail.com', N'05352697898', N'Lagos', N'Nijerya')
INSERT [dbo].[Guest] ([guest_id], [first_name], [last_name], [adress], [email], [phone], [city], [country]) VALUES (N'e5000', N'Arda', N'Gunes', N'Mardin', N'arda@gmail.com', N'05667851532', N'Mardin', N'Türkiye')
INSERT [dbo].[Guest] ([guest_id], [first_name], [last_name], [adress], [email], [phone], [city], [country]) VALUES (N's6000', N'Deniz', N'Melek', N'Sofya', N'Deniz@gmail.com', N'05423687514', N'Sofya', N'Bulgaristan')
GO
INSERT [dbo].[payment] ([paymentId], [guest_id], [reservation_id], [firstName], [lastName]) VALUES (N's1000', N'a1000', N'20001', N'Ece', N'Ay')
INSERT [dbo].[payment] ([paymentId], [guest_id], [reservation_id], [firstName], [lastName]) VALUES (N's2000', N'b2000', N'20002', N'Ozlem', N'Kuzgun')
INSERT [dbo].[payment] ([paymentId], [guest_id], [reservation_id], [firstName], [lastName]) VALUES (N's3000', N'c3000', N'20003', N'Cenk', N'Kılıç')
INSERT [dbo].[payment] ([paymentId], [guest_id], [reservation_id], [firstName], [lastName]) VALUES (N's4000', N'd4000', N'20004', N'Kubilay', N'Yeşilyurt')
INSERT [dbo].[payment] ([paymentId], [guest_id], [reservation_id], [firstName], [lastName]) VALUES (N's5000', N'e5000', N'20005', N'Arda', N'Gunes')
GO
INSERT [dbo].[Reservation] ([reservation_id], [guest_id], [room_id], [reservation_date], [check_in_date], [check_out_date], [adults], [children]) VALUES (N'20001', N'a1000', N'10001', CAST(N'2021-06-10' AS Date), CAST(N'2021-06-15' AS Date), CAST(N'2021-06-16' AS Date), 2, 3)
INSERT [dbo].[Reservation] ([reservation_id], [guest_id], [room_id], [reservation_date], [check_in_date], [check_out_date], [adults], [children]) VALUES (N'20002', N'b2000', N'10002', CAST(N'2021-06-01' AS Date), CAST(N'2021-06-05' AS Date), CAST(N'2021-06-09' AS Date), 2, 3)
INSERT [dbo].[Reservation] ([reservation_id], [guest_id], [room_id], [reservation_date], [check_in_date], [check_out_date], [adults], [children]) VALUES (N'20003', N'c3000', N'10003', CAST(N'2021-06-03' AS Date), CAST(N'2021-06-11' AS Date), CAST(N'2021-06-17' AS Date), 2, 3)
INSERT [dbo].[Reservation] ([reservation_id], [guest_id], [room_id], [reservation_date], [check_in_date], [check_out_date], [adults], [children]) VALUES (N'20004', N'd4000', N'10004', CAST(N'2021-07-10' AS Date), CAST(N'2021-07-12' AS Date), CAST(N'2021-07-18' AS Date), 2, 3)
INSERT [dbo].[Reservation] ([reservation_id], [guest_id], [room_id], [reservation_date], [check_in_date], [check_out_date], [adults], [children]) VALUES (N'20005', N'e5000', N'10005', CAST(N'2021-07-13' AS Date), CAST(N'2021-07-20' AS Date), CAST(N'2021-07-26' AS Date), 2, 3)
GO
INSERT [dbo].[Room] ([room_id], [room_type_name], [otherTypeName], [basePrice], [room_status]) VALUES (N'10001', N'Tek', N'Sahile yakın', 500, N'Müsait')
INSERT [dbo].[Room] ([room_id], [room_type_name], [otherTypeName], [basePrice], [room_status]) VALUES (N'10002', N'Çift', N'Bağlantılı Odalar', 480, N'Müsait')
INSERT [dbo].[Room] ([room_id], [room_type_name], [otherTypeName], [basePrice], [room_status]) VALUES (N'10003', N'Kral', N'Bitişik Odalar', 300, N'Müsait')
INSERT [dbo].[Room] ([room_id], [room_type_name], [otherTypeName], [basePrice], [room_status]) VALUES (N'10004', N'Kraliçe', N'Bitişik Odalar', 600, N'Müsait')
INSERT [dbo].[Room] ([room_id], [room_type_name], [otherTypeName], [basePrice], [room_status]) VALUES (N'10005', N'İkiz', N'Deniz Manzaralı', 1000, N'Müsait')
GO
ALTER TABLE [dbo].[payment]  WITH CHECK ADD FOREIGN KEY([guest_id])
REFERENCES [dbo].[Guest] ([guest_id])
GO
ALTER TABLE [dbo].[payment]  WITH CHECK ADD FOREIGN KEY([reservation_id])
REFERENCES [dbo].[Reservation] ([reservation_id])
GO
USE [master]
GO
ALTER DATABASE [356proj] SET  READ_WRITE 
GO
