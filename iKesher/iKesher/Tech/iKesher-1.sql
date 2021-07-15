USE [master]
GO
/****** Object:  Database [iKesher]    Script Date: 14/07/2021 9:31:19 ******/
CREATE DATABASE [iKesher]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'iKesher', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQL2019\MSSQL\DATA\iKesher.mdf' , SIZE = 729088KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'iKesher_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQL2019\MSSQL\DATA\iKesher_log.ldf' , SIZE = 401408KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [iKesher] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [iKesher].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [iKesher] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [iKesher] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [iKesher] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [iKesher] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [iKesher] SET ARITHABORT OFF 
GO
ALTER DATABASE [iKesher] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [iKesher] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [iKesher] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [iKesher] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [iKesher] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [iKesher] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [iKesher] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [iKesher] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [iKesher] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [iKesher] SET  DISABLE_BROKER 
GO
ALTER DATABASE [iKesher] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [iKesher] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [iKesher] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [iKesher] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [iKesher] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [iKesher] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [iKesher] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [iKesher] SET RECOVERY FULL 
GO
ALTER DATABASE [iKesher] SET  MULTI_USER 
GO
ALTER DATABASE [iKesher] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [iKesher] SET DB_CHAINING OFF 
GO
ALTER DATABASE [iKesher] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [iKesher] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [iKesher] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'iKesher', N'ON'
GO
ALTER DATABASE [iKesher] SET QUERY_STORE = OFF
GO
USE [iKesher]
GO
/****** Object:  Table [dbo].[Addresses]    Script Date: 14/07/2021 9:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Addresses](
	[AdrsId] [int] IDENTITY(1,1) NOT NULL,
	[ObjType] [nvarchar](100) NOT NULL,
	[ObjId] [int] NOT NULL,
	[GymId] [int] NOT NULL,
	[Street] [nvarchar](100) NULL,
	[Street1] [nvarchar](100) NULL,
	[City] [nvarchar](100) NULL,
	[ZipCode] [nvarchar](100) NULL,
	[Address1] [nvarchar](100) NULL,
	[Address2] [nvarchar](100) NULL,
	[Address3] [nvarchar](100) NULL,
	[Address4] [nvarchar](100) NULL,
	[Status] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [bigint] NOT NULL,
	[ChangedBy] [int] NOT NULL,
	[ChangedAt] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AdrsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssignedOAuths]    Script Date: 14/07/2021 9:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssignedOAuths](
	[UOAId] [int] IDENTITY(1,1) NOT NULL,
	[ObjType] [nvarchar](100) NOT NULL,
	[ObjId] [int] NOT NULL,
	[OAuthRD] [varbinary](100) NOT NULL,
	[OAuthWR] [varbinary](100) NOT NULL,
	[DateStart] [int] NOT NULL,
	[DateEnd] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [bigint] NOT NULL,
	[ChangedBy] [int] NOT NULL,
	[ChangedAt] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UOAId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AtendcTypes]    Script Date: 14/07/2021 9:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AtendcTypes](
	[AtndcId] [int] IDENTITY(1,1) NOT NULL,
	[GroupId] [int] NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[PlantId] [int] NOT NULL,
	[SLocId] [int] NOT NULL,
	[HostelId] [int] NOT NULL,
	[AtndcType] [nvarchar](100) NOT NULL,
	[AtndcDescr] [nvarchar](300) NULL,
	[NumOfDays] [int] NOT NULL,
	[NumOfWeeks] [int] NOT NULL,
	[DateStart] [int] NOT NULL,
	[DateEnd] [int] NOT NULL,
	[Status] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [bigint] NOT NULL,
	[ChangedBy] [int] NOT NULL,
	[ChangedAt] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AtndcId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Communications]    Script Date: 14/07/2021 9:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Communications](
	[CommuId] [int] IDENTITY(1,1) NOT NULL,
	[ObjType] [nvarchar](100) NOT NULL,
	[ObjId] [int] NOT NULL,
	[GymId] [int] NOT NULL,
	[CommuName] [nvarchar](100) NULL,
	[CommuType] [nvarchar](100) NULL,
	[CommuValue] [nvarchar](200) NULL,
	[Status] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [bigint] NOT NULL,
	[ChangedBy] [int] NOT NULL,
	[ChangedAt] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CommuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 14/07/2021 9:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[DeprId] [int] IDENTITY(1,1) NOT NULL,
	[GroupId] [int] NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[PlantId] [int] NOT NULL,
	[SLocId] [int] NOT NULL,
	[HostelId] [int] NOT NULL,
	[DeprName] [nvarchar](100) NOT NULL,
	[DeprDescr] [nvarchar](300) NULL,
	[Status] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [bigint] NOT NULL,
	[ChangedBy] [int] NOT NULL,
	[ChangedAt] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DeprId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Descriptions]    Script Date: 14/07/2021 9:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Descriptions](
	[DiscrId] [int] IDENTITY(1,1) NOT NULL,
	[ObjType] [nvarchar](100) NOT NULL,
	[ObjId] [int] NOT NULL,
	[GymId] [int] NOT NULL,
	[DiscrTyp] [nvarchar](100) NULL,
	[DiscrText] [nvarchar](800) NULL,
	[Status] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [bigint] NOT NULL,
	[ChangedBy] [int] NOT NULL,
	[ChangedAt] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DiscrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Docs]    Script Date: 14/07/2021 9:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Docs](
	[DocId] [int] IDENTITY(1,1) NOT NULL,
	[DocName] [nvarchar](100) NULL,
	[ObjType] [nvarchar](100) NOT NULL,
	[ObjId] [int] NOT NULL,
	[DocCtg] [nvarchar](100) NOT NULL,
	[DocText] [nvarchar](300) NULL,
	[DocPath] [nvarchar](300) NOT NULL,
	[Status] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [bigint] NOT NULL,
	[ChangedBy] [int] NOT NULL,
	[ChangedAt] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hostels]    Script Date: 14/07/2021 9:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hostels](
	[HosId] [int] IDENTITY(1,1) NOT NULL,
	[GroupId] [int] NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[PlantId] [int] NOT NULL,
	[SLocId] [int] NOT NULL,
	[HostelNum] [int] NOT NULL,
	[HostelName] [nvarchar](200) NULL,
	[HostelColor] [nvarchar](200) NULL,
	[DateStart] [int] NOT NULL,
	[DateEnd] [int] NOT NULL,
	[OAuthRD] [varbinary](100) NOT NULL,
	[OAuthWR] [varbinary](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Status] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [bigint] NOT NULL,
	[ChangedBy] [int] NOT NULL,
	[ChangedAt] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[HosId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HostelsManagers]    Script Date: 14/07/2021 9:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HostelsManagers](
	[HostMngId] [int] IDENTITY(1,1) NOT NULL,
	[GroupId] [int] NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[PlantId] [int] NOT NULL,
	[SLocId] [int] NOT NULL,
	[HostelNum] [int] NOT NULL,
	[WrkrNum] [int] NOT NULL,
	[HostMngrType] [nvarchar](100) NOT NULL,
	[HostMngrId] [int] NOT NULL,
	[DateStart] [int] NOT NULL,
	[DateEnd] [int] NOT NULL,
	[OAuthRD] [varbinary](100) NOT NULL,
	[OAuthWR] [varbinary](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Status] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [bigint] NOT NULL,
	[ChangedBy] [int] NOT NULL,
	[ChangedAt] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[HostMngId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HostelsWrkrPerHour]    Script Date: 14/07/2021 9:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HostelsWrkrPerHour](
	[HWPHId] [int] IDENTITY(1,1) NOT NULL,
	[GroupId] [int] NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[PlantId] [int] NOT NULL,
	[SLocId] [int] NOT NULL,
	[HostelNum] [int] NOT NULL,
	[WrkrNum] [int] NOT NULL,
	[PerHour1] [decimal](12, 2) NOT NULL,
	[PerHour2] [decimal](12, 2) NOT NULL,
	[PerHour3] [decimal](12, 2) NOT NULL,
	[PerTrip1] [decimal](12, 2) NOT NULL,
	[PerTrip2] [decimal](12, 2) NOT NULL,
	[PerTrip3] [decimal](12, 2) NOT NULL,
	[Pay4SpltTrip1] [bit] NOT NULL,
	[Pay4SpltTrip2] [bit] NOT NULL,
	[DateStart] [int] NOT NULL,
	[DateEnd] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Status] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [bigint] NOT NULL,
	[ChangedBy] [int] NOT NULL,
	[ChangedAt] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[HWPHId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Logs]    Script Date: 14/07/2021 9:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logs](
	[LgId] [int] IDENTITY(1,1) NOT NULL,
	[ObjType] [nvarchar](100) NOT NULL,
	[ObjId] [int] NOT NULL,
	[GymId] [int] NOT NULL,
	[LgDate1] [int] NOT NULL,
	[LgType] [nvarchar](100) NULL,
	[LgText] [nvarchar](600) NULL,
	[LgDate2] [int] NOT NULL,
	[LgColor] [nvarchar](200) NULL,
	[Status] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [bigint] NOT NULL,
	[ChangedBy] [int] NOT NULL,
	[ChangedAt] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[LgId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OAuthObjects]    Script Date: 14/07/2021 9:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OAuthObjects](
	[OAOId] [int] IDENTITY(1,1) NOT NULL,
	[OAuthObj] [varbinary](100) NOT NULL,
	[OAODescrp] [nvarchar](300) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [bigint] NOT NULL,
	[ChangedBy] [int] NOT NULL,
	[ChangedAt] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OAOId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reminders]    Script Date: 14/07/2021 9:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reminders](
	[RemId] [int] IDENTITY(1,1) NOT NULL,
	[ObjType] [nvarchar](100) NOT NULL,
	[ObjId] [int] NOT NULL,
	[GymId] [int] NOT NULL,
	[PopUpAt_YYYYMMDDHHMM] [bigint] NOT NULL,
	[RemText] [nvarchar](300) NULL,
	[IsRecorsive] [bit] NOT NULL,
	[RecorsivType] [nvarchar](100) NULL,
	[RecorsivTime] [nvarchar](100) NULL,
	[RecorsivTime1] [nvarchar](100) NULL,
	[Frequence] [nvarchar](100) NULL,
	[RemColor] [nvarchar](200) NULL,
	[Status] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [bigint] NOT NULL,
	[ChangedBy] [int] NOT NULL,
	[ChangedAt] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 14/07/2021 9:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UId] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](200) NULL,
	[IsSysAdmin] [bit] NOT NULL,
	[Status] [nvarchar](100) NOT NULL,
	[UName] [nvarchar](50) NOT NULL,
	[UPass] [varbinary](100) NOT NULL,
	[UCode] [varbinary](100) NOT NULL,
	[UResetPass] [varbinary](100) NOT NULL,
	[U_GUID] [varbinary](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [bigint] NOT NULL,
	[ChangedBy] [int] NOT NULL,
	[ChangedAt] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WHours]    Script Date: 14/07/2021 9:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WHours](
	[WHId] [int] IDENTITY(1,1) NOT NULL,
	[HosId] [int] NOT NULL,
	[GroupId] [int] NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[PlantId] [int] NOT NULL,
	[SLocId] [int] NOT NULL,
	[HostelNum] [int] NOT NULL,
	[WrkrNum] [int] NOT NULL,
	[ShiftDOW] [nvarchar](100) NOT NULL,
	[IsHoliday] [bit] NOT NULL,
	[IsEveHoliday] [bit] NOT NULL,
	[IsHoliday1] [bit] NOT NULL,
	[ShiftDate] [int] NOT NULL,
	[ShiftDateIn] [bigint] NOT NULL,
	[ShiftDateOut] [bigint] NOT NULL,
	[WHIn] [nvarchar](100) NULL,
	[WHOut] [nvarchar](100) NULL,
	[WHTotalHours] [decimal](12, 2) NOT NULL,
	[ShiftType] [nvarchar](100) NOT NULL,
	[Reg100] [decimal](12, 2) NOT NULL,
	[Reg125] [decimal](12, 2) NOT NULL,
	[Reg150] [decimal](12, 2) NOT NULL,
	[Hol150] [decimal](12, 2) NOT NULL,
	[Hol175] [decimal](12, 2) NOT NULL,
	[Hol200] [decimal](12, 2) NOT NULL,
	[Shb100] [decimal](12, 2) NOT NULL,
	[Shb050] [decimal](12, 2) NOT NULL,
	[Shb175] [decimal](12, 2) NOT NULL,
	[Shb200] [decimal](12, 2) NOT NULL,
	[FReg100] [decimal](12, 2) NOT NULL,
	[FReg125] [decimal](12, 2) NOT NULL,
	[FReg150] [decimal](12, 2) NOT NULL,
	[FHol150] [decimal](12, 2) NOT NULL,
	[FHol175] [decimal](12, 2) NOT NULL,
	[FHol200] [decimal](12, 2) NOT NULL,
	[FShb100] [decimal](12, 2) NOT NULL,
	[FShb050] [decimal](12, 2) NOT NULL,
	[FShb175] [decimal](12, 2) NOT NULL,
	[FShb200] [decimal](12, 2) NOT NULL,
	[Fee1] [decimal](12, 2) NOT NULL,
	[Fee2] [decimal](12, 2) NOT NULL,
	[Fee3] [decimal](12, 2) NOT NULL,
	[PerHour1] [decimal](12, 2) NOT NULL,
	[PerHour2] [decimal](12, 2) NOT NULL,
	[PerHour3] [decimal](12, 2) NOT NULL,
	[PerTrip1] [decimal](12, 2) NOT NULL,
	[PerTrip2] [decimal](12, 2) NOT NULL,
	[PerTrip3] [decimal](12, 2) NOT NULL,
	[Pay4SpltTrip1] [bit] NOT NULL,
	[Pay4SpltTrip2] [bit] NOT NULL,
	[GlobalFee] [decimal](12, 2) NOT NULL,
	[GlobalTrip] [decimal](12, 2) NOT NULL,
	[MonthlyBonus] [decimal](12, 2) NOT NULL,
	[FixedBonus] [decimal](12, 2) NOT NULL,
	[FixCredit01] [decimal](12, 2) NOT NULL,
	[FixCredit02] [decimal](12, 2) NOT NULL,
	[FixCredit03] [decimal](12, 2) NOT NULL,
	[FixCredit04] [decimal](12, 2) NOT NULL,
	[FixCredit05] [decimal](12, 2) NOT NULL,
	[FixCredit06] [decimal](12, 2) NOT NULL,
	[FixCredit07] [decimal](12, 2) NOT NULL,
	[FixCredit08] [decimal](12, 2) NOT NULL,
	[FixCredit09] [decimal](12, 2) NOT NULL,
	[FixCredit10] [decimal](12, 2) NOT NULL,
	[FixCredit11] [decimal](12, 2) NOT NULL,
	[FixCredit12] [decimal](12, 2) NOT NULL,
	[FixCredit13] [decimal](12, 2) NOT NULL,
	[FixCredit14] [decimal](12, 2) NOT NULL,
	[Total1] [decimal](12, 2) NOT NULL,
	[Total2] [decimal](12, 2) NOT NULL,
	[Total3] [decimal](12, 2) NOT NULL,
	[Total4] [decimal](12, 2) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Status] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [bigint] NOT NULL,
	[ChangedBy] [int] NOT NULL,
	[ChangedAt] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[WHId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkerRoles]    Script Date: 14/07/2021 9:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkerRoles](
	[WrkrId] [int] IDENTITY(1,1) NOT NULL,
	[WrkrNum] [int] NOT NULL,
	[DeprId] [int] NOT NULL,
	[RolId] [int] NOT NULL,
	[DateStart] [int] NOT NULL,
	[DateEnd] [int] NOT NULL,
	[Status] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [bigint] NOT NULL,
	[ChangedBy] [int] NOT NULL,
	[ChangedAt] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[WrkrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Workers]    Script Date: 14/07/2021 9:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Workers](
	[WrkrId] [int] IDENTITY(1,1) NOT NULL,
	[WrkrNum] [int] NOT NULL,
	[WrkrIDN] [nvarchar](100) NOT NULL,
	[FullName] [nvarchar](200) NOT NULL,
	[WrkrType] [nvarchar](100) NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[MrgStatus] [nvarchar](50) NOT NULL,
	[ExtrNumb1] [nvarchar](200) NOT NULL,
	[ExtrNumb2] [nvarchar](200) NOT NULL,
	[ExtrNumb3] [nvarchar](200) NOT NULL,
	[ExtrNumb4] [nvarchar](200) NOT NULL,
	[IsSysAdmin] [bit] NOT NULL,
	[IsManager] [bit] NOT NULL,
	[RolId] [int] NOT NULL,
	[DeprId] [int] NOT NULL,
	[ManagerId] [int] NOT NULL,
	[DateStartWork] [int] NOT NULL,
	[DateEndWork] [int] NOT NULL,
	[NNChildsLT3] [int] NOT NULL,
	[NNChildsLT18] [int] NOT NULL,
	[NNChilds] [int] NOT NULL,
	[PerHour1] [decimal](12, 2) NOT NULL,
	[PerHour2] [decimal](12, 2) NOT NULL,
	[PerHour3] [decimal](12, 2) NOT NULL,
	[PerTrip1] [decimal](12, 2) NOT NULL,
	[PerTrip2] [decimal](12, 2) NOT NULL,
	[PerTrip3] [decimal](12, 2) NOT NULL,
	[Pay4SpltTrip1] [bit] NOT NULL,
	[Pay4SpltTrip2] [bit] NOT NULL,
	[GlobalFee] [decimal](12, 2) NOT NULL,
	[PosiScope3M] [decimal](12, 2) NOT NULL,
	[PosiScope12M] [decimal](12, 2) NOT NULL,
	[GlobalTrip] [decimal](12, 2) NOT NULL,
	[MonthlyBonus] [decimal](12, 2) NOT NULL,
	[FixedBonus] [decimal](12, 2) NOT NULL,
	[FixCredit01] [decimal](12, 2) NOT NULL,
	[FixCredit02] [decimal](12, 2) NOT NULL,
	[FixCredit03] [decimal](12, 2) NOT NULL,
	[FixCredit04] [decimal](12, 2) NOT NULL,
	[FixCredit05] [decimal](12, 2) NOT NULL,
	[FixCredit06] [decimal](12, 2) NOT NULL,
	[FixCredit07] [decimal](12, 2) NOT NULL,
	[FixCredit08] [decimal](12, 2) NOT NULL,
	[FixCredit09] [decimal](12, 2) NOT NULL,
	[FixCredit10] [decimal](12, 2) NOT NULL,
	[FixCredit11] [decimal](12, 2) NOT NULL,
	[FixCredit12] [decimal](12, 2) NOT NULL,
	[FixCredit13] [decimal](12, 2) NOT NULL,
	[FixCredit14] [decimal](12, 2) NOT NULL,
	[Total1] [decimal](12, 2) NOT NULL,
	[Total2] [decimal](12, 2) NOT NULL,
	[Total3] [decimal](12, 2) NOT NULL,
	[Total4] [decimal](12, 2) NOT NULL,
	[CWorthy] [nvarchar](100) NOT NULL,
	[CRate] [nvarchar](100) NOT NULL,
	[Status] [nvarchar](100) NOT NULL,
	[UName] [nvarchar](50) NOT NULL,
	[UPass] [varbinary](100) NOT NULL,
	[UCode] [varbinary](100) NOT NULL,
	[UResetPass] [varbinary](100) NOT NULL,
	[U_GUID] [varbinary](100) NOT NULL,
	[OAuthLvl] [binary](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [bigint] NOT NULL,
	[ChangedBy] [int] NOT NULL,
	[ChangedAt] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[WrkrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkersAggrgsTotals]    Script Date: 14/07/2021 9:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkersAggrgsTotals](
	[WATId] [int] IDENTITY(1,1) NOT NULL,
	[WrkrNum] [int] NOT NULL,
	[Total1] [decimal](12, 2) NOT NULL,
	[Total2] [decimal](12, 2) NOT NULL,
	[Total3] [decimal](12, 2) NOT NULL,
	[Total4] [decimal](12, 2) NOT NULL,
	[Total5] [decimal](12, 2) NOT NULL,
	[Total6] [decimal](12, 2) NOT NULL,
	[Total7] [decimal](12, 2) NOT NULL,
	[Total8] [decimal](12, 2) NOT NULL,
	[Status] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [bigint] NOT NULL,
	[ChangedBy] [int] NOT NULL,
	[ChangedAt] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[WATId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkRoles]    Script Date: 14/07/2021 9:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkRoles](
	[RolId] [int] IDENTITY(1,1) NOT NULL,
	[DeprId] [int] NOT NULL,
	[GroupId] [int] NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[PlantId] [int] NOT NULL,
	[SLocId] [int] NOT NULL,
	[HostelId] [int] NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
	[RoleDescr] [nvarchar](300) NULL,
	[Status] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedAt] [bigint] NOT NULL,
	[ChangedBy] [int] NOT NULL,
	[ChangedAt] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [i1]    Script Date: 14/07/2021 9:31:19 ******/
CREATE NONCLUSTERED INDEX [i1] ON [dbo].[Addresses]
(
	[ObjType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [i2]    Script Date: 14/07/2021 9:31:19 ******/
CREATE NONCLUSTERED INDEX [i2] ON [dbo].[Addresses]
(
	[ObjId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [i3]    Script Date: 14/07/2021 9:31:19 ******/
CREATE NONCLUSTERED INDEX [i3] ON [dbo].[Addresses]
(
	[ObjType] ASC,
	[ObjId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [i4]    Script Date: 14/07/2021 9:31:19 ******/
CREATE NONCLUSTERED INDEX [i4] ON [dbo].[Addresses]
(
	[GymId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [i1]    Script Date: 14/07/2021 9:31:19 ******/
CREATE NONCLUSTERED INDEX [i1] ON [dbo].[Communications]
(
	[ObjType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [i2]    Script Date: 14/07/2021 9:31:19 ******/
CREATE NONCLUSTERED INDEX [i2] ON [dbo].[Communications]
(
	[ObjId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [i3]    Script Date: 14/07/2021 9:31:19 ******/
CREATE NONCLUSTERED INDEX [i3] ON [dbo].[Communications]
(
	[ObjType] ASC,
	[ObjId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [i4]    Script Date: 14/07/2021 9:31:19 ******/
CREATE NONCLUSTERED INDEX [i4] ON [dbo].[Communications]
(
	[GymId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [i1]    Script Date: 14/07/2021 9:31:19 ******/
CREATE NONCLUSTERED INDEX [i1] ON [dbo].[Descriptions]
(
	[ObjType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [i2]    Script Date: 14/07/2021 9:31:19 ******/
CREATE NONCLUSTERED INDEX [i2] ON [dbo].[Descriptions]
(
	[ObjId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [i3]    Script Date: 14/07/2021 9:31:19 ******/
CREATE NONCLUSTERED INDEX [i3] ON [dbo].[Descriptions]
(
	[ObjType] ASC,
	[ObjId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [i4]    Script Date: 14/07/2021 9:31:19 ******/
CREATE NONCLUSTERED INDEX [i4] ON [dbo].[Descriptions]
(
	[GymId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [i1]    Script Date: 14/07/2021 9:31:19 ******/
CREATE NONCLUSTERED INDEX [i1] ON [dbo].[Hostels]
(
	[HostelNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [i3]    Script Date: 14/07/2021 9:31:19 ******/
CREATE NONCLUSTERED INDEX [i3] ON [dbo].[Hostels]
(
	[GroupId] ASC,
	[OrganizationId] ASC,
	[CompanyId] ASC,
	[PlantId] ASC,
	[SLocId] ASC,
	[HostelNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [i1]    Script Date: 14/07/2021 9:31:19 ******/
CREATE NONCLUSTERED INDEX [i1] ON [dbo].[HostelsManagers]
(
	[HostelNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [i1]    Script Date: 14/07/2021 9:31:19 ******/
CREATE NONCLUSTERED INDEX [i1] ON [dbo].[HostelsWrkrPerHour]
(
	[HostelNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [i2]    Script Date: 14/07/2021 9:31:19 ******/
CREATE NONCLUSTERED INDEX [i2] ON [dbo].[HostelsWrkrPerHour]
(
	[GroupId] ASC,
	[OrganizationId] ASC,
	[CompanyId] ASC,
	[PlantId] ASC,
	[SLocId] ASC,
	[HostelNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [i1]    Script Date: 14/07/2021 9:31:19 ******/
CREATE NONCLUSTERED INDEX [i1] ON [dbo].[Logs]
(
	[ObjType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [i2]    Script Date: 14/07/2021 9:31:19 ******/
CREATE NONCLUSTERED INDEX [i2] ON [dbo].[Logs]
(
	[ObjId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [i3]    Script Date: 14/07/2021 9:31:19 ******/
CREATE NONCLUSTERED INDEX [i3] ON [dbo].[Logs]
(
	[ObjType] ASC,
	[ObjId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [i4]    Script Date: 14/07/2021 9:31:19 ******/
CREATE NONCLUSTERED INDEX [i4] ON [dbo].[Logs]
(
	[GymId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [i1]    Script Date: 14/07/2021 9:31:19 ******/
CREATE NONCLUSTERED INDEX [i1] ON [dbo].[Reminders]
(
	[ObjType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [i2]    Script Date: 14/07/2021 9:31:19 ******/
CREATE NONCLUSTERED INDEX [i2] ON [dbo].[Reminders]
(
	[ObjId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [i3]    Script Date: 14/07/2021 9:31:19 ******/
CREATE NONCLUSTERED INDEX [i3] ON [dbo].[Reminders]
(
	[ObjType] ASC,
	[ObjId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [i4]    Script Date: 14/07/2021 9:31:19 ******/
CREATE NONCLUSTERED INDEX [i4] ON [dbo].[Reminders]
(
	[GymId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [i1]    Script Date: 14/07/2021 9:31:19 ******/
CREATE NONCLUSTERED INDEX [i1] ON [dbo].[WHours]
(
	[HostelNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [i2]    Script Date: 14/07/2021 9:31:19 ******/
CREATE NONCLUSTERED INDEX [i2] ON [dbo].[WHours]
(
	[WrkrNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [i3]    Script Date: 14/07/2021 9:31:19 ******/
CREATE NONCLUSTERED INDEX [i3] ON [dbo].[WHours]
(
	[HostelNum] ASC,
	[WrkrNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [i4]    Script Date: 14/07/2021 9:31:19 ******/
CREATE NONCLUSTERED INDEX [i4] ON [dbo].[WHours]
(
	[ShiftDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [i1]    Script Date: 14/07/2021 9:31:19 ******/
CREATE NONCLUSTERED INDEX [i1] ON [dbo].[Workers]
(
	[WrkrNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Addresses] ADD  DEFAULT ((0)) FOR [ObjId]
GO
ALTER TABLE [dbo].[Addresses] ADD  DEFAULT ((0)) FOR [GymId]
GO
ALTER TABLE [dbo].[Addresses] ADD  DEFAULT ((0)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Addresses] ADD  DEFAULT ((0)) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Addresses] ADD  DEFAULT ((0)) FOR [ChangedBy]
GO
ALTER TABLE [dbo].[Addresses] ADD  DEFAULT ((0)) FOR [ChangedAt]
GO
ALTER TABLE [dbo].[AssignedOAuths] ADD  DEFAULT ((0)) FOR [ObjId]
GO
ALTER TABLE [dbo].[AssignedOAuths] ADD  DEFAULT ((0)) FOR [DateStart]
GO
ALTER TABLE [dbo].[AssignedOAuths] ADD  DEFAULT ((0)) FOR [DateEnd]
GO
ALTER TABLE [dbo].[AssignedOAuths] ADD  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[AssignedOAuths] ADD  DEFAULT ((0)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[AssignedOAuths] ADD  DEFAULT ((0)) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[AssignedOAuths] ADD  DEFAULT ((0)) FOR [ChangedBy]
GO
ALTER TABLE [dbo].[AssignedOAuths] ADD  DEFAULT ((0)) FOR [ChangedAt]
GO
ALTER TABLE [dbo].[AtendcTypes] ADD  DEFAULT ((1000)) FOR [GroupId]
GO
ALTER TABLE [dbo].[AtendcTypes] ADD  DEFAULT ((1000)) FOR [OrganizationId]
GO
ALTER TABLE [dbo].[AtendcTypes] ADD  DEFAULT ((1000)) FOR [CompanyId]
GO
ALTER TABLE [dbo].[AtendcTypes] ADD  DEFAULT ((1000)) FOR [PlantId]
GO
ALTER TABLE [dbo].[AtendcTypes] ADD  DEFAULT ((1000)) FOR [SLocId]
GO
ALTER TABLE [dbo].[AtendcTypes] ADD  DEFAULT ((0)) FOR [HostelId]
GO
ALTER TABLE [dbo].[AtendcTypes] ADD  DEFAULT ((0)) FOR [NumOfDays]
GO
ALTER TABLE [dbo].[AtendcTypes] ADD  DEFAULT ((0)) FOR [NumOfWeeks]
GO
ALTER TABLE [dbo].[AtendcTypes] ADD  DEFAULT ((0)) FOR [DateStart]
GO
ALTER TABLE [dbo].[AtendcTypes] ADD  DEFAULT ((0)) FOR [DateEnd]
GO
ALTER TABLE [dbo].[AtendcTypes] ADD  DEFAULT ((0)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[AtendcTypes] ADD  DEFAULT ((0)) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[AtendcTypes] ADD  DEFAULT ((0)) FOR [ChangedBy]
GO
ALTER TABLE [dbo].[AtendcTypes] ADD  DEFAULT ((0)) FOR [ChangedAt]
GO
ALTER TABLE [dbo].[Communications] ADD  DEFAULT ((0)) FOR [ObjId]
GO
ALTER TABLE [dbo].[Communications] ADD  DEFAULT ((0)) FOR [GymId]
GO
ALTER TABLE [dbo].[Communications] ADD  DEFAULT ((0)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Communications] ADD  DEFAULT ((0)) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Communications] ADD  DEFAULT ((0)) FOR [ChangedBy]
GO
ALTER TABLE [dbo].[Communications] ADD  DEFAULT ((0)) FOR [ChangedAt]
GO
ALTER TABLE [dbo].[Departments] ADD  DEFAULT ((1000)) FOR [GroupId]
GO
ALTER TABLE [dbo].[Departments] ADD  DEFAULT ((1000)) FOR [OrganizationId]
GO
ALTER TABLE [dbo].[Departments] ADD  DEFAULT ((1000)) FOR [CompanyId]
GO
ALTER TABLE [dbo].[Departments] ADD  DEFAULT ((1000)) FOR [PlantId]
GO
ALTER TABLE [dbo].[Departments] ADD  DEFAULT ((1000)) FOR [SLocId]
GO
ALTER TABLE [dbo].[Departments] ADD  DEFAULT ((0)) FOR [HostelId]
GO
ALTER TABLE [dbo].[Departments] ADD  DEFAULT ((0)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Departments] ADD  DEFAULT ((0)) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Departments] ADD  DEFAULT ((0)) FOR [ChangedBy]
GO
ALTER TABLE [dbo].[Departments] ADD  DEFAULT ((0)) FOR [ChangedAt]
GO
ALTER TABLE [dbo].[Descriptions] ADD  DEFAULT ((0)) FOR [ObjId]
GO
ALTER TABLE [dbo].[Descriptions] ADD  DEFAULT ((0)) FOR [GymId]
GO
ALTER TABLE [dbo].[Descriptions] ADD  DEFAULT ((0)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Descriptions] ADD  DEFAULT ((0)) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Descriptions] ADD  DEFAULT ((0)) FOR [ChangedBy]
GO
ALTER TABLE [dbo].[Descriptions] ADD  DEFAULT ((0)) FOR [ChangedAt]
GO
ALTER TABLE [dbo].[Docs] ADD  DEFAULT ((0)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Docs] ADD  DEFAULT ((0)) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Docs] ADD  DEFAULT ((0)) FOR [ChangedBy]
GO
ALTER TABLE [dbo].[Docs] ADD  DEFAULT ((0)) FOR [ChangedAt]
GO
ALTER TABLE [dbo].[Hostels] ADD  DEFAULT ((1000)) FOR [GroupId]
GO
ALTER TABLE [dbo].[Hostels] ADD  DEFAULT ((1000)) FOR [OrganizationId]
GO
ALTER TABLE [dbo].[Hostels] ADD  DEFAULT ((1000)) FOR [CompanyId]
GO
ALTER TABLE [dbo].[Hostels] ADD  DEFAULT ((1000)) FOR [PlantId]
GO
ALTER TABLE [dbo].[Hostels] ADD  DEFAULT ((1000)) FOR [SLocId]
GO
ALTER TABLE [dbo].[Hostels] ADD  DEFAULT ((0)) FOR [HostelNum]
GO
ALTER TABLE [dbo].[Hostels] ADD  DEFAULT ((0)) FOR [DateStart]
GO
ALTER TABLE [dbo].[Hostels] ADD  DEFAULT ((0)) FOR [DateEnd]
GO
ALTER TABLE [dbo].[Hostels] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Hostels] ADD  DEFAULT ((0)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Hostels] ADD  DEFAULT ((0)) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Hostels] ADD  DEFAULT ((0)) FOR [ChangedBy]
GO
ALTER TABLE [dbo].[Hostels] ADD  DEFAULT ((0)) FOR [ChangedAt]
GO
ALTER TABLE [dbo].[HostelsManagers] ADD  DEFAULT ((0)) FOR [GroupId]
GO
ALTER TABLE [dbo].[HostelsManagers] ADD  DEFAULT ((0)) FOR [OrganizationId]
GO
ALTER TABLE [dbo].[HostelsManagers] ADD  DEFAULT ((0)) FOR [CompanyId]
GO
ALTER TABLE [dbo].[HostelsManagers] ADD  DEFAULT ((0)) FOR [PlantId]
GO
ALTER TABLE [dbo].[HostelsManagers] ADD  DEFAULT ((0)) FOR [SLocId]
GO
ALTER TABLE [dbo].[HostelsManagers] ADD  DEFAULT ((0)) FOR [HostelNum]
GO
ALTER TABLE [dbo].[HostelsManagers] ADD  DEFAULT ((0)) FOR [WrkrNum]
GO
ALTER TABLE [dbo].[HostelsManagers] ADD  DEFAULT ((0)) FOR [HostMngrId]
GO
ALTER TABLE [dbo].[HostelsManagers] ADD  DEFAULT ((0)) FOR [DateStart]
GO
ALTER TABLE [dbo].[HostelsManagers] ADD  DEFAULT ((0)) FOR [DateEnd]
GO
ALTER TABLE [dbo].[HostelsManagers] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HostelsManagers] ADD  DEFAULT ((0)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[HostelsManagers] ADD  DEFAULT ((0)) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[HostelsManagers] ADD  DEFAULT ((0)) FOR [ChangedBy]
GO
ALTER TABLE [dbo].[HostelsManagers] ADD  DEFAULT ((0)) FOR [ChangedAt]
GO
ALTER TABLE [dbo].[HostelsWrkrPerHour] ADD  DEFAULT ((1000)) FOR [GroupId]
GO
ALTER TABLE [dbo].[HostelsWrkrPerHour] ADD  DEFAULT ((1000)) FOR [OrganizationId]
GO
ALTER TABLE [dbo].[HostelsWrkrPerHour] ADD  DEFAULT ((1000)) FOR [CompanyId]
GO
ALTER TABLE [dbo].[HostelsWrkrPerHour] ADD  DEFAULT ((1000)) FOR [PlantId]
GO
ALTER TABLE [dbo].[HostelsWrkrPerHour] ADD  DEFAULT ((1000)) FOR [SLocId]
GO
ALTER TABLE [dbo].[HostelsWrkrPerHour] ADD  DEFAULT ((0)) FOR [HostelNum]
GO
ALTER TABLE [dbo].[HostelsWrkrPerHour] ADD  DEFAULT ((0)) FOR [WrkrNum]
GO
ALTER TABLE [dbo].[HostelsWrkrPerHour] ADD  DEFAULT ((0)) FOR [PerHour1]
GO
ALTER TABLE [dbo].[HostelsWrkrPerHour] ADD  DEFAULT ((0)) FOR [PerHour2]
GO
ALTER TABLE [dbo].[HostelsWrkrPerHour] ADD  DEFAULT ((0)) FOR [PerHour3]
GO
ALTER TABLE [dbo].[HostelsWrkrPerHour] ADD  DEFAULT ((0)) FOR [PerTrip1]
GO
ALTER TABLE [dbo].[HostelsWrkrPerHour] ADD  DEFAULT ((0)) FOR [PerTrip2]
GO
ALTER TABLE [dbo].[HostelsWrkrPerHour] ADD  DEFAULT ((0)) FOR [PerTrip3]
GO
ALTER TABLE [dbo].[HostelsWrkrPerHour] ADD  DEFAULT ((0)) FOR [DateStart]
GO
ALTER TABLE [dbo].[HostelsWrkrPerHour] ADD  DEFAULT ((0)) FOR [DateEnd]
GO
ALTER TABLE [dbo].[HostelsWrkrPerHour] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[HostelsWrkrPerHour] ADD  DEFAULT ((0)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[HostelsWrkrPerHour] ADD  DEFAULT ((0)) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[HostelsWrkrPerHour] ADD  DEFAULT ((0)) FOR [ChangedBy]
GO
ALTER TABLE [dbo].[HostelsWrkrPerHour] ADD  DEFAULT ((0)) FOR [ChangedAt]
GO
ALTER TABLE [dbo].[Logs] ADD  DEFAULT ((0)) FOR [ObjId]
GO
ALTER TABLE [dbo].[Logs] ADD  DEFAULT ((0)) FOR [GymId]
GO
ALTER TABLE [dbo].[Logs] ADD  DEFAULT ((0)) FOR [LgDate1]
GO
ALTER TABLE [dbo].[Logs] ADD  DEFAULT ((0)) FOR [LgDate2]
GO
ALTER TABLE [dbo].[Logs] ADD  DEFAULT ((0)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Logs] ADD  DEFAULT ((0)) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Logs] ADD  DEFAULT ((0)) FOR [ChangedBy]
GO
ALTER TABLE [dbo].[Logs] ADD  DEFAULT ((0)) FOR [ChangedAt]
GO
ALTER TABLE [dbo].[OAuthObjects] ADD  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[OAuthObjects] ADD  DEFAULT ((0)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[OAuthObjects] ADD  DEFAULT ((0)) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[OAuthObjects] ADD  DEFAULT ((0)) FOR [ChangedBy]
GO
ALTER TABLE [dbo].[OAuthObjects] ADD  DEFAULT ((0)) FOR [ChangedAt]
GO
ALTER TABLE [dbo].[Reminders] ADD  DEFAULT ((0)) FOR [ObjId]
GO
ALTER TABLE [dbo].[Reminders] ADD  DEFAULT ((0)) FOR [GymId]
GO
ALTER TABLE [dbo].[Reminders] ADD  DEFAULT ((0)) FOR [PopUpAt_YYYYMMDDHHMM]
GO
ALTER TABLE [dbo].[Reminders] ADD  DEFAULT ((0)) FOR [IsRecorsive]
GO
ALTER TABLE [dbo].[Reminders] ADD  DEFAULT ((0)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Reminders] ADD  DEFAULT ((0)) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Reminders] ADD  DEFAULT ((0)) FOR [ChangedBy]
GO
ALTER TABLE [dbo].[Reminders] ADD  DEFAULT ((0)) FOR [ChangedAt]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [IsSysAdmin]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [ChangedBy]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [ChangedAt]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [HosId]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((1000)) FOR [GroupId]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((1000)) FOR [OrganizationId]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((1000)) FOR [CompanyId]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((1000)) FOR [PlantId]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((1000)) FOR [SLocId]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [HostelNum]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [WrkrNum]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [IsHoliday]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [IsEveHoliday]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [IsHoliday1]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [ShiftDate]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [ShiftDateIn]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [ShiftDateOut]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [WHTotalHours]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [Reg100]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [Reg125]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [Reg150]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [Hol150]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [Hol175]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [Hol200]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [Shb100]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [Shb050]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [Shb175]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [Shb200]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [FReg100]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [FReg125]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [FReg150]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [FHol150]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [FHol175]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [FHol200]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [FShb100]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [FShb050]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [FShb175]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [FShb200]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [Fee1]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [Fee2]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [Fee3]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [PerHour1]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [PerHour2]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [PerHour3]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [PerTrip1]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [PerTrip2]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [PerTrip3]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [Pay4SpltTrip1]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [Pay4SpltTrip2]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [GlobalFee]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [GlobalTrip]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [MonthlyBonus]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [FixedBonus]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [FixCredit01]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [FixCredit02]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [FixCredit03]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [FixCredit04]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [FixCredit05]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [FixCredit06]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [FixCredit07]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [FixCredit08]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [FixCredit09]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [FixCredit10]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [FixCredit11]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [FixCredit12]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [FixCredit13]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [FixCredit14]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [Total1]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [Total2]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [Total3]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [Total4]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [ChangedBy]
GO
ALTER TABLE [dbo].[WHours] ADD  DEFAULT ((0)) FOR [ChangedAt]
GO
ALTER TABLE [dbo].[WorkerRoles] ADD  DEFAULT ((0)) FOR [WrkrNum]
GO
ALTER TABLE [dbo].[WorkerRoles] ADD  DEFAULT ((0)) FOR [DeprId]
GO
ALTER TABLE [dbo].[WorkerRoles] ADD  DEFAULT ((0)) FOR [RolId]
GO
ALTER TABLE [dbo].[WorkerRoles] ADD  DEFAULT ((0)) FOR [DateStart]
GO
ALTER TABLE [dbo].[WorkerRoles] ADD  DEFAULT ((0)) FOR [DateEnd]
GO
ALTER TABLE [dbo].[WorkerRoles] ADD  DEFAULT ((0)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[WorkerRoles] ADD  DEFAULT ((0)) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[WorkerRoles] ADD  DEFAULT ((0)) FOR [ChangedBy]
GO
ALTER TABLE [dbo].[WorkerRoles] ADD  DEFAULT ((0)) FOR [ChangedAt]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [WrkrNum]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [DateStartWork]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [DateEndWork]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [NNChildsLT3]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [NNChildsLT18]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [NNChilds]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [PerHour1]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [PerHour2]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [PerHour3]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [PerTrip1]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [PerTrip2]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [PerTrip3]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [Pay4SpltTrip1]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [Pay4SpltTrip2]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [GlobalFee]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [PosiScope3M]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [PosiScope12M]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [GlobalTrip]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [MonthlyBonus]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [FixedBonus]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [FixCredit01]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [FixCredit02]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [FixCredit03]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [FixCredit04]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [FixCredit05]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [FixCredit06]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [FixCredit07]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [FixCredit08]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [FixCredit09]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [FixCredit10]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [FixCredit11]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [FixCredit12]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [FixCredit13]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [FixCredit14]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [Total1]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [Total2]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [Total3]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [Total4]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [ChangedBy]
GO
ALTER TABLE [dbo].[Workers] ADD  DEFAULT ((0)) FOR [ChangedAt]
GO
ALTER TABLE [dbo].[WorkersAggrgsTotals] ADD  DEFAULT ((0)) FOR [WrkrNum]
GO
ALTER TABLE [dbo].[WorkersAggrgsTotals] ADD  DEFAULT ((0)) FOR [Total1]
GO
ALTER TABLE [dbo].[WorkersAggrgsTotals] ADD  DEFAULT ((0)) FOR [Total2]
GO
ALTER TABLE [dbo].[WorkersAggrgsTotals] ADD  DEFAULT ((0)) FOR [Total3]
GO
ALTER TABLE [dbo].[WorkersAggrgsTotals] ADD  DEFAULT ((0)) FOR [Total4]
GO
ALTER TABLE [dbo].[WorkersAggrgsTotals] ADD  DEFAULT ((0)) FOR [Total5]
GO
ALTER TABLE [dbo].[WorkersAggrgsTotals] ADD  DEFAULT ((0)) FOR [Total6]
GO
ALTER TABLE [dbo].[WorkersAggrgsTotals] ADD  DEFAULT ((0)) FOR [Total7]
GO
ALTER TABLE [dbo].[WorkersAggrgsTotals] ADD  DEFAULT ((0)) FOR [Total8]
GO
ALTER TABLE [dbo].[WorkersAggrgsTotals] ADD  DEFAULT ((0)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[WorkersAggrgsTotals] ADD  DEFAULT ((0)) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[WorkersAggrgsTotals] ADD  DEFAULT ((0)) FOR [ChangedBy]
GO
ALTER TABLE [dbo].[WorkersAggrgsTotals] ADD  DEFAULT ((0)) FOR [ChangedAt]
GO
ALTER TABLE [dbo].[WorkRoles] ADD  DEFAULT ((0)) FOR [DeprId]
GO
ALTER TABLE [dbo].[WorkRoles] ADD  DEFAULT ((1000)) FOR [GroupId]
GO
ALTER TABLE [dbo].[WorkRoles] ADD  DEFAULT ((1000)) FOR [OrganizationId]
GO
ALTER TABLE [dbo].[WorkRoles] ADD  DEFAULT ((1000)) FOR [CompanyId]
GO
ALTER TABLE [dbo].[WorkRoles] ADD  DEFAULT ((1000)) FOR [PlantId]
GO
ALTER TABLE [dbo].[WorkRoles] ADD  DEFAULT ((1000)) FOR [SLocId]
GO
ALTER TABLE [dbo].[WorkRoles] ADD  DEFAULT ((0)) FOR [HostelId]
GO
ALTER TABLE [dbo].[WorkRoles] ADD  DEFAULT ((0)) FOR [CreatedBy]
GO
ALTER TABLE [dbo].[WorkRoles] ADD  DEFAULT ((0)) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[WorkRoles] ADD  DEFAULT ((0)) FOR [ChangedBy]
GO
ALTER TABLE [dbo].[WorkRoles] ADD  DEFAULT ((0)) FOR [ChangedAt]
GO
USE [master]
GO
ALTER DATABASE [iKesher] SET  READ_WRITE 
GO
