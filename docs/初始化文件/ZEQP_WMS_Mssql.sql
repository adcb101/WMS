USE [master]
GO
/****** Object:  Database [TEST]    Script Date: 2023/12/04 16:50:28 ******/
CREATE DATABASE [TEST]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TEST', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\TEST.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TEST_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\TEST_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TEST] SET COMPATIBILITY_LEVEL = 120
GO

GO
ALTER DATABASE [TEST] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TEST] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TEST] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TEST] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TEST] SET ARITHABORT OFF 
GO
ALTER DATABASE [TEST] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TEST] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TEST] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TEST] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TEST] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TEST] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TEST] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TEST] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TEST] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TEST] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TEST] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TEST] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TEST] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TEST] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TEST] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TEST] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TEST] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TEST] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TEST] SET  MULTI_USER 
GO
ALTER DATABASE [TEST] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TEST] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TEST] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TEST] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [TEST] SET DELAYED_DURABILITY = DISABLED 
GO
USE [TEST]
GO
/****** Object:  Table [dbo].[base_action]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[base_action](
	[Id] [nvarchar](50) NOT NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NULL,
	[Deleted] [bit] NULL,
	[ParentId] [nvarchar](50) NULL,
	[Type] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Url] [nvarchar](max) NULL,
	[Value] [nvarchar](50) NULL,
	[NeedAction] [bit] NULL,
	[Icon] [nvarchar](50) NULL,
	[Sort] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[base_appsecret]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[base_appsecret](
	[Id] [nvarchar](50) NOT NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NULL,
	[Deleted] [bit] NOT NULL,
	[AppId] [nvarchar](50) NULL,
	[AppSecret] [nvarchar](50) NULL,
	[AppName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[base_buildtest]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[base_buildtest](
	[Id] [nvarchar](50) NOT NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NULL,
	[Deleted] [bit] NOT NULL,
	[Column1] [nvarchar](50) NULL,
	[Column2] [nvarchar](50) NULL,
	[Column3] [nvarchar](50) NULL,
	[Column4] [nvarchar](50) NULL,
	[Column5] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[base_dblink]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[base_dblink](
	[Id] [nvarchar](50) NOT NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NULL,
	[Deleted] [bit] NOT NULL,
	[LinkName] [nvarchar](50) NULL,
	[ConnectionStr] [nvarchar](max) NULL,
	[DbType] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[base_department]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[base_department](
	[Id] [nvarchar](50) NOT NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NULL,
	[Deleted] [bit] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[ParentId] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[base_enum]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[base_enum](
	[Id] [nvarchar](50) NOT NULL,
	[Code] [nvarchar](20) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[IsSystem] [bit] NULL,
	[Remarks] [nvarchar](100) NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[base_enumitem]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[base_enumitem](
	[Id] [nvarchar](50) NOT NULL,
	[EnumId] [nvarchar](50) NOT NULL,
	[EnumCode] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Value] [nvarchar](50) NOT NULL,
	[Remarks] [nvarchar](100) NULL,
	[IsSystem] [bit] NOT NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[base_parameter]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[base_parameter](
	[Id] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ValConfig] [nvarchar](500) NULL,
	[Val] [nvarchar](50) NOT NULL,
	[Remarks] [nvarchar](100) NULL,
	[IsSystem] [bit] NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[base_role]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[base_role](
	[Id] [nvarchar](50) NOT NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NULL,
	[Deleted] [bit] NOT NULL,
	[RoleName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[base_roleaction]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[base_roleaction](
	[Id] [nvarchar](50) NOT NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NULL,
	[Deleted] [bit] NULL,
	[RoleId] [nvarchar](50) NULL,
	[ActionId] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[base_user]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[base_user](
	[Id] [nvarchar](50) NOT NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NULL,
	[deleted] [bit] NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[RealName] [nvarchar](50) NULL,
	[Sex] [int] NOT NULL,
	[Birthday] [date] NULL,
	[DepartmentId] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[base_userlog]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[base_userlog](
	[Id] [nvarchar](50) NOT NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NULL,
	[CreatorRealName] [nvarchar](50) NULL,
	[LogType] [nvarchar](50) NULL,
	[LogContent] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[base_userrole]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[base_userrole](
	[Id] [nvarchar](50) NOT NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NULL,
	[Deleted] [bit] NULL,
	[UserId] [nvarchar](50) NULL,
	[RoleId] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[base_userstor]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[base_userstor](
	[Id] [nvarchar](50) NOT NULL,
	[UserId] [nvarchar](50) NOT NULL,
	[StorId] [nvarchar](50) NOT NULL,
	[IsDefault] [bit] NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[it_localdetail]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[it_localdetail](
	[Id] [nvarchar](50) NOT NULL,
	[StorId] [nvarchar](50) NOT NULL,
	[InStorId] [nvarchar](50) NULL,
	[LocalId] [nvarchar](50) NOT NULL,
	[TrayId] [nvarchar](50) NULL,
	[ZoneId] [nvarchar](50) NULL,
	[MaterialId] [nvarchar](50) NOT NULL,
	[MeasureId] [nvarchar](50) NOT NULL,
	[BatchNo] [nvarchar](50) NULL,
	[BarCode] [nvarchar](50) NULL,
	[InTime] [datetime2](7) NOT NULL,
	[Amount] [float] NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Price] [float] NULL,
	[Deleted] [bit] NOT NULL,
	[Num] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[it_localmaterial]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[it_localmaterial](
	[Id] [nvarchar](50) NOT NULL,
	[StorId] [nvarchar](50) NOT NULL,
	[LocalId] [nvarchar](50) NOT NULL,
	[TrayId] [nvarchar](50) NULL,
	[ZoneId] [nvarchar](50) NULL,
	[MaterialId] [nvarchar](50) NOT NULL,
	[MeasureId] [nvarchar](50) NOT NULL,
	[BatchNo] [nvarchar](50) NULL,
	[BarCode] [nvarchar](50) NULL,
	[Num] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[it_recordbook]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[it_recordbook](
	[Id] [nvarchar](50) NOT NULL,
	[RefCode] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NOT NULL,
	[FromStorId] [nvarchar](50) NULL,
	[FromLocalId] [nvarchar](50) NULL,
	[ToStorId] [nvarchar](50) NULL,
	[ToLocalId] [nvarchar](50) NULL,
	[MaterialId] [nvarchar](50) NOT NULL,
	[MeasureId] [nvarchar](50) NOT NULL,
	[BarCode] [nvarchar](50) NULL,
	[BatchNo] [nvarchar](50) NULL,
	[Num] [float] NOT NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pb_address]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pb_address](
	[Id] [nvarchar](50) NOT NULL,
	[CusId] [nvarchar](50) NULL,
	[SupId] [nvarchar](50) NULL,
	[Code] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[IsEnable] [bit] NOT NULL,
	[IsDefault] [bit] NOT NULL,
	[Remarks] [nvarchar](100) NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pb_areamaterial]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pb_areamaterial](
	[AreaId] [nvarchar](50) NOT NULL,
	[MaterialId] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AreaId] ASC,
	[MaterialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pb_barcode]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pb_barcode](
	[Id] [nvarchar](50) NOT NULL,
	[BarCode] [nvarchar](50) NULL,
	[BarCodeTypeId] [nvarchar](50) NOT NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pb_barcoderule]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pb_barcoderule](
	[Id] [nvarchar](50) NOT NULL,
	[TypeId] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Sort] [nvarchar](50) NULL,
	[Rule] [nvarchar](50) NULL,
	[length] [int] NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pb_barcodeserial]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pb_barcodeserial](
	[Id] [nvarchar](50) NOT NULL,
	[TypeId] [nvarchar](50) NOT NULL,
	[ParaName] [nvarchar](50) NOT NULL,
	[ParaValue] [nvarchar](50) NOT NULL,
	[SerialNum] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pb_barcodetype]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pb_barcodetype](
	[Id] [nvarchar](50) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[JoinChar] [nvarchar](50) NOT NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pb_customer]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pb_customer](
	[Id] [nvarchar](50) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NULL,
	[Fax] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Remarks] [nvarchar](200) NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pb_equipment]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pb_equipment](
	[Id] [nvarchar](50) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[EquNum] [nvarchar](50) NOT NULL,
	[Status] [bit] NOT NULL,
	[Remark] [nvarchar](100) NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pb_feedpoint]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pb_feedpoint](
	[Id] [nvarchar](50) NOT NULL,
	[StorId] [nvarchar](50) NOT NULL,
	[LaneId] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[IsEnable] [bit] NOT NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pb_laneway]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pb_laneway](
	[Id] [nvarchar](50) NOT NULL,
	[StorId] [nvarchar](50) NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pb_localtray]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pb_localtray](
	[LocalId] [nvarchar](50) NOT NULL,
	[TrayTypeId] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[LocalId] ASC,
	[TrayTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pb_location]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pb_location](
	[Id] [nvarchar](50) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[StorId] [nvarchar](50) NOT NULL,
	[AreaId] [nvarchar](50) NOT NULL,
	[LanewayId] [nvarchar](50) NULL,
	[RackId] [nvarchar](50) NULL,
	[OverVol] [float] NULL,
	[IsForbid] [bit] NOT NULL,
	[IsDefault] [bit] NOT NULL,
	[LockType] [int] NOT NULL,
	[ErrorCode] [nvarchar](50) NULL,
	[Remarks] [nvarchar](200) NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pb_material]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pb_material](
	[Id] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Code] [nvarchar](100) NOT NULL,
	[BarCode] [nvarchar](50) NULL,
	[SimpleName] [nvarchar](50) NULL,
	[MaterialTypeId] [nvarchar](50) NOT NULL,
	[MeasureId] [nvarchar](50) NOT NULL,
	[Spec] [nvarchar](50) NULL,
	[Max] [float] NULL,
	[Min] [float] NULL,
	[CusId] [nvarchar](50) NULL,
	[SupId] [nvarchar](50) NULL,
	[StorId] [nvarchar](50) NULL,
	[Price] [float] NULL,
	[Remarks] [nvarchar](200) NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pb_materialpoint]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pb_materialpoint](
	[PointId] [nvarchar](50) NOT NULL,
	[MaterialId] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PointId] ASC,
	[MaterialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pb_materialtype]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pb_materialtype](
	[Id] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](80) NOT NULL,
	[Code] [nvarchar](40) NOT NULL,
	[ParentId] [nvarchar](50) NULL,
	[IsLeaf] [varchar](1) NOT NULL,
	[Remarks] [nvarchar](200) NULL,
	[Path] [nvarchar](200) NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pb_measure]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pb_measure](
	[Id] [nvarchar](50) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pb_rack]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pb_rack](
	[Id] [nvarchar](50) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[StorId] [nvarchar](50) NOT NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pb_storage]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pb_storage](
	[Id] [nvarchar](50) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[IsTray] [bit] NOT NULL,
	[IsZone] [bit] NOT NULL,
	[Disable] [bit] NOT NULL,
	[IsDefault] [bit] NOT NULL,
	[Remarks] [nvarchar](200) NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pb_storarea]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pb_storarea](
	[Id] [nvarchar](50) NOT NULL,
	[StorId] [nvarchar](50) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pb_supplier]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pb_supplier](
	[Id] [nvarchar](50) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NULL,
	[Fax] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[ContactName] [nvarchar](50) NULL,
	[Address] [nvarchar](100) NULL,
	[Remarks] [nvarchar](200) NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pb_tray]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pb_tray](
	[Id] [nvarchar](50) NOT NULL,
	[LocalId] [nvarchar](50) NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[TrayTypeId] [nvarchar](50) NOT NULL,
	[StartTime] [datetime2](7) NOT NULL,
	[Status] [int] NOT NULL,
	[Remarks] [nvarchar](200) NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pb_traymaterial]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pb_traymaterial](
	[MaterialId] [nvarchar](50) NOT NULL,
	[TrayTypeId] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaterialId] ASC,
	[TrayTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pb_traytype]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pb_traytype](
	[Id] [nvarchar](50) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Length] [float] NULL,
	[Width] [float] NULL,
	[High] [float] NULL,
	[IsZone] [bit] NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pb_trayzone]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pb_trayzone](
	[Id] [nvarchar](50) NOT NULL,
	[TrayTypeId] [nvarchar](50) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[X] [int] NULL,
	[Y] [int] NULL,
	[IsDefault] [bit] NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[pd_plan]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pd_plan](
	[Id] [nvarchar](50) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[MaterialId] [nvarchar](50) NOT NULL,
	[BomVerId] [nvarchar](50) NOT NULL,
	[BatchNo] [nvarchar](50) NULL,
	[Num] [float] NOT NULL,
	[PlanDate] [datetime2](7) NOT NULL,
	[StartDate] [datetime2](7) NULL,
	[FinishDate] [datetime2](7) NULL,
	[UnitCode] [nvarchar](50) NULL,
	[Status] [int] NOT NULL,
	[Remark] [nvarchar](500) NULL,
	[OrderNo] [nvarchar](50) NULL,
	[RefId] [nvarchar](50) NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[td_allocate]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[td_allocate](
	[Id] [nvarchar](50) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[AllocateTime] [datetime2](7) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[StorId] [nvarchar](50) NOT NULL,
	[ToStorId] [nvarchar](50) NOT NULL,
	[ToLocalId] [nvarchar](50) NULL,
	[RefCode] [nvarchar](50) NULL,
	[Amount] [float] NULL,
	[AllocateNum] [float] NULL,
	[EquId] [nvarchar](50) NULL,
	[Status] [int] NOT NULL,
	[Remarks] [nvarchar](100) NULL,
	[AuditUserId] [nvarchar](50) NULL,
	[AuditeTime] [datetime2](7) NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[td_allocatedetail]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[td_allocatedetail](
	[Id] [nvarchar](50) NOT NULL,
	[AllocateId] [nvarchar](50) NOT NULL,
	[FromStorId] [nvarchar](50) NOT NULL,
	[FromlocalId] [nvarchar](50) NOT NULL,
	[FromTrayId] [nvarchar](50) NULL,
	[FromZoneId] [nvarchar](50) NULL,
	[ToStorId] [nvarchar](50) NULL,
	[ToLocalId] [nvarchar](50) NULL,
	[BarCode] [nvarchar](50) NULL,
	[MaterialId] [nvarchar](50) NOT NULL,
	[BatchNo] [nvarchar](50) NULL,
	[Price] [float] NOT NULL,
	[Amount] [float] NOT NULL,
	[LocalNum] [float] NOT NULL,
	[AllocateNum] [float] NOT NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[td_bad]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[td_bad](
	[Id] [nvarchar](50) NOT NULL,
	[Code] [nvarchar](20) NOT NULL,
	[StorId] [nvarchar](50) NOT NULL,
	[BadTime] [datetime2](7) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[RefCode] [nvarchar](50) NULL,
	[BadNum] [float] NOT NULL,
	[TotalAmt] [float] NULL,
	[EquId] [nvarchar](50) NULL,
	[Status] [int] NOT NULL,
	[Remarks] [nvarchar](100) NULL,
	[AuditUserId] [nvarchar](50) NULL,
	[AuditeTime] [datetime2](7) NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[td_baddetail]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[td_baddetail](
	[Id] [nvarchar](50) NOT NULL,
	[BadId] [nvarchar](50) NOT NULL,
	[StorId] [nvarchar](50) NOT NULL,
	[FromLocalId] [nvarchar](50) NOT NULL,
	[TrayId] [nvarchar](50) NULL,
	[ZoneId] [nvarchar](50) NULL,
	[ToLocalId] [nvarchar](50) NULL,
	[MaterialId] [nvarchar](50) NOT NULL,
	[BatchNo] [nvarchar](50) NULL,
	[BarCode] [nvarchar](50) NULL,
	[LocalNum] [float] NOT NULL,
	[BadNum] [float] NOT NULL,
	[Surplus] [float] NOT NULL,
	[Price] [float] NOT NULL,
	[Amount] [float] NOT NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[td_check]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[td_check](
	[Id] [nvarchar](50) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[StorId] [nvarchar](50) NOT NULL,
	[CheckTime] [datetime2](7) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[RefCode] [nvarchar](50) NULL,
	[EquId] [nvarchar](50) NOT NULL,
	[IsComplete] [bit] NULL,
	[Status] [int] NULL,
	[AuditUserId] [nvarchar](50) NULL,
	[AuditeTime] [datetime2](7) NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RandomPer] [int] NULL,
	[Remarks] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[td_checkarea]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[td_checkarea](
	[CherkId] [nvarchar](50) NOT NULL,
	[StoarAreaId] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CherkId] ASC,
	[StoarAreaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[td_checkdata]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[td_checkdata](
	[Id] [nvarchar](50) NOT NULL,
	[CheckId] [nvarchar](50) NOT NULL,
	[StorId] [nvarchar](50) NOT NULL,
	[localId] [nvarchar](50) NOT NULL,
	[TrayId] [nvarchar](50) NULL,
	[ZoneId] [nvarchar](50) NULL,
	[MaterialId] [nvarchar](50) NOT NULL,
	[BatchNo] [nvarchar](50) NULL,
	[LocalNum] [float] NULL,
	[CheckNum] [float] NULL,
	[DisNum] [float] NULL,
	[CheckUserId] [nvarchar](50) NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[td_checkmaterial]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[td_checkmaterial](
	[CheckId] [nvarchar](50) NOT NULL,
	[MaterialId] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CheckId] ASC,
	[MaterialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[td_instorage]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[td_instorage](
	[Id] [nvarchar](50) NOT NULL,
	[RecId] [nvarchar](50) NULL,
	[Code] [nvarchar](50) NOT NULL,
	[InStorTime] [datetime2](7) NOT NULL,
	[InType] [nvarchar](50) NOT NULL,
	[RefCode] [nvarchar](50) NULL,
	[Status] [int] NOT NULL,
	[Remarks] [nvarchar](100) NULL,
	[StorId] [nvarchar](50) NOT NULL,
	[AddrId] [nvarchar](50) NULL,
	[SupId] [nvarchar](50) NULL,
	[TotalNum] [float] NOT NULL,
	[TotalAmt] [float] NOT NULL,
	[EqId] [nvarchar](50) NULL,
	[AuditUserId] [nvarchar](50) NULL,
	[AuditeTime] [datetime2](7) NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[td_instordetail]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[td_instordetail](
	[Id] [nvarchar](50) NOT NULL,
	[InStorId] [nvarchar](50) NOT NULL,
	[StorId] [nvarchar](50) NOT NULL,
	[LocalId] [nvarchar](50) NOT NULL,
	[TrayId] [nvarchar](50) NULL,
	[ZoneId] [nvarchar](50) NULL,
	[BarCode] [nvarchar](50) NULL,
	[MaterialId] [nvarchar](50) NOT NULL,
	[BatchNo] [nvarchar](50) NULL,
	[Price] [float] NOT NULL,
	[TotalAmt] [float] NOT NULL,
	[Num] [float] NOT NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[td_move]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[td_move](
	[Id] [nvarchar](50) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[MoveTime] [datetime2](7) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[RefCode] [nvarchar](50) NULL,
	[StorId] [nvarchar](50) NOT NULL,
	[MoveNum] [float] NULL,
	[TotalAmt] [float] NULL,
	[EquId] [nvarchar](50) NULL,
	[Status] [int] NOT NULL,
	[Remarks] [nvarchar](200) NULL,
	[AuditUserId] [nvarchar](50) NULL,
	[AuditeTime] [datetime2](7) NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[td_movedetail]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[td_movedetail](
	[Id] [nvarchar](50) NOT NULL,
	[MoveId] [nvarchar](50) NOT NULL,
	[StorId] [nvarchar](50) NOT NULL,
	[FromLocalId] [nvarchar](50) NOT NULL,
	[FromZoneId] [nvarchar](50) NULL,
	[FromTrayId] [nvarchar](50) NULL,
	[ToLocalId] [nvarchar](50) NOT NULL,
	[ToTrayId] [nvarchar](50) NULL,
	[ToZoneId] [nvarchar](50) NULL,
	[BarCode] [nvarchar](50) NULL,
	[MaterialId] [nvarchar](50) NOT NULL,
	[BatchNo] [nvarchar](50) NULL,
	[Price] [float] NOT NULL,
	[LocalNum] [float] NOT NULL,
	[MoveNum] [float] NOT NULL,
	[Amount] [float] NOT NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[td_outstorage]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[td_outstorage](
	[Id] [nvarchar](50) NOT NULL,
	[SendId] [nvarchar](50) NULL,
	[StorageId] [nvarchar](50) NULL,
	[Code] [nvarchar](20) NOT NULL,
	[OutTime] [datetime2](7) NOT NULL,
	[OutType] [nvarchar](50) NOT NULL,
	[RefCode] [nvarchar](50) NULL,
	[OutNum] [float] NOT NULL,
	[TotalAmt] [float] NULL,
	[EquId] [nvarchar](50) NULL,
	[Status] [int] NULL,
	[CusId] [nvarchar](50) NULL,
	[AddrId] [nvarchar](50) NULL,
	[Remarks] [nvarchar](50) NULL,
	[AuditUserId] [nvarchar](50) NULL,
	[AuditeTime] [datetime2](7) NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[td_outstordetail]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[td_outstordetail](
	[Id] [nvarchar](50) NOT NULL,
	[StorId] [nvarchar](50) NOT NULL,
	[OutStorId] [nvarchar](50) NOT NULL,
	[LocalId] [nvarchar](50) NOT NULL,
	[TrayId] [nvarchar](50) NULL,
	[ZoneId] [nvarchar](50) NULL,
	[BarCode] [nvarchar](50) NULL,
	[MaterialId] [nvarchar](50) NOT NULL,
	[BatchNo] [nvarchar](50) NULL,
	[Price] [float] NULL,
	[TotalAmt] [float] NULL,
	[LocalNum] [float] NOT NULL,
	[OutNum] [float] NOT NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[td_recdetail]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[td_recdetail](
	[Id] [nvarchar](50) NOT NULL,
	[RecId] [nvarchar](50) NOT NULL,
	[StorId] [nvarchar](50) NOT NULL,
	[LocaId] [nvarchar](50) NULL,
	[MaterialId] [nvarchar](50) NOT NULL,
	[MeasureId] [nvarchar](50) NOT NULL,
	[Price] [float] NOT NULL,
	[PlanNum] [float] NOT NULL,
	[RecNum] [float] NOT NULL,
	[InNum] [float] NOT NULL,
	[Amount] [float] NOT NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[td_receiving]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[td_receiving](
	[Id] [nvarchar](50) NOT NULL,
	[StorId] [nvarchar](50) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[OrderTime] [datetime2](7) NOT NULL,
	[RecTime] [datetime2](7) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[RefCode] [nvarchar](50) NULL,
	[Status] [int] NOT NULL,
	[SupId] [nvarchar](50) NULL,
	[TotalNum] [float] NOT NULL,
	[InNum] [float] NOT NULL,
	[TotalAmt] [float] NOT NULL,
	[Remarks] [nvarchar](100) NULL,
	[ConfirmUserId] [nvarchar](50) NULL,
	[ConfirmTime] [datetime2](7) NULL,
	[AuditUserId] [nvarchar](50) NULL,
	[AuditeTime] [datetime2](7) NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[td_send]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[td_send](
	[Id] [nvarchar](50) NOT NULL,
	[StorId] [nvarchar](50) NOT NULL,
	[Code] [nvarchar](20) NOT NULL,
	[OrderTime] [datetime2](7) NOT NULL,
	[SendTime] [datetime2](7) NOT NULL,
	[Type] [nvarchar](20) NOT NULL,
	[RefCode] [nvarchar](20) NULL,
	[Status] [int] NOT NULL,
	[CusId] [nvarchar](50) NULL,
	[AddrId] [nvarchar](50) NULL,
	[TotalNum] [float] NOT NULL,
	[SendNum] [float] NOT NULL,
	[TotalAmt] [float] NOT NULL,
	[Remarks] [nvarchar](100) NULL,
	[ConfirmUserId] [nvarchar](50) NULL,
	[ConfirmTime] [datetime2](7) NULL,
	[AuditUserId] [nvarchar](50) NULL,
	[AuditeTime] [datetime2](7) NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[td_senddetail]    Script Date: 2023/12/04 16:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[td_senddetail](
	[Id] [nvarchar](50) NOT NULL,
	[SendId] [nvarchar](50) NULL,
	[StorId] [nvarchar](50) NOT NULL,
	[LocalId] [nvarchar](50) NULL,
	[MaterialId] [nvarchar](50) NOT NULL,
	[MeasureId] [nvarchar](50) NOT NULL,
	[BatchNo] [nvarchar](50) NULL,
	[LocalNum] [float] NOT NULL,
	[PlanNum] [float] NOT NULL,
	[SendNum] [float] NOT NULL,
	[Price] [float] NULL,
	[Amount] [float] NULL,
	[CreateTime] [datetime2](7) NOT NULL,
	[CreatorId] [nvarchar](50) NOT NULL,
	[Deleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1178957405992521728', CAST(N'2019-10-01 16:58:44.0000000' AS DateTime2), NULL, 0, NULL, 0, N'系统管理', N'', NULL, 1, N'setting', 6)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1178957553778823168', CAST(N'2019-10-01 16:59:19.0000000' AS DateTime2), NULL, 0, N'1178957405992521728', 1, N'权限管理', N'/Base_Manage/Base_Action/List', NULL, 1, NULL, 20)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1179018395304071168', CAST(N'2019-10-01 21:01:05.0000000' AS DateTime2), NULL, 0, N'1178957405992521728', 1, N'密钥管理', N'/Base_Manage/Base_AppSecret/List', NULL, 1, NULL, 15)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1182652266117599232', CAST(N'2019-10-11 21:40:47.0000000' AS DateTime2), NULL, 0, N'1178957405992521728', 1, N'用户管理', N'/Base_Manage/Base_User/List', NULL, 1, N'user', 1)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1182652367447789568', CAST(N'2019-10-11 21:41:11.0000000' AS DateTime2), NULL, 0, N'1178957405992521728', 1, N'角色管理', N'/Base_Manage/Base_Role/List', NULL, 1, N'user', 2)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1182652433302556672', CAST(N'2019-10-11 21:41:27.0000000' AS DateTime2), NULL, 0, N'1178957405992521728', 1, N'部门管理', N'/Base_Manage/Base_Department/List', NULL, 1, NULL, 3)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1188801057778569216', CAST(N'2019-10-28 20:53:53.0000000' AS DateTime2), NULL, 1, N'1182652367447789568', 2, N'增', NULL, N'Base_Role.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1188801057778569217', CAST(N'2019-10-28 20:53:53.0000000' AS DateTime2), NULL, 1, N'1182652367447789568', 2, N'改', NULL, N'Base_Role.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1188801057778569218', CAST(N'2019-10-28 20:53:53.0000000' AS DateTime2), NULL, 1, N'1182652367447789568', 2, N'删', NULL, N'Base_Role.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1188801109783744512', CAST(N'2019-10-28 20:54:06.0000000' AS DateTime2), NULL, 1, N'1182652433302556672', 2, N'增', NULL, N'Base_Department.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1188801109783744513', CAST(N'2019-10-28 20:54:06.0000000' AS DateTime2), NULL, 1, N'1182652433302556672', 2, N'改', NULL, N'Base_Department.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1188801109783744514', CAST(N'2019-10-28 20:54:06.0000000' AS DateTime2), NULL, 1, N'1182652433302556672', 2, N'删', NULL, N'Base_Department.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1188801273885888512', CAST(N'2019-10-28 20:54:45.0000000' AS DateTime2), NULL, 0, N'1179018395304071168', 2, N'增', NULL, N'Base_AppSecret.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1188801273885888513', CAST(N'2019-10-28 20:54:45.0000000' AS DateTime2), NULL, 0, N'1179018395304071168', 2, N'改', NULL, N'Base_AppSecret.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1188801273885888514', CAST(N'2019-10-28 20:54:45.0000000' AS DateTime2), NULL, 0, N'1179018395304071168', 2, N'删', NULL, N'Base_AppSecret.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1188801341661646848', CAST(N'2019-10-28 20:55:01.0000000' AS DateTime2), NULL, 0, N'1178957553778823168', 2, N'增', NULL, N'Base_Action.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1188801341661646849', CAST(N'2019-10-28 20:55:01.0000000' AS DateTime2), NULL, 0, N'1178957553778823168', 2, N'改', NULL, N'Base_Action.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1188801341661646850', CAST(N'2019-10-28 20:55:01.0000000' AS DateTime2), NULL, 0, N'1178957553778823168', 2, N'删', NULL, N'Base_Action.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1193158266167758848', CAST(N'2019-11-09 21:27:53.0000000' AS DateTime2), N'Admin', 0, NULL, 0, N'首页', NULL, NULL, 1, N'home', 1)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1193158630615027712', CAST(N'2019-11-09 21:29:20.0000000' AS DateTime2), N'Admin', 0, N'1193158266167758848', 1, N'仓库统计', N'/Home/Introduce', NULL, 1, N'question-circle', 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1193158780011941888', CAST(N'2019-11-09 21:29:55.0000000' AS DateTime2), N'Admin', 1, N'1193158266167758848', 1, N'运营统计', N'/Home/Statis', NULL, 0, N'bar-chart', 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1251792477787000832', CAST(N'2020-04-19 16:39:19.0000000' AS DateTime2), NULL, 1, N'1182652266117599232', 2, N'增', NULL, N'Base_User.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1251792477787000833', CAST(N'2020-04-19 16:39:19.0000000' AS DateTime2), NULL, 1, N'1182652266117599232', 2, N'改', NULL, N'Base_User.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1251792477787000834', CAST(N'2020-04-19 16:39:19.0000000' AS DateTime2), NULL, 1, N'1182652266117599232', 2, N'删', NULL, N'Base_User.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1251792721769664512', CAST(N'2020-04-19 16:40:17.0000000' AS DateTime2), N'Admin', 0, N'1178957405992521728', 1, N'操作日志', N'/Base_Manage/Base_UserLog/List', NULL, 0, NULL, 23)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1262552445217673216', CAST(N'2020-05-19 09:15:34.0000000' AS DateTime2), N'Admin', 0, N'1178957405992521728', 1, N'数据字典', N'/Base/Base_Enum/List', NULL, 1, N'read', 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1262552445653880832', CAST(N'2020-05-19 09:15:34.0000000' AS DateTime2), NULL, 1, N'1262552445217673216', 2, N'Base_Enum.Add', NULL, N'增', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1262552445653880833', CAST(N'2020-05-19 09:15:34.0000000' AS DateTime2), NULL, 1, N'1262552445217673216', 2, N'Base_Enum.Edit', NULL, N'改', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1262552445653880834', CAST(N'2020-05-19 09:15:34.0000000' AS DateTime2), NULL, 1, N'1262552445217673216', 2, N'Base_Enum.Delete', NULL, N'删', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1262553786761613312', CAST(N'2020-05-19 09:20:54.0000000' AS DateTime2), N'Admin', 0, NULL, 0, N'基本资料', NULL, NULL, 1, N'read', 2)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1262554025874690048', CAST(N'2020-05-19 09:21:51.0000000' AS DateTime2), N'Admin', 0, N'1262553786761613312', 1, N'仓库管理', N'/PB/PB_Storage/List', NULL, 1, N'database', 1)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1262554652306575360', CAST(N'2020-05-19 09:24:20.0000000' AS DateTime2), NULL, 1, N'1262554025874690048', 2, N'增', NULL, N'PB_Storage.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1262554652306575361', CAST(N'2020-05-19 09:24:20.0000000' AS DateTime2), NULL, 1, N'1262554025874690048', 2, N'改', NULL, N'PB_Storage.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1262554652306575362', CAST(N'2020-05-19 09:24:20.0000000' AS DateTime2), NULL, 1, N'1262554025874690048', 2, N'删', NULL, N'PB_Storage.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1262556698871074816', CAST(N'2020-05-19 09:32:28.0000000' AS DateTime2), N'Admin', 0, N'1178957405992521728', 1, N'系统参数', N'/Base/Base_Parameter/List', NULL, 1, N'tool', 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1262557084470218752', CAST(N'2020-05-19 09:34:00.0000000' AS DateTime2), NULL, 1, N'1262556698871074816', 2, N'增', NULL, N'Base_Parameter.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1262557084470218753', CAST(N'2020-05-19 09:34:00.0000000' AS DateTime2), NULL, 1, N'1262556698871074816', 2, N'改', NULL, N'Base_Parameter.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1262557084470218754', CAST(N'2020-05-19 09:34:00.0000000' AS DateTime2), NULL, 1, N'1262556698871074816', 2, N'删', NULL, N'Base_Parameter.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1262561996948115456', CAST(N'2020-05-19 09:53:31.0000000' AS DateTime2), N'Admin', 1, N'1262553786761613312', 1, N'巷道管理', N'/PB/PB_Laneway/List', NULL, 1, NULL, 2)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1262575099001704448', CAST(N'2020-05-19 10:45:35.0000000' AS DateTime2), N'Admin', 0, N'1262553786761613312', 1, N'计量单位', N'/PB/PB_Measure/List', NULL, 1, N'tag', 9)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1262575100272578560', CAST(N'2020-05-19 10:45:36.0000000' AS DateTime2), NULL, 1, N'1262575099001704448', 2, N'权限名', NULL, N'权限值', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1262575172028731392', CAST(N'2020-05-19 10:45:53.0000000' AS DateTime2), NULL, 1, N'1262575099001704448', 2, N'权限名', NULL, N'权限值', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1262575875254128640', CAST(N'2020-05-19 10:48:40.0000000' AS DateTime2), NULL, 1, N'1262575099001704448', 2, N'', NULL, N'', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1262668982729576448', CAST(N'2020-05-19 16:58:39.0000000' AS DateTime2), N'Admin', 0, N'1178957405992521728', 1, N'仓库权限', N'/Base/Base_UserStor/List', NULL, 1, N'deployment-unit', 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1262922914915684352', CAST(N'2020-05-20 09:47:41.0000000' AS DateTime2), N'Admin', 0, N'1262553786761613312', 1, N'客户管理', N'/PB/PB_Customer/List', NULL, 1, N'contacts', 5)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1262928230298423296', CAST(N'2020-05-20 10:08:48.0000000' AS DateTime2), N'Admin', 0, N'1262553786761613312', 1, N'托盘类型', N'/PB/PB_TrayType/List', NULL, 1, N'tags', 12)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1262928411609796608', CAST(N'2020-05-20 10:09:32.0000000' AS DateTime2), N'Admin', 0, N'1262553786761613312', 1, N'托盘管理', N'/PB/PB_Tray/List', NULL, 1, N'border', 13)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1263009829799071744', CAST(N'2020-05-20 15:33:03.0000000' AS DateTime2), N'Admin', 0, N'1262553786761613312', 1, N'供应商管理', N'/PB/PB_Supplier/List', NULL, 1, N'contacts', 6)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1263271264097669120', CAST(N'2020-05-21 08:51:54.0000000' AS DateTime2), N'Admin', 0, N'1262553786761613312', 1, N'物料类型', N'/PB/PB_MaterialType/List', NULL, 1, N'tags', 7)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1263347595661545472', CAST(N'2020-05-21 13:55:13.0000000' AS DateTime2), N'Admin', 0, N'1262553786761613312', 1, N'物料管理', N'/PB/PB_Material/List', NULL, 1, N'border', 8)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1263368318757113856', CAST(N'2020-05-21 15:17:34.0000000' AS DateTime2), N'1262941210671058944', 0, N'1178957405992521728', 1, N'编码规则', N'/PB/PB_BarCodeType/List', NULL, 1, N'tags', 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1263368319327539200', CAST(N'2020-05-21 15:17:34.0000000' AS DateTime2), NULL, 1, N'1263368318757113856', 2, N'增', NULL, N'PB_BarCodeType.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1263368319327539201', CAST(N'2020-05-21 15:17:34.0000000' AS DateTime2), NULL, 1, N'1263368318757113856', 2, N'改', NULL, N'PB_BarCodeType.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1263368319327539202', CAST(N'2020-05-21 15:17:34.0000000' AS DateTime2), NULL, 1, N'1263368318757113856', 2, N'删', NULL, N'PB_BarCodeType.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1263368516816343040', CAST(N'2020-05-21 15:18:21.0000000' AS DateTime2), N'1262941210671058944', 1, N'1262553786761613312', 1, N'条码管理', N'/PB/PB_BarCode/List', NULL, 1, N'qrcode', 11)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1263371155239079936', CAST(N'2020-05-21 15:28:50.0000000' AS DateTime2), N'Admin', 0, N'1262553786761613312', 1, N'货区管理', N'/PB/PB_StorArea/List', NULL, 1, N'gateway', 3)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1263371432251887616', CAST(N'2020-05-21 15:29:56.0000000' AS DateTime2), NULL, 1, N'1263371155239079936', 2, N'增', NULL, N'PB_StorArea.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1263371432251887617', CAST(N'2020-05-21 15:29:56.0000000' AS DateTime2), NULL, 1, N'1263371155239079936', 2, N'改', NULL, N'PB_StorArea.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1263371432251887618', CAST(N'2020-05-21 15:29:56.0000000' AS DateTime2), NULL, 1, N'1263371155239079936', 2, N'删', NULL, N'PB_StorArea.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1263395034003148800', CAST(N'2020-05-21 17:03:43.0000000' AS DateTime2), N'Admin', 0, N'1262553786761613312', 1, N'货位管理', N'/PB/PB_Location/List', NULL, 1, N'inbox', 4)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1263637992564592640', CAST(N'2020-05-22 09:09:09.0000000' AS DateTime2), N'Admin', 1, N'1262553786761613312', 1, N'设备管理', N'/PB/PB_Equipment/List', NULL, 0, N'mobile', 14)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1263666945958350848', CAST(N'2020-05-22 11:04:12.0000000' AS DateTime2), N'Admin', 0, NULL, 0, N'仓库作业', NULL, NULL, 1, N'appstore', 3)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1263667270278713344', CAST(N'2020-05-22 11:05:29.0000000' AS DateTime2), N'Admin', 0, N'1263666945958350848', 1, N'移库管理', N'/TD/TD_Move/List', NULL, 1, N'retweet', 3)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1264818587378388992', CAST(N'2020-05-25 15:20:25.0000000' AS DateTime2), N'Admin', 0, N'1263666945958350848', 1, N'入库管理', N'/TD/TD_InStorage/List', NULL, 1, N'login', 1)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1264818748754235392', CAST(N'2020-05-25 15:21:03.0000000' AS DateTime2), N'Admin', 0, NULL, 0, N'报表管理', NULL, NULL, 1, N'area-chart', 7)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1264819191542714368', CAST(N'2020-05-25 15:22:49.0000000' AS DateTime2), N'Admin', 0, N'1264818748754235392', 1, N'库存报表', N'/IT/IT_LocalMaterial/List', NULL, 1, N'heat-map', 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1264819336162316288', CAST(N'2020-05-25 15:23:23.0000000' AS DateTime2), N'Admin', 0, N'1264818748754235392', 1, N'库存明细', N'/IT/IT_LocalDetail/List', NULL, 1, N'bar-chart', 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1264819485643116544', CAST(N'2020-05-25 15:23:59.0000000' AS DateTime2), N'Admin', 0, N'1264818748754235392', 1, N'库存台帐', N'/IT/IT_RecordBook/List', NULL, 1, N'fund', 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1265093185428787200', CAST(N'2020-05-26 09:31:34.0000000' AS DateTime2), N'Admin', 0, N'1263666945958350848', 1, N'盘点管理', N'/TD/TD_Check/List', NULL, 1, N'calculator', 6)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1265817934853312512', CAST(N'2020-05-28 09:31:28.0000000' AS DateTime2), N'Admin', 0, N'1263666945958350848', 1, N'出库管理', N'/TD/TD_OutStorage/List', NULL, 1, N'logout', 2)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1265818342078287872', CAST(N'2020-05-28 09:33:05.0000000' AS DateTime2), NULL, 1, N'1263395034003148800', 2, N'增', NULL, N'PB_Location.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1265818342078287873', CAST(N'2020-05-28 09:33:05.0000000' AS DateTime2), NULL, 1, N'1263395034003148800', 2, N'改', NULL, N'PB_Location.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1265818342078287874', CAST(N'2020-05-28 09:33:05.0000000' AS DateTime2), NULL, 1, N'1263395034003148800', 2, N'删', NULL, N'PB_Location.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1267717170092052480', CAST(N'2020-06-02 15:18:21.0000000' AS DateTime2), N'Admin', 0, N'1263666945958350848', 1, N'报损管理', N'/TD/TD_Bad/List', NULL, 1, N'close-square', 4)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1268745471006871552', CAST(N'2020-06-05 11:24:27.0000000' AS DateTime2), N'Admin', 0, N'1263666945958350848', 1, N'调拨管理', N'/TD/TD_Allocate/List', NULL, 1, N'swap', 5)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1269830807669706752', CAST(N'2020-06-08 11:17:11.0000000' AS DateTime2), NULL, 1, N'1262554025874690048', 2, N'增', NULL, N'PB_Storage.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1269830807669706753', CAST(N'2020-06-08 11:17:11.0000000' AS DateTime2), NULL, 1, N'1262554025874690048', 2, N'改', NULL, N'PB_Storage.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1269830807669706754', CAST(N'2020-06-08 11:17:11.0000000' AS DateTime2), NULL, 1, N'1262554025874690048', 2, N'删', NULL, N'PB_Storage.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1269830894030426112', CAST(N'2020-06-08 11:17:32.0000000' AS DateTime2), NULL, 1, N'1263371155239079936', 2, N'增', NULL, N'PB_StorArea.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1269830894030426113', CAST(N'2020-06-08 11:17:32.0000000' AS DateTime2), NULL, 1, N'1263371155239079936', 2, N'改', NULL, N'PB_StorArea.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1269830894030426114', CAST(N'2020-06-08 11:17:32.0000000' AS DateTime2), NULL, 1, N'1263371155239079936', 2, N'删', NULL, N'PB_StorArea.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1269830934069252096', CAST(N'2020-06-08 11:17:41.0000000' AS DateTime2), NULL, 1, N'1263395034003148800', 2, N'增', NULL, N'PB_Location.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1269830934069252097', CAST(N'2020-06-08 11:17:41.0000000' AS DateTime2), NULL, 1, N'1263395034003148800', 2, N'改', NULL, N'PB_Location.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1269830934069252098', CAST(N'2020-06-08 11:17:41.0000000' AS DateTime2), NULL, 1, N'1263395034003148800', 2, N'删', NULL, N'PB_Location.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1269833062556897280', CAST(N'2020-06-08 11:26:09.0000000' AS DateTime2), NULL, 1, N'1263395034003148800', 2, N'增', NULL, N'PB_Location.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1269833062556897281', CAST(N'2020-06-08 11:26:09.0000000' AS DateTime2), NULL, 1, N'1263395034003148800', 2, N'改', NULL, N'PB_Location.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1269833062556897282', CAST(N'2020-06-08 11:26:09.0000000' AS DateTime2), NULL, 1, N'1263395034003148800', 2, N'删', NULL, N'PB_Location.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1269833149739700224', CAST(N'2020-06-08 11:26:29.0000000' AS DateTime2), NULL, 1, N'1262575099001704448', 2, N'', NULL, N'', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1269833291159048192', CAST(N'2020-06-08 11:27:03.0000000' AS DateTime2), NULL, 1, N'1263368318757113856', 2, N'增', NULL, N'PB_BarCodeType.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1269833291159048193', CAST(N'2020-06-08 11:27:03.0000000' AS DateTime2), NULL, 1, N'1263368318757113856', 2, N'改', NULL, N'PB_BarCodeType.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1269833291159048194', CAST(N'2020-06-08 11:27:03.0000000' AS DateTime2), NULL, 1, N'1263368318757113856', 2, N'删', NULL, N'PB_BarCodeType.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1269844636759756800', CAST(N'2020-06-08 12:12:08.0000000' AS DateTime2), NULL, 1, N'1182652266117599232', 2, N'增', NULL, N'Base_User.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1269844636759756801', CAST(N'2020-06-08 12:12:08.0000000' AS DateTime2), NULL, 1, N'1182652266117599232', 2, N'改', NULL, N'Base_User.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1269844636759756802', CAST(N'2020-06-08 12:12:08.0000000' AS DateTime2), NULL, 1, N'1182652266117599232', 2, N'删', NULL, N'Base_User.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1269853640227557376', CAST(N'2020-06-08 12:47:55.0000000' AS DateTime2), NULL, 0, N'1262552445217673216', 2, N'Base_Enum.Add', NULL, N'增', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1269853640227557377', CAST(N'2020-06-08 12:47:55.0000000' AS DateTime2), NULL, 0, N'1262552445217673216', 2, N'Base_Enum.Edit', NULL, N'改', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1269853640227557378', CAST(N'2020-06-08 12:47:55.0000000' AS DateTime2), NULL, 0, N'1262552445217673216', 2, N'Base_Enum.Delete', NULL, N'删', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1269853718489075712', CAST(N'2020-06-08 12:48:13.0000000' AS DateTime2), NULL, 0, N'1262556698871074816', 2, N'增', NULL, N'Base_Parameter.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1269853718489075713', CAST(N'2020-06-08 12:48:13.0000000' AS DateTime2), NULL, 0, N'1262556698871074816', 2, N'改', NULL, N'Base_Parameter.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1269853718489075714', CAST(N'2020-06-08 12:48:13.0000000' AS DateTime2), NULL, 0, N'1262556698871074816', 2, N'删', NULL, N'Base_Parameter.Delete', 1, NULL, 0)
GO
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1269854054255693824', CAST(N'2020-06-08 12:49:33.0000000' AS DateTime2), NULL, 1, N'1182652367447789568', 2, N'增', NULL, N'Base_Role.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1269854054255693825', CAST(N'2020-06-08 12:49:33.0000000' AS DateTime2), NULL, 1, N'1182652367447789568', 2, N'改', NULL, N'Base_Role.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1269854054255693826', CAST(N'2020-06-08 12:49:33.0000000' AS DateTime2), NULL, 1, N'1182652367447789568', 2, N'删', NULL, N'Base_Role.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1269854080503648256', CAST(N'2020-06-08 12:49:40.0000000' AS DateTime2), NULL, 1, N'1182652367447789568', 2, N'增', NULL, N'Base_Role.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1269854080503648257', CAST(N'2020-06-08 12:49:40.0000000' AS DateTime2), NULL, 1, N'1182652367447789568', 2, N'改', NULL, N'Base_Role.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1269854080503648258', CAST(N'2020-06-08 12:49:40.0000000' AS DateTime2), NULL, 1, N'1182652367447789568', 2, N'删', NULL, N'Base_Role.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1275630906790383616', CAST(N'2020-06-24 11:24:42.0000000' AS DateTime2), NULL, 1, N'1262922914915684352', 2, N'增', NULL, N'PB_Customer.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1275630906790383617', CAST(N'2020-06-24 11:24:42.0000000' AS DateTime2), NULL, 1, N'1262922914915684352', 2, N'改', NULL, N'PB_Customer.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1275630906790383618', CAST(N'2020-06-24 11:24:42.0000000' AS DateTime2), NULL, 1, N'1262922914915684352', 2, N'删', NULL, N'PB_Customer.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1275631260353433600', CAST(N'2020-06-24 11:26:07.0000000' AS DateTime2), NULL, 1, N'1263009829799071744', 2, N'增', NULL, N'PB_Supplier.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1275631260353433601', CAST(N'2020-06-24 11:26:07.0000000' AS DateTime2), NULL, 1, N'1263009829799071744', 2, N'改', NULL, N'PB_Supplier.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1275631260353433602', CAST(N'2020-06-24 11:26:07.0000000' AS DateTime2), NULL, 1, N'1263009829799071744', 2, N'删', NULL, N'PB_Supplier.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1275631469582094336', CAST(N'2020-06-24 11:26:57.0000000' AS DateTime2), NULL, 1, N'1263271264097669120', 2, N'增', NULL, N'PB_MaterialType.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1275631469582094337', CAST(N'2020-06-24 11:26:57.0000000' AS DateTime2), NULL, 1, N'1263271264097669120', 2, N'改', NULL, N'PB_MaterialType.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1275631469582094338', CAST(N'2020-06-24 11:26:57.0000000' AS DateTime2), NULL, 1, N'1263271264097669120', 2, N'删', NULL, N'PB_MaterialType.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1275631660213211136', CAST(N'2020-06-24 11:27:42.0000000' AS DateTime2), NULL, 1, N'1263347595661545472', 2, N'增', NULL, N'PB_Material.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1275631660213211137', CAST(N'2020-06-24 11:27:42.0000000' AS DateTime2), NULL, 1, N'1263347595661545472', 2, N'改', NULL, N'PB_Material.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1275631660213211138', CAST(N'2020-06-24 11:27:42.0000000' AS DateTime2), NULL, 1, N'1263347595661545472', 2, N'删', NULL, N'PB_Material.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1275631903717724160', CAST(N'2020-06-24 11:28:40.0000000' AS DateTime2), NULL, 1, N'1262575099001704448', 2, N'增', NULL, N'PB_Measure.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1275631903717724161', CAST(N'2020-06-24 11:28:40.0000000' AS DateTime2), NULL, 1, N'1262575099001704448', 2, N'改', NULL, N'PB_Measure.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1275631903717724162', CAST(N'2020-06-24 11:28:40.0000000' AS DateTime2), NULL, 1, N'1262575099001704448', 2, N'删', NULL, N'PB_Measure.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1275632133192290304', CAST(N'2020-06-24 11:29:35.0000000' AS DateTime2), NULL, 0, N'1263368516816343040', 2, N'增', NULL, N'PB_BarCode.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1275632133192290305', CAST(N'2020-06-24 11:29:35.0000000' AS DateTime2), NULL, 0, N'1263368516816343040', 2, N'改', NULL, N'PB_BarCode.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1275632133192290306', CAST(N'2020-06-24 11:29:35.0000000' AS DateTime2), NULL, 0, N'1263368516816343040', 2, N'删', NULL, N'PB_BarCode.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1275632328638468096', CAST(N'2020-06-24 11:30:21.0000000' AS DateTime2), NULL, 1, N'1262928230298423296', 2, N'增', NULL, N'PB_TrayType.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1275632328638468097', CAST(N'2020-06-24 11:30:21.0000000' AS DateTime2), NULL, 1, N'1262928230298423296', 2, N'改', NULL, N'PB_TrayType.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1275632328638468098', CAST(N'2020-06-24 11:30:21.0000000' AS DateTime2), NULL, 1, N'1262928230298423296', 2, N'删', NULL, N'PB_TrayType.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1275667161926340608', CAST(N'2020-06-24 13:48:46.0000000' AS DateTime2), NULL, 1, N'1262928411609796608', 2, N'增', NULL, N'PB_Tray.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1275667161926340609', CAST(N'2020-06-24 13:48:46.0000000' AS DateTime2), NULL, 1, N'1262928411609796608', 2, N'改', NULL, N'PB_Tray.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1275667161926340610', CAST(N'2020-06-24 13:48:46.0000000' AS DateTime2), NULL, 1, N'1262928411609796608', 2, N'删', NULL, N'PB_Tray.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277422688519852032', CAST(N'2020-06-29 10:04:36.0000000' AS DateTime2), N'1269896267287236608', 0, N'1264818748754235392', 1, N'入库明细', N'/Report/InStorage/Report', NULL, 1, N'ordered-list', 4)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277431617714917376', CAST(N'2020-06-29 10:40:05.0000000' AS DateTime2), N'1269896267287236608', 0, N'1264818748754235392', 1, N'出库明细', N'/Report/OutStorage/Report', NULL, 1, N'ordered-list', 5)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277532469750403072', CAST(N'2020-06-29 17:20:50.0000000' AS DateTime2), NULL, 1, N'1264818587378388992', 2, N'增', NULL, N'TD_InStorage.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277532469750403073', CAST(N'2020-06-29 17:20:50.0000000' AS DateTime2), NULL, 1, N'1264818587378388992', 2, N'改', NULL, N'TD_InStorage.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277532469750403074', CAST(N'2020-06-29 17:20:50.0000000' AS DateTime2), NULL, 1, N'1264818587378388992', 2, N'删', NULL, N'TD_InStorage.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277532672414978048', CAST(N'2020-06-29 17:21:39.0000000' AS DateTime2), NULL, 1, N'1265817934853312512', 2, N'增', NULL, N'TD_OutStorage.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277532672414978049', CAST(N'2020-06-29 17:21:39.0000000' AS DateTime2), NULL, 1, N'1265817934853312512', 2, N'改', NULL, N'TD_OutStorage.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277532672414978050', CAST(N'2020-06-29 17:21:39.0000000' AS DateTime2), NULL, 1, N'1265817934853312512', 2, N'删', NULL, N'TD_OutStorage.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277532925318926336', CAST(N'2020-06-29 17:22:39.0000000' AS DateTime2), NULL, 1, N'1265093185428787200', 2, N'增', NULL, N'TD_Check.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277532925318926337', CAST(N'2020-06-29 17:22:39.0000000' AS DateTime2), NULL, 1, N'1265093185428787200', 2, N'改', NULL, N'TD_Check.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277532925318926338', CAST(N'2020-06-29 17:22:39.0000000' AS DateTime2), NULL, 1, N'1265093185428787200', 2, N'删', NULL, N'TD_Check.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277533121314557952', CAST(N'2020-06-29 17:23:26.0000000' AS DateTime2), NULL, 1, N'1268745471006871552', 2, N'增', NULL, N'TD_Allocate.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277533121314557953', CAST(N'2020-06-29 17:23:26.0000000' AS DateTime2), NULL, 1, N'1268745471006871552', 2, N'改', NULL, N'TD_Allocate.Eidt', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277533121314557954', CAST(N'2020-06-29 17:23:26.0000000' AS DateTime2), NULL, 1, N'1268745471006871552', 2, N'删', NULL, N'TD_Allocate.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277533297932505088', CAST(N'2020-06-29 17:24:08.0000000' AS DateTime2), NULL, 1, N'1267717170092052480', 2, N'增', NULL, N'TD_Bad.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277533297932505089', CAST(N'2020-06-29 17:24:08.0000000' AS DateTime2), NULL, 1, N'1267717170092052480', 2, N'改', NULL, N'TD_Bad.Eidt', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277533297932505090', CAST(N'2020-06-29 17:24:08.0000000' AS DateTime2), NULL, 1, N'1267717170092052480', 2, N'删', NULL, N'TD_Bad.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277533458817617920', CAST(N'2020-06-29 17:24:46.0000000' AS DateTime2), NULL, 1, N'1263667270278713344', 2, N'增', NULL, N'TD_Move.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277533458817617921', CAST(N'2020-06-29 17:24:46.0000000' AS DateTime2), NULL, 1, N'1263667270278713344', 2, N'改', NULL, N'TD_Move.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277533458817617922', CAST(N'2020-06-29 17:24:46.0000000' AS DateTime2), NULL, 1, N'1263667270278713344', 2, N'删', NULL, N'TD_Move.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277533650639917056', CAST(N'2020-06-29 17:25:32.0000000' AS DateTime2), NULL, 1, N'1262922914915684352', 2, N'增', NULL, N'PB_Customer.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277533650639917057', CAST(N'2020-06-29 17:25:32.0000000' AS DateTime2), NULL, 1, N'1262922914915684352', 2, N'改', NULL, N'PB_Customer.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277533650639917058', CAST(N'2020-06-29 17:25:32.0000000' AS DateTime2), NULL, 1, N'1262922914915684352', 2, N'删', NULL, N'PB_Customer.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277533675898015744', CAST(N'2020-06-29 17:25:38.0000000' AS DateTime2), NULL, 1, N'1263009829799071744', 2, N'增', NULL, N'PB_Supplier.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277533675898015745', CAST(N'2020-06-29 17:25:38.0000000' AS DateTime2), NULL, 1, N'1263009829799071744', 2, N'改', NULL, N'PB_Supplier.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277533675898015746', CAST(N'2020-06-29 17:25:38.0000000' AS DateTime2), NULL, 1, N'1263009829799071744', 2, N'删', NULL, N'PB_Supplier.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277533711419576320', CAST(N'2020-06-29 17:25:46.0000000' AS DateTime2), NULL, 1, N'1263347595661545472', 2, N'增', NULL, N'PB_Material.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277533711419576321', CAST(N'2020-06-29 17:25:46.0000000' AS DateTime2), NULL, 1, N'1263347595661545472', 2, N'改', NULL, N'PB_Material.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277533711419576322', CAST(N'2020-06-29 17:25:46.0000000' AS DateTime2), NULL, 1, N'1263347595661545472', 2, N'删', NULL, N'PB_Material.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277535944697712640', CAST(N'2020-06-29 17:34:39.0000000' AS DateTime2), NULL, 1, N'1262554025874690048', 2, N'增', NULL, N'PB_Storage.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277535944697712641', CAST(N'2020-06-29 17:34:39.0000000' AS DateTime2), NULL, 1, N'1262554025874690048', 2, N'改', NULL, N'PB_Storage.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277535944697712642', CAST(N'2020-06-29 17:34:39.0000000' AS DateTime2), NULL, 1, N'1262554025874690048', 2, N'删', NULL, N'PB_Storage.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277535944697712643', CAST(N'2020-06-29 17:34:39.0000000' AS DateTime2), NULL, 1, N'1262554025874690048', 2, N'巷道', NULL, N'PB_Storage.Laneway', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277535944697712644', CAST(N'2020-06-29 17:34:39.0000000' AS DateTime2), NULL, 1, N'1262554025874690048', 2, N'货架', NULL, N'Laneway.Rack', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277763256412278784', CAST(N'2020-06-30 08:37:54.0000000' AS DateTime2), NULL, 0, N'1262554025874690048', 2, N'增', NULL, N'PB_Storage.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277763256416473088', CAST(N'2020-06-30 08:37:54.0000000' AS DateTime2), NULL, 0, N'1262554025874690048', 2, N'改', NULL, N'PB_Storage.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277763256416473089', CAST(N'2020-06-30 08:37:54.0000000' AS DateTime2), NULL, 0, N'1262554025874690048', 2, N'删', NULL, N'PB_Storage.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277763256416473090', CAST(N'2020-06-30 08:37:54.0000000' AS DateTime2), NULL, 0, N'1262554025874690048', 2, N'巷道', NULL, N'PB_Storage.Laneway', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277763256416473091', CAST(N'2020-06-30 08:37:54.0000000' AS DateTime2), NULL, 0, N'1262554025874690048', 2, N'货架', NULL, N'PB_Storage.Rack', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277763256416473092', CAST(N'2020-06-30 08:37:54.0000000' AS DateTime2), NULL, 0, N'1262554025874690048', 2, N'配置', NULL, N'PB_Storage.Config', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277768417000034304', CAST(N'2020-06-30 08:58:25.0000000' AS DateTime2), NULL, 1, N'1263395034003148800', 2, N'增', NULL, N'PB_Location.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277768417000034305', CAST(N'2020-06-30 08:58:25.0000000' AS DateTime2), NULL, 1, N'1263395034003148800', 2, N'改', NULL, N'PB_Location.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277768417000034306', CAST(N'2020-06-30 08:58:25.0000000' AS DateTime2), NULL, 1, N'1263395034003148800', 2, N'删', NULL, N'PB_Location.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277769428984926208', CAST(N'2020-06-30 09:02:26.0000000' AS DateTime2), NULL, 0, N'1263395034003148800', 2, N'增', NULL, N'PB_Location.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277769428984926209', CAST(N'2020-06-30 09:02:26.0000000' AS DateTime2), NULL, 0, N'1263395034003148800', 2, N'改', NULL, N'PB_Location.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277769428984926210', CAST(N'2020-06-30 09:02:26.0000000' AS DateTime2), NULL, 0, N'1263395034003148800', 2, N'删', NULL, N'PB_Location.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277769428984926211', CAST(N'2020-06-30 09:02:26.0000000' AS DateTime2), NULL, 0, N'1263395034003148800', 2, N'导入货位', NULL, N'PB_Location.Leading', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277771896309420032', CAST(N'2020-06-30 09:12:14.0000000' AS DateTime2), NULL, 1, N'1262922914915684352', 2, N'增', NULL, N'PB_Customer.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277771896309420033', CAST(N'2020-06-30 09:12:14.0000000' AS DateTime2), NULL, 1, N'1262922914915684352', 2, N'改', NULL, N'PB_Customer.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277771896309420034', CAST(N'2020-06-30 09:12:14.0000000' AS DateTime2), NULL, 1, N'1262922914915684352', 2, N'删', NULL, N'PB_Customer.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277771896309420035', CAST(N'2020-06-30 09:12:14.0000000' AS DateTime2), NULL, 1, N'1262922914915684352', 2, N'客户地址', NULL, N'PB_Customer.AddressList', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277772033597378560', CAST(N'2020-06-30 09:12:47.0000000' AS DateTime2), NULL, 1, N'1263009829799071744', 2, N'增', NULL, N'PB_Supplier.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277772033597378561', CAST(N'2020-06-30 09:12:47.0000000' AS DateTime2), NULL, 1, N'1263009829799071744', 2, N'改', NULL, N'PB_Supplier.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277772033597378562', CAST(N'2020-06-30 09:12:47.0000000' AS DateTime2), NULL, 1, N'1263009829799071744', 2, N'删', NULL, N'PB_Supplier.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277772033597378563', CAST(N'2020-06-30 09:12:47.0000000' AS DateTime2), NULL, 1, N'1263009829799071744', 2, N'供应商地址', NULL, N'PB_Supplier.AddressList', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277774855038570496', CAST(N'2020-06-30 09:24:00.0000000' AS DateTime2), NULL, 1, N'1263368318757113856', 2, N'增', NULL, N'PB_BarCodeType.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277774855038570497', CAST(N'2020-06-30 09:24:00.0000000' AS DateTime2), NULL, 1, N'1263368318757113856', 2, N'改', NULL, N'PB_BarCodeType.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277774855038570498', CAST(N'2020-06-30 09:24:00.0000000' AS DateTime2), NULL, 1, N'1263368318757113856', 2, N'删', NULL, N'PB_BarCodeType.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277774855038570499', CAST(N'2020-06-30 09:24:00.0000000' AS DateTime2), NULL, 1, N'1263368318757113856', 2, N'条码规则', NULL, N'PB_BarCodeType.CodeRule', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277777564420542464', CAST(N'2020-06-30 09:34:45.0000000' AS DateTime2), NULL, 1, N'1262928230298423296', 2, N'增', NULL, N'PB_TrayType.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277777564420542465', CAST(N'2020-06-30 09:34:45.0000000' AS DateTime2), NULL, 1, N'1262928230298423296', 2, N'改', NULL, N'PB_TrayType.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277777564420542466', CAST(N'2020-06-30 09:34:45.0000000' AS DateTime2), NULL, 1, N'1262928230298423296', 2, N'删', NULL, N'PB_TrayType.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277777564420542467', CAST(N'2020-06-30 09:34:45.0000000' AS DateTime2), NULL, 1, N'1262928230298423296', 2, N'托盘分区', NULL, N'PB_TrayType.ZoneList', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277777564420542468', CAST(N'2020-06-30 09:34:45.0000000' AS DateTime2), NULL, 1, N'1262928230298423296', 2, N'关联物料', NULL, N'PB_TrayType.MaterialList', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277777564420542469', CAST(N'2020-06-30 09:34:45.0000000' AS DateTime2), NULL, 1, N'1262928230298423296', 2, N'关联货位', NULL, N'PB_TrayType.LocationList', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277778496889819136', CAST(N'2020-06-30 09:38:28.0000000' AS DateTime2), NULL, 1, N'1262928411609796608', 2, N'增', NULL, N'PB_Tray.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277778496889819137', CAST(N'2020-06-30 09:38:28.0000000' AS DateTime2), NULL, 1, N'1262928411609796608', 2, N'改', NULL, N'PB_Tray.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277778496889819138', CAST(N'2020-06-30 09:38:28.0000000' AS DateTime2), NULL, 1, N'1262928411609796608', 2, N'删', NULL, N'PB_Tray.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277778496889819139', CAST(N'2020-06-30 09:38:28.0000000' AS DateTime2), NULL, 1, N'1262928411609796608', 2, N'托盘状态', NULL, N'PB_Tray.Status', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277784297289289728', CAST(N'2020-06-30 10:01:31.0000000' AS DateTime2), NULL, 1, N'1264818587378388992', 2, N'增', NULL, N'TD_InStorage.Add', 1, NULL, 0)
GO
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277784297289289729', CAST(N'2020-06-30 10:01:31.0000000' AS DateTime2), NULL, 1, N'1264818587378388992', 2, N'改', NULL, N'TD_InStorage.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277784297289289730', CAST(N'2020-06-30 10:01:31.0000000' AS DateTime2), NULL, 1, N'1264818587378388992', 2, N'删', NULL, N'TD_InStorage.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277784297289289731', CAST(N'2020-06-30 10:01:31.0000000' AS DateTime2), NULL, 1, N'1264818587378388992', 2, N'空托盘', NULL, N'TD_InStorage.Tray', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277789944756047872', CAST(N'2020-06-30 10:23:57.0000000' AS DateTime2), NULL, 0, N'1264818587378388992', 2, N'增', NULL, N'TD_InStorage.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277789944756047873', CAST(N'2020-06-30 10:23:57.0000000' AS DateTime2), NULL, 0, N'1264818587378388992', 2, N'改', NULL, N'TD_InStorage.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277789944756047874', CAST(N'2020-06-30 10:23:57.0000000' AS DateTime2), NULL, 0, N'1264818587378388992', 2, N'删', NULL, N'TD_InStorage.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277789944756047875', CAST(N'2020-06-30 10:23:57.0000000' AS DateTime2), NULL, 0, N'1264818587378388992', 2, N'空托盘', NULL, N'TD_InStorage.Tray', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277789944756047876', CAST(N'2020-06-30 10:23:57.0000000' AS DateTime2), NULL, 0, N'1264818587378388992', 2, N'审核', NULL, N'TD_InStorage.Auditing', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277790037492109312', CAST(N'2020-06-30 10:24:19.0000000' AS DateTime2), NULL, 1, N'1265817934853312512', 2, N'增', NULL, N'TD_OutStorage.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277790037492109313', CAST(N'2020-06-30 10:24:19.0000000' AS DateTime2), NULL, 1, N'1265817934853312512', 2, N'改', NULL, N'TD_OutStorage.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277790037492109314', CAST(N'2020-06-30 10:24:19.0000000' AS DateTime2), NULL, 1, N'1265817934853312512', 2, N'删', NULL, N'TD_OutStorage.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277790037492109315', CAST(N'2020-06-30 10:24:19.0000000' AS DateTime2), NULL, 1, N'1265817934853312512', 2, N'审核', NULL, N'TD_OutStorage.Auditing', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277792686522241024', CAST(N'2020-06-30 10:34:51.0000000' AS DateTime2), NULL, 0, N'1265817934853312512', 2, N'增', NULL, N'TD_OutStorage.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277792686522241025', CAST(N'2020-06-30 10:34:51.0000000' AS DateTime2), NULL, 0, N'1265817934853312512', 2, N'改', NULL, N'TD_OutStorage.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277792686522241026', CAST(N'2020-06-30 10:34:51.0000000' AS DateTime2), NULL, 0, N'1265817934853312512', 2, N'删', NULL, N'TD_OutStorage.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277792686522241027', CAST(N'2020-06-30 10:34:51.0000000' AS DateTime2), NULL, 0, N'1265817934853312512', 2, N'审核', NULL, N'TD_OutStorage.Auditing', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277792686522241028', CAST(N'2020-06-30 10:34:51.0000000' AS DateTime2), NULL, 0, N'1265817934853312512', 2, N'空托盘', NULL, N'TD_OutStorage.Tray', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277800839968198656', CAST(N'2020-06-30 11:07:15.0000000' AS DateTime2), NULL, 0, N'1263667270278713344', 2, N'增', NULL, N'TD_Move.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277800839968198657', CAST(N'2020-06-30 11:07:15.0000000' AS DateTime2), NULL, 0, N'1263667270278713344', 2, N'改', NULL, N'TD_Move.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277800839968198658', CAST(N'2020-06-30 11:07:15.0000000' AS DateTime2), NULL, 0, N'1263667270278713344', 2, N'删', NULL, N'TD_Move.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277800839968198659', CAST(N'2020-06-30 11:07:15.0000000' AS DateTime2), NULL, 0, N'1263667270278713344', 2, N'审核', NULL, N'TD_Move.Auditing', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277800966913003520', CAST(N'2020-06-30 11:07:45.0000000' AS DateTime2), NULL, 1, N'1267717170092052480', 2, N'增', NULL, N'TD_Bad.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277800966913003521', CAST(N'2020-06-30 11:07:45.0000000' AS DateTime2), NULL, 1, N'1267717170092052480', 2, N'改', NULL, N'TD_Bad.Eidt', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277800966913003522', CAST(N'2020-06-30 11:07:45.0000000' AS DateTime2), NULL, 1, N'1267717170092052480', 2, N'删', NULL, N'TD_Bad.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277800966913003523', CAST(N'2020-06-30 11:07:45.0000000' AS DateTime2), NULL, 1, N'1267717170092052480', 2, N'审核', NULL, N'TD_Bad.Auditing', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277801097083228160', CAST(N'2020-06-30 11:08:16.0000000' AS DateTime2), NULL, 1, N'1268745471006871552', 2, N'增', NULL, N'TD_Allocate.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277801097083228161', CAST(N'2020-06-30 11:08:16.0000000' AS DateTime2), NULL, 1, N'1268745471006871552', 2, N'改', NULL, N'TD_Allocate.Eidt', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277801097083228162', CAST(N'2020-06-30 11:08:16.0000000' AS DateTime2), NULL, 1, N'1268745471006871552', 2, N'删', NULL, N'TD_Allocate.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277801097083228163', CAST(N'2020-06-30 11:08:16.0000000' AS DateTime2), NULL, 1, N'1268745471006871552', 2, N'审核', NULL, N'TD_Allocate.Auditing', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277801221343678464', CAST(N'2020-06-30 11:08:46.0000000' AS DateTime2), NULL, 1, N'1265093185428787200', 2, N'增', NULL, N'TD_Check.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277801221343678465', CAST(N'2020-06-30 11:08:46.0000000' AS DateTime2), NULL, 1, N'1265093185428787200', 2, N'改', NULL, N'TD_Check.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277801221343678466', CAST(N'2020-06-30 11:08:46.0000000' AS DateTime2), NULL, 1, N'1265093185428787200', 2, N'删', NULL, N'TD_Check.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277801221343678467', CAST(N'2020-06-30 11:08:46.0000000' AS DateTime2), NULL, 1, N'1265093185428787200', 2, N'审核', NULL, N'TD_Check.Auditing', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277805864069107712', CAST(N'2020-06-30 11:27:13.0000000' AS DateTime2), NULL, 0, N'1265093185428787200', 2, N'增', NULL, N'TD_Check.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277805864069107713', CAST(N'2020-06-30 11:27:13.0000000' AS DateTime2), NULL, 0, N'1265093185428787200', 2, N'改', NULL, N'TD_Check.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277805864069107714', CAST(N'2020-06-30 11:27:13.0000000' AS DateTime2), NULL, 0, N'1265093185428787200', 2, N'删', NULL, N'TD_Check.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277805864069107715', CAST(N'2020-06-30 11:27:13.0000000' AS DateTime2), NULL, 0, N'1265093185428787200', 2, N'审核', NULL, N'TD_Check.Auditing', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277805864069107716', CAST(N'2020-06-30 11:27:13.0000000' AS DateTime2), NULL, 0, N'1265093185428787200', 2, N'盘差', NULL, N'TD_Check.Check', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277805864069107717', CAST(N'2020-06-30 11:27:13.0000000' AS DateTime2), NULL, 0, N'1265093185428787200', 2, N'复核', NULL, N'TD_Check.ReCheck', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277874050336559104', CAST(N'2020-06-30 15:58:10.0000000' AS DateTime2), NULL, 0, N'1267717170092052480', 2, N'增', NULL, N'TD_Bad.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277874050336559105', CAST(N'2020-06-30 15:58:10.0000000' AS DateTime2), NULL, 0, N'1267717170092052480', 2, N'改', NULL, N'TD_Bad.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277874050336559106', CAST(N'2020-06-30 15:58:10.0000000' AS DateTime2), NULL, 0, N'1267717170092052480', 2, N'删', NULL, N'TD_Bad.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277874050336559107', CAST(N'2020-06-30 15:58:10.0000000' AS DateTime2), NULL, 0, N'1267717170092052480', 2, N'审核', NULL, N'TD_Bad.Auditing', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277875765320355840', CAST(N'2020-06-30 16:04:58.0000000' AS DateTime2), NULL, 0, N'1268745471006871552', 2, N'增', NULL, N'TD_Allocate.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277875765320355841', CAST(N'2020-06-30 16:04:58.0000000' AS DateTime2), NULL, 0, N'1268745471006871552', 2, N'改', NULL, N'TD_Allocate.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277875765320355842', CAST(N'2020-06-30 16:04:58.0000000' AS DateTime2), NULL, 0, N'1268745471006871552', 2, N'删', NULL, N'TD_Allocate.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1277875765320355843', CAST(N'2020-06-30 16:04:58.0000000' AS DateTime2), NULL, 0, N'1268745471006871552', 2, N'审核', NULL, N'TD_Allocate.Auditing', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1278217036945690624', CAST(N'2020-07-01 14:41:04.0000000' AS DateTime2), NULL, 0, N'1263371155239079936', 2, N'增', NULL, N'PB_StorArea.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1278217036949884928', CAST(N'2020-07-01 14:41:04.0000000' AS DateTime2), NULL, 0, N'1263371155239079936', 2, N'改', NULL, N'PB_StorArea.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1278217036949884929', CAST(N'2020-07-01 14:41:04.0000000' AS DateTime2), NULL, 0, N'1263371155239079936', 2, N'删', NULL, N'PB_StorArea.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1278217036949884930', CAST(N'2020-07-01 14:41:04.0000000' AS DateTime2), NULL, 0, N'1263371155239079936', 2, N'关联物料', NULL, N'PB_StorArea.MaterialList', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1278882800153399296', CAST(N'2020-07-03 10:46:34.0000000' AS DateTime2), N'Admin', 0, N'1264818748754235392', 1, N'物料统计', N'/Report/MaterialSummary/Report', NULL, 1, N'ordered-list', 6)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1280406830014533632', CAST(N'2020-07-07 15:42:31.0000000' AS DateTime2), N'1269896267287236608', 0, NULL, 0, N'业务操作', NULL, NULL, 1, N'audit', 4)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1280407972886876160', CAST(N'2020-07-07 15:47:04.0000000' AS DateTime2), N'1269896267287236608', 0, N'1280406830014533632', 1, N'收货管理', N'/TD/TD_Receiving/List', NULL, 1, N'select', 1)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1280408088234430464', CAST(N'2020-07-07 15:47:31.0000000' AS DateTime2), N'1269896267287236608', 0, N'1280406830014533632', 1, N'发货管理', N'/TD/TD_Send/List', NULL, 1, N'export', 2)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1281114864143568896', CAST(N'2020-07-09 14:36:00.0000000' AS DateTime2), NULL, 1, N'1280407972886876160', 2, N'新建', NULL, N'TD_Receiving.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1281114864143568897', CAST(N'2020-07-09 14:36:00.0000000' AS DateTime2), NULL, 1, N'1280407972886876160', 2, N'编辑', NULL, N'TD_Receiving.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1281114864143568898', CAST(N'2020-07-09 14:36:00.0000000' AS DateTime2), NULL, 1, N'1280407972886876160', 2, N'删除', NULL, N'TD_Receiving.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1281114864143568899', CAST(N'2020-07-09 14:36:00.0000000' AS DateTime2), NULL, 1, N'1280407972886876160', 2, N'确认', NULL, N'TD_Receiving.Confirm', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1281114864143568900', CAST(N'2020-07-09 14:36:00.0000000' AS DateTime2), NULL, 1, N'1280407972886876160', 2, N'审批', NULL, N'TD_Receiving.Auditing', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1281120622100877312', CAST(N'2020-07-09 14:58:53.0000000' AS DateTime2), NULL, 1, N'1280407972886876160', 2, N'新建', NULL, N'TD_Receiving.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1281120622100877313', CAST(N'2020-07-09 14:58:53.0000000' AS DateTime2), NULL, 1, N'1280407972886876160', 2, N'编辑', NULL, N'TD_Receiving.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1281120622100877314', CAST(N'2020-07-09 14:58:53.0000000' AS DateTime2), NULL, 1, N'1280407972886876160', 2, N'删除', NULL, N'TD_Receiving.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1281120622100877315', CAST(N'2020-07-09 14:58:53.0000000' AS DateTime2), NULL, 1, N'1280407972886876160', 2, N'确认', NULL, N'TD_Receiving.Confirm', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1281120622100877316', CAST(N'2020-07-09 14:58:53.0000000' AS DateTime2), NULL, 1, N'1280407972886876160', 2, N'审批', NULL, N'TD_Receiving.Auditing', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1281120622100877317', CAST(N'2020-07-09 14:58:53.0000000' AS DateTime2), NULL, 1, N'1280407972886876160', 2, N'入库', NULL, N'TD_Receiving.InStorage', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1281513078063632384', CAST(N'2020-07-10 16:58:21.0000000' AS DateTime2), NULL, 1, N'1263368318757113856', 2, N'增', NULL, N'PB_BarCodeType.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1281513078063632385', CAST(N'2020-07-10 16:58:21.0000000' AS DateTime2), NULL, 1, N'1263368318757113856', 2, N'改', NULL, N'PB_BarCodeType.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1281513078063632386', CAST(N'2020-07-10 16:58:21.0000000' AS DateTime2), NULL, 1, N'1263368318757113856', 2, N'删', NULL, N'PB_BarCodeType.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1281513078063632387', CAST(N'2020-07-10 16:58:21.0000000' AS DateTime2), NULL, 1, N'1263368318757113856', 2, N'条码规则', NULL, N'PB_BarCodeType.CodeRule', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1281513125501210624', CAST(N'2020-07-10 16:58:33.0000000' AS DateTime2), NULL, 0, N'1182652266117599232', 2, N'增', NULL, N'Base_User.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1281513125501210625', CAST(N'2020-07-10 16:58:33.0000000' AS DateTime2), NULL, 0, N'1182652266117599232', 2, N'改', NULL, N'Base_User.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1281513125501210626', CAST(N'2020-07-10 16:58:33.0000000' AS DateTime2), NULL, 0, N'1182652266117599232', 2, N'删', NULL, N'Base_User.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1281513195655139328', CAST(N'2020-07-10 16:58:49.0000000' AS DateTime2), NULL, 0, N'1182652367447789568', 2, N'增', NULL, N'Base_Role.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1281513195655139329', CAST(N'2020-07-10 16:58:49.0000000' AS DateTime2), NULL, 0, N'1182652367447789568', 2, N'改', NULL, N'Base_Role.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1281513195655139330', CAST(N'2020-07-10 16:58:49.0000000' AS DateTime2), NULL, 0, N'1182652367447789568', 2, N'删', NULL, N'Base_Role.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1281513255243616256', CAST(N'2020-07-10 16:59:04.0000000' AS DateTime2), NULL, 0, N'1182652433302556672', 2, N'增', NULL, N'Base_Department.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1281513255243616257', CAST(N'2020-07-10 16:59:04.0000000' AS DateTime2), NULL, 0, N'1182652433302556672', 2, N'改', NULL, N'Base_Department.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1281513255243616258', CAST(N'2020-07-10 16:59:04.0000000' AS DateTime2), NULL, 0, N'1182652433302556672', 2, N'删', NULL, N'Base_Department.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1281513335262547968', CAST(N'2020-07-10 16:59:23.0000000' AS DateTime2), NULL, 0, N'1263368318757113856', 2, N'增', NULL, N'PB_BarCodeType.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1281513335262547969', CAST(N'2020-07-10 16:59:23.0000000' AS DateTime2), NULL, 0, N'1263368318757113856', 2, N'改', NULL, N'PB_BarCodeType.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1281513335262547970', CAST(N'2020-07-10 16:59:23.0000000' AS DateTime2), NULL, 0, N'1263368318757113856', 2, N'删', NULL, N'PB_BarCodeType.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1281513335262547971', CAST(N'2020-07-10 16:59:23.0000000' AS DateTime2), NULL, 0, N'1263368318757113856', 2, N'条码规则', NULL, N'PB_BarCodeType.CodeRule', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1282483071345496064', CAST(N'2020-07-13 09:12:46.0000000' AS DateTime2), NULL, 0, N'1280407972886876160', 2, N'新建', NULL, N'TD_Receiving.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1282483071345496065', CAST(N'2020-07-13 09:12:46.0000000' AS DateTime2), NULL, 0, N'1280407972886876160', 2, N'编辑', NULL, N'TD_Receiving.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1282483071345496066', CAST(N'2020-07-13 09:12:46.0000000' AS DateTime2), NULL, 0, N'1280407972886876160', 2, N'删除', NULL, N'TD_Receiving.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1282483071345496067', CAST(N'2020-07-13 09:12:46.0000000' AS DateTime2), NULL, 0, N'1280407972886876160', 2, N'确认', NULL, N'TD_Receiving.Confirm', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1282483071345496068', CAST(N'2020-07-13 09:12:46.0000000' AS DateTime2), NULL, 0, N'1280407972886876160', 2, N'审批', NULL, N'TD_Receiving.Auditing', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1282483071345496069', CAST(N'2020-07-13 09:12:46.0000000' AS DateTime2), NULL, 0, N'1280407972886876160', 2, N'入库', NULL, N'TD_Receiving.InStorage', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1282514726487592960', CAST(N'2020-07-13 11:18:33.0000000' AS DateTime2), NULL, 1, N'1280408088234430464', 2, N'增', NULL, N'Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1282514726491787264', CAST(N'2020-07-13 11:18:33.0000000' AS DateTime2), NULL, 1, N'1280408088234430464', 2, N'改', NULL, N'Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1282514726491787265', CAST(N'2020-07-13 11:18:33.0000000' AS DateTime2), NULL, 1, N'1280408088234430464', 2, N'删', NULL, N'Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1282514726491787266', CAST(N'2020-07-13 11:18:33.0000000' AS DateTime2), NULL, 1, N'1280408088234430464', 2, N'权限名', NULL, N'权限值', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1282515015819071488', CAST(N'2020-07-13 11:19:42.0000000' AS DateTime2), NULL, 1, N'1280408088234430464', 2, N'增', NULL, N'Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1282515015819071489', CAST(N'2020-07-13 11:19:42.0000000' AS DateTime2), NULL, 1, N'1280408088234430464', 2, N'改', NULL, N'Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1282515015819071490', CAST(N'2020-07-13 11:19:42.0000000' AS DateTime2), NULL, 1, N'1280408088234430464', 2, N'删', NULL, N'Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1282515015819071491', CAST(N'2020-07-13 11:19:42.0000000' AS DateTime2), NULL, 1, N'1280408088234430464', 2, N'确认', NULL, N'Confirm', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1282515015819071492', CAST(N'2020-07-13 11:19:42.0000000' AS DateTime2), NULL, 1, N'1280408088234430464', 2, N'审批', NULL, N'Auditing', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1282515015819071493', CAST(N'2020-07-13 11:19:42.0000000' AS DateTime2), NULL, 1, N'1280408088234430464', 2, N'出库', NULL, N'OutStorage', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1282515169800359936', CAST(N'2020-07-13 11:20:19.0000000' AS DateTime2), NULL, 1, N'1280408088234430464', 2, N'增', NULL, N'TD_Send.Add', 1, NULL, 0)
GO
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1282515169800359937', CAST(N'2020-07-13 11:20:19.0000000' AS DateTime2), NULL, 1, N'1280408088234430464', 2, N'改', NULL, N'TD_Send.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1282515169800359938', CAST(N'2020-07-13 11:20:19.0000000' AS DateTime2), NULL, 1, N'1280408088234430464', 2, N'删', NULL, N'TD_Send.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1282515169800359939', CAST(N'2020-07-13 11:20:19.0000000' AS DateTime2), NULL, 1, N'1280408088234430464', 2, N'确认', NULL, N'TD_Send.Confirm', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1282515169800359940', CAST(N'2020-07-13 11:20:19.0000000' AS DateTime2), NULL, 1, N'1280408088234430464', 2, N'审批', NULL, N'TD_Send.Auditing', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1282515169800359941', CAST(N'2020-07-13 11:20:19.0000000' AS DateTime2), NULL, 1, N'1280408088234430464', 2, N'出库', NULL, N'TD_Send.OutStorage', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1282517133300862976', CAST(N'2020-07-13 11:28:07.0000000' AS DateTime2), NULL, 0, N'1280408088234430464', 2, N'增', NULL, N'TD_Send.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1282517133300862977', CAST(N'2020-07-13 11:28:07.0000000' AS DateTime2), NULL, 0, N'1280408088234430464', 2, N'改', NULL, N'TD_Send.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1282517133300862978', CAST(N'2020-07-13 11:28:07.0000000' AS DateTime2), NULL, 0, N'1280408088234430464', 2, N'删', NULL, N'TD_Send.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1282517133300862979', CAST(N'2020-07-13 11:28:07.0000000' AS DateTime2), NULL, 0, N'1280408088234430464', 2, N'确认', NULL, N'TD_Send.Confirm', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1282517133300862980', CAST(N'2020-07-13 11:28:07.0000000' AS DateTime2), NULL, 0, N'1280408088234430464', 2, N'审批', NULL, N'TD_Send.Auditing', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1282517133300862981', CAST(N'2020-07-13 11:28:07.0000000' AS DateTime2), NULL, 0, N'1280408088234430464', 2, N'出库', NULL, N'TD_Send.OutStorage', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1283687810397638656', CAST(N'2020-07-16 16:59:58.0000000' AS DateTime2), N'1269896267287236608', 0, N'1262553786761613312', 1, N'上下料点', N'/PB/PB_FeedPoint/List', NULL, 1, N'pic-right', 7)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1285822067316363264', CAST(N'2020-07-22 14:20:44.0000000' AS DateTime2), N'1278228362082390016', 1, NULL, 0, N'计划', NULL, NULL, 1, N'file', 5)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1285822623409770496', CAST(N'2020-07-22 14:22:57.0000000' AS DateTime2), N'1278228362082390016', 0, N'1262553786761613312', 1, N'计划管理', N'/PD/PD_Plan/List', NULL, 1, N'schedule', 14)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1285822623619485696', CAST(N'2020-07-22 14:22:57.0000000' AS DateTime2), NULL, 1, N'1285822623409770496', 2, N'增', NULL, N'PD_Plan/Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1285822623619485697', CAST(N'2020-07-22 14:22:57.0000000' AS DateTime2), NULL, 1, N'1285822623409770496', 2, N'改', NULL, N'PD_Plan/Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1285822623619485698', CAST(N'2020-07-22 14:22:57.0000000' AS DateTime2), NULL, 1, N'1285822623409770496', 2, N'删', NULL, N'PD_Plan/Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1285822962565386240', CAST(N'2020-07-22 14:24:18.0000000' AS DateTime2), NULL, 1, N'1285822623409770496', 2, N'增', NULL, N'PD_Plan/Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1285822962565386241', CAST(N'2020-07-22 14:24:18.0000000' AS DateTime2), NULL, 1, N'1285822623409770496', 2, N'改', NULL, N'PD_Plan/Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1285822962565386242', CAST(N'2020-07-22 14:24:18.0000000' AS DateTime2), NULL, 1, N'1285822623409770496', 2, N'删', NULL, N'PD_Plan/Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1285823056396161024', CAST(N'2020-07-22 14:24:40.0000000' AS DateTime2), NULL, 1, N'1285822623409770496', 2, N'增', NULL, N'PD_Plan.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1285823056396161025', CAST(N'2020-07-22 14:24:40.0000000' AS DateTime2), NULL, 1, N'1285822623409770496', 2, N'改', NULL, N'PD_Plan.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1285823056396161026', CAST(N'2020-07-22 14:24:40.0000000' AS DateTime2), NULL, 1, N'1285822623409770496', 2, N'删', NULL, N'PD_Plan.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1288803740630913024', CAST(N'2020-07-30 19:48:51.0000000' AS DateTime2), NULL, 0, N'1262928411609796608', 2, N'增', NULL, N'PB_Tray.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1288803740630913025', CAST(N'2020-07-30 19:48:51.0000000' AS DateTime2), NULL, 0, N'1262928411609796608', 2, N'改', NULL, N'PB_Tray.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1288803740630913026', CAST(N'2020-07-30 19:48:51.0000000' AS DateTime2), NULL, 0, N'1262928411609796608', 2, N'删', NULL, N'PB_Tray.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1288803740630913027', CAST(N'2020-07-30 19:48:51.0000000' AS DateTime2), NULL, 0, N'1262928411609796608', 2, N'托盘状态', NULL, N'PB_Tray.Status', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1288803740630913028', CAST(N'2020-07-30 19:48:51.0000000' AS DateTime2), NULL, 0, N'1262928411609796608', 2, N'导入托盘', NULL, N'PB_Tray.Leading', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1288810339193851904', CAST(N'2020-07-30 20:15:04.0000000' AS DateTime2), NULL, 0, N'1262922914915684352', 2, N'增', NULL, N'PB_Customer.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1288810339193851905', CAST(N'2020-07-30 20:15:04.0000000' AS DateTime2), NULL, 0, N'1262922914915684352', 2, N'改', NULL, N'PB_Customer.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1288810339193851906', CAST(N'2020-07-30 20:15:04.0000000' AS DateTime2), NULL, 0, N'1262922914915684352', 2, N'删', NULL, N'PB_Customer.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1288810339193851907', CAST(N'2020-07-30 20:15:04.0000000' AS DateTime2), NULL, 0, N'1262922914915684352', 2, N'客户地址', NULL, N'PB_Customer.AddressList', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1288810339193851908', CAST(N'2020-07-30 20:15:04.0000000' AS DateTime2), NULL, 0, N'1262922914915684352', 2, N'导入客户信息', NULL, N'PB_Customer.Leading', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1288810445376851968', CAST(N'2020-07-30 20:15:29.0000000' AS DateTime2), NULL, 0, N'1263009829799071744', 2, N'增', NULL, N'PB_Supplier.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1288810445376851969', CAST(N'2020-07-30 20:15:29.0000000' AS DateTime2), NULL, 0, N'1263009829799071744', 2, N'改', NULL, N'PB_Supplier.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1288810445376851970', CAST(N'2020-07-30 20:15:29.0000000' AS DateTime2), NULL, 0, N'1263009829799071744', 2, N'删', NULL, N'PB_Supplier.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1288810445376851971', CAST(N'2020-07-30 20:15:29.0000000' AS DateTime2), NULL, 0, N'1263009829799071744', 2, N'供应商地址', NULL, N'PB_Supplier.AddressList', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1288810445376851972', CAST(N'2020-07-30 20:15:29.0000000' AS DateTime2), NULL, 0, N'1263009829799071744', 2, N'导入供应商信息', NULL, N'PB_Supplier.Leading', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1289080577990856704', CAST(N'2020-07-31 14:08:54.0000000' AS DateTime2), NULL, 0, N'1263347595661545472', 2, N'增', NULL, N'PB_Material.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1289080577995051008', CAST(N'2020-07-31 14:08:54.0000000' AS DateTime2), NULL, 0, N'1263347595661545472', 2, N'改', NULL, N'PB_Material.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1289080577995051009', CAST(N'2020-07-31 14:08:54.0000000' AS DateTime2), NULL, 0, N'1263347595661545472', 2, N'删', NULL, N'PB_Material.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1289080577995051010', CAST(N'2020-07-31 14:08:54.0000000' AS DateTime2), NULL, 0, N'1263347595661545472', 2, N'导入物料', NULL, N'PB_Material.Leading', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1289080750527746048', CAST(N'2020-07-31 14:09:35.0000000' AS DateTime2), NULL, 0, N'1263271264097669120', 2, N'增', NULL, N'PB_MaterialType.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1289080750527746049', CAST(N'2020-07-31 14:09:35.0000000' AS DateTime2), NULL, 0, N'1263271264097669120', 2, N'改', NULL, N'PB_MaterialType.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1289080750527746050', CAST(N'2020-07-31 14:09:35.0000000' AS DateTime2), NULL, 0, N'1263271264097669120', 2, N'删', NULL, N'PB_MaterialType.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1289080750527746051', CAST(N'2020-07-31 14:09:35.0000000' AS DateTime2), NULL, 0, N'1263271264097669120', 2, N'导入', NULL, N'PB_MaterialType.Leading', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1289080894702751744', CAST(N'2020-07-31 14:10:09.0000000' AS DateTime2), NULL, 0, N'1283687810397638656', 2, N'导入', NULL, N'PB_FeedPoint.Leading', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1289081251390558208', CAST(N'2020-07-31 14:11:34.0000000' AS DateTime2), NULL, 0, N'1262575099001704448', 2, N'增', NULL, N'PB_Measure.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1289081251390558209', CAST(N'2020-07-31 14:11:34.0000000' AS DateTime2), NULL, 0, N'1262575099001704448', 2, N'改', NULL, N'PB_Measure.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1289081251390558210', CAST(N'2020-07-31 14:11:34.0000000' AS DateTime2), NULL, 0, N'1262575099001704448', 2, N'删', NULL, N'PB_Measure.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1289081251390558211', CAST(N'2020-07-31 14:11:34.0000000' AS DateTime2), NULL, 0, N'1262575099001704448', 2, N'导入', NULL, N'PB_Measure.Leading', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1291286901214416896', CAST(N'2020-08-06 16:16:02.0000000' AS DateTime2), NULL, 0, N'1262928230298423296', 2, N'增', NULL, N'PB_TrayType.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1291286901214416897', CAST(N'2020-08-06 16:16:02.0000000' AS DateTime2), NULL, 0, N'1262928230298423296', 2, N'改', NULL, N'PB_TrayType.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1291286901214416898', CAST(N'2020-08-06 16:16:02.0000000' AS DateTime2), NULL, 0, N'1262928230298423296', 2, N'删', NULL, N'PB_TrayType.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1291286901214416899', CAST(N'2020-08-06 16:16:02.0000000' AS DateTime2), NULL, 0, N'1262928230298423296', 2, N'托盘分区', NULL, N'PB_TrayType.ZoneList', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1291286901214416900', CAST(N'2020-08-06 16:16:02.0000000' AS DateTime2), NULL, 0, N'1262928230298423296', 2, N'关联物料', NULL, N'PB_TrayType.MaterialList', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1291286901214416901', CAST(N'2020-08-06 16:16:02.0000000' AS DateTime2), NULL, 0, N'1262928230298423296', 2, N'关联货位', NULL, N'PB_TrayType.LocationList', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1291286901214416902', CAST(N'2020-08-06 16:16:02.0000000' AS DateTime2), NULL, 0, N'1262928230298423296', 2, N'导入', NULL, N'PB_TrayType.Leading', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1298444755516002304', CAST(N'2020-08-26 10:18:48.0000000' AS DateTime2), NULL, 1, N'1285822623409770496', 2, N'增', NULL, N'PD_Plan.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1298444755516002305', CAST(N'2020-08-26 10:18:48.0000000' AS DateTime2), NULL, 1, N'1285822623409770496', 2, N'改', NULL, N'PD_Plan.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1298444755516002306', CAST(N'2020-08-26 10:18:48.0000000' AS DateTime2), NULL, 1, N'1285822623409770496', 2, N'删', NULL, N'PD_Plan.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1298445500449558528', CAST(N'2020-08-26 10:21:45.0000000' AS DateTime2), NULL, 1, N'1285822623409770496', 2, N'增', NULL, N'PD_Plan.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1298445500449558529', CAST(N'2020-08-26 10:21:45.0000000' AS DateTime2), NULL, 1, N'1285822623409770496', 2, N'改', NULL, N'PD_Plan.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1298445500449558530', CAST(N'2020-08-26 10:21:45.0000000' AS DateTime2), NULL, 1, N'1285822623409770496', 2, N'删', NULL, N'PD_Plan.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1298445595668647936', CAST(N'2020-08-26 10:22:08.0000000' AS DateTime2), NULL, 1, N'1285822623409770496', 2, N'增', NULL, N'PD_Plan.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1298445595668647937', CAST(N'2020-08-26 10:22:08.0000000' AS DateTime2), NULL, 1, N'1285822623409770496', 2, N'改', NULL, N'PD_Plan.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1298445595668647938', CAST(N'2020-08-26 10:22:08.0000000' AS DateTime2), NULL, 1, N'1285822623409770496', 2, N'删', NULL, N'PD_Plan.Delete', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1298445852758511616', CAST(N'2020-08-26 10:23:09.0000000' AS DateTime2), NULL, 0, N'1285822623409770496', 2, N'增', NULL, N'PD_Plan.Add', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1298445852758511617', CAST(N'2020-08-26 10:23:09.0000000' AS DateTime2), NULL, 0, N'1285822623409770496', 2, N'改', NULL, N'PD_Plan.Edit', 1, NULL, 0)
INSERT [dbo].[base_action] ([Id], [CreateTime], [CreatorId], [Deleted], [ParentId], [Type], [Name], [Url], [Value], [NeedAction], [Icon], [Sort]) VALUES (N'1298445852758511618', CAST(N'2020-08-26 10:23:09.0000000' AS DateTime2), NULL, 0, N'1285822623409770496', 2, N'删', NULL, N'PD_Plan.Delete', 1, NULL, 0)
INSERT [dbo].[base_appsecret] ([Id], [CreateTime], [CreatorId], [Deleted], [AppId], [AppSecret], [AppName]) VALUES (N'1172497995938271232', CAST(N'2019-09-13 21:11:20.0000000' AS DateTime2), N'Admin', 0, N'PcAdmin', N'wtMaiTRPTT3hrf5e', N'后台AppId')
INSERT [dbo].[base_appsecret] ([Id], [CreateTime], [CreatorId], [Deleted], [AppId], [AppSecret], [AppName]) VALUES (N'1173937877642383360', CAST(N'2019-09-17 20:32:55.0000000' AS DateTime2), N'Admin', 0, N'AppAdmin', N'IVh9LLSVFcoQPQ5K', N'APP密钥')
INSERT [dbo].[base_department] ([Id], [CreateTime], [CreatorId], [Deleted], [Name], [ParentId]) VALUES (N'1', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), N'Admin', 0, N'集团总部', NULL)
INSERT [dbo].[base_enum] ([Id], [Code], [Name], [IsSystem], [Remarks], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1262552693780516864', N'StorageType', N'仓库类型', 1, N'仓库类型', CAST(N'2020-05-19 09:16:33.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enum] ([Id], [Code], [Name], [IsSystem], [Remarks], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1262924591811006464', N'CustomerType', N'客户类型', 1, N'客户类型', CAST(N'2020-05-20 09:54:21.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enum] ([Id], [Code], [Name], [IsSystem], [Remarks], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1263012771306409984', N'SupplierType', N'供应商类型', 1, N'供应商类型', CAST(N'2020-05-20 15:44:44.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enum] ([Id], [Code], [Name], [IsSystem], [Remarks], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1263345285950607360', N'SystemType', N'系统参数类型', 1, N'系统参数类型', CAST(N'2020-05-21 13:46:02.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enum] ([Id], [Code], [Name], [IsSystem], [Remarks], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1263389132227350528', N'BarCodeRuleType', N'条码规则类型', 1, N'条码规则类型', CAST(N'2020-05-21 16:40:16.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enum] ([Id], [Code], [Name], [IsSystem], [Remarks], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1263662963768692736', N'StorAreaType', N'货区类型', 1, N'货区类型', CAST(N'2020-05-22 10:48:22.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enum] ([Id], [Code], [Name], [IsSystem], [Remarks], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1264839839782539264', N'InStorageType', N'入库类型', 1, N'入库类型', CAST(N'2020-05-25 16:44:52.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enum] ([Id], [Code], [Name], [IsSystem], [Remarks], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265102966654767104', N'MoveStorageType', N'移库类型', 1, N'移库类型', CAST(N'2020-05-26 10:10:26.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enum] ([Id], [Code], [Name], [IsSystem], [Remarks], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265111065721573376', N'CheckType', N'盘点类型', 1, N'盘点类型', CAST(N'2020-05-26 10:42:37.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enum] ([Id], [Code], [Name], [IsSystem], [Remarks], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265905490051731456', N'OutStorageType', N'出库类型', 1, N'出库类型', CAST(N'2020-05-28 15:19:22.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enum] ([Id], [Code], [Name], [IsSystem], [Remarks], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1267343796501221376', N'RecordBookType', N'台账类型', 1, N'台账类型', CAST(N'2020-06-01 14:34:41.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enum] ([Id], [Code], [Name], [IsSystem], [Remarks], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1267735325581512704', N'BadType', N'报损类型', 1, N'报损类型', CAST(N'2020-06-02 16:30:29.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enum] ([Id], [Code], [Name], [IsSystem], [Remarks], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1268737696893767680', N'AllocateType', N'调拨类型', 1, N'调拨类型', CAST(N'2020-06-05 10:53:33.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enum] ([Id], [Code], [Name], [IsSystem], [Remarks], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1280786420239175680', N'ReceiveType', N'收货类型', 0, N'收货类型', CAST(N'2020-07-08 16:50:53.0000000' AS DateTime2), N'1269896267287236608', 0)
INSERT [dbo].[base_enum] ([Id], [Code], [Name], [IsSystem], [Remarks], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1281041911058010112', N'SendType', N'发货类型', 0, NULL, CAST(N'2020-07-09 09:46:06.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enum] ([Id], [Code], [Name], [IsSystem], [Remarks], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1283931080293879808', N'PointType', N'上下料点类型', 0, N'上下料点类型', CAST(N'2020-07-17 09:06:38.0000000' AS DateTime2), N'1269896267287236608', 0)
INSERT [dbo].[base_enum] ([Id], [Code], [Name], [IsSystem], [Remarks], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1292758803841814528', N'TrayType', N'托盘类型', 0, NULL, CAST(N'2020-08-10 17:44:51.0000000' AS DateTime2), N'1269896764274511872', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1262554877519728640', N'1262552693780516864', N'StorageType', N'平面仓库', N'Plane', N'Plane', N'平面仓库', 0, CAST(N'2020-05-19 09:25:14.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1262555241455292416', N'1262552693780516864', N'StorageType', N'立体仓库', N'Frame', N'Frame', N'立体仓库', 0, CAST(N'2020-05-19 09:26:41.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1262925493519257600', N'1262924591811006464', N'CustomerType', N'公司', N'Company', N'Company', N'公司', 0, CAST(N'2020-05-20 09:57:56.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1262925550511460352', N'1262924591811006464', N'CustomerType', N'个人', N'Personal', N'Personal', N'个人', 0, CAST(N'2020-05-20 09:58:09.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1263012972771414016', N'1263012771306409984', N'SupplierType', N'公司', N'Company', N'Company', N'公司', 0, CAST(N'2020-05-20 15:45:33.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1263013019143639040', N'1263012771306409984', N'SupplierType', N'个人', N'Personal', N'Personal', N'个人', 0, CAST(N'2020-05-20 15:45:44.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1263359087324696576', N'1263345285950607360', N'SystemType', N'全局参数', N'Global', N'Global', N'全局参数', 0, CAST(N'2020-05-21 14:40:53.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1263359210196832256', N'1263345285950607360', N'SystemType', N'仓库参数', N'Storage', N'Storage', N'仓库参数', 0, CAST(N'2020-05-21 14:41:22.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1263389364235276288', N'1263389132227350528', N'BarCodeRuleType', N'常量', N'Const', N'Const', N'常量', 1, CAST(N'2020-05-21 16:41:11.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1263389483043131392', N'1263389132227350528', N'BarCodeRuleType', N'日期', N'Date', N'Date', N'日期', 1, CAST(N'2020-05-21 16:41:40.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1263389760102076416', N'1263389132227350528', N'BarCodeRuleType', N'流水号', N'Serial', N'Serial', N'流水号', 1, CAST(N'2020-05-21 16:42:46.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1263390382599704576', N'1263389132227350528', N'BarCodeRuleType', N'每日流水号', N'Daily', N'Daily', N'每日流水号', 1, CAST(N'2020-05-21 16:45:14.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1263390516649660416', N'1263389132227350528', N'BarCodeRuleType', N'随机数', N'Random', N'Random', N'随机数', 1, CAST(N'2020-05-21 16:45:46.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1263390610904059904', N'1263389132227350528', N'BarCodeRuleType', N'参数', N'Parameter', N'Parameter', N'参数', 1, CAST(N'2020-05-21 16:46:08.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1263640676520693760', N'1263345285950607360', N'SystemType', N'运行参数', N'Process', N'Process', N'运行参数', 0, CAST(N'2020-05-22 09:19:49.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1263663247546912768', N'1263662963768692736', N'LocationType', N'报损货区(B)', N'Bad', N'Bad', N'Bad', 0, CAST(N'2020-05-22 10:49:30.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1263672284778860544', N'1263662963768692736', N'LocationType', N'正式货区(A)', N'Active', N'Active', N'成品货位', 0, CAST(N'2020-05-22 11:25:25.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1264736055244886016', N'1263389132227350528', N'BarCodeRuleType', N'每月流水号', N'PerMonth', N'PerMonth', N'每月流水号', 1, CAST(N'2020-05-25 09:52:27.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1264736230470324224', N'1263389132227350528', N'BarCodeRuleType', N'每年流水号', N'PerYear', N'PerYear', N'每年流水号', 1, CAST(N'2020-05-25 09:53:09.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1264840255731666944', N'1264839839782539264', N'InStorageType', N'生产产品入库', N'Product', N'Product', N'生产产品入库', 0, CAST(N'2020-05-25 16:46:31.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1264840697756782592', N'1264839839782539264', N'InStorageType', N'采购收货入库', N'Purchase', N'Purchase', N'采购收货入库', 0, CAST(N'2020-05-25 16:48:16.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1264841082017943552', N'1264839839782539264', N'InStorageType', N'退货入库', N'Return', N'Return', N'退货入库', 0, CAST(N'2020-05-25 16:49:48.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265103719280676864', N'1265102966654767104', N'MoveStorageType', N'移库上架', N'UpMove', N'UpMove', NULL, 0, CAST(N'2020-05-26 10:13:25.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265103998596157440', N'1265102966654767104', N'MoveStorageType', N'仓库移库', N'StorMove', N'StorMove', NULL, 0, CAST(N'2020-05-26 10:14:32.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265104083358846976', N'1265102966654767104', N'MoveStorageType', N'破损移库', N'BadMove', N'BadMove', NULL, 0, CAST(N'2020-05-26 10:14:52.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265111194906136576', N'1265111065721573376', N'CheckType', N'整体盘点', N'Storage', N'Storage', N'整体盘点', 0, CAST(N'2020-05-26 10:43:08.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265111255090204672', N'1265111065721573376', N'CheckType', N'区域盘点', N'Area', N'Area', N'区域盘点', 0, CAST(N'2020-05-26 10:43:22.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265111372220338176', N'1265111065721573376', N'CheckType', N'特定物料盘点', N'Material', N'Material', N'特定物料盘点', 0, CAST(N'2020-05-26 10:43:50.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265111433356513280', N'1265111065721573376', N'CheckType', N'随机物料盘点', N'Random', N'Random', N'随机物料盘点', 0, CAST(N'2020-05-26 10:44:05.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265906082140655616', N'1265905490051731456', N'OutStorageType', N'销售出库', N'SaleOut', N'SaleOut', NULL, 0, CAST(N'2020-05-28 15:21:44.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265906436790030336', N'1265905490051731456', N'OutStorageType', N'调拨出库', N'AllocateOut', N'AllocateOut', NULL, 0, CAST(N'2020-05-28 15:23:08.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265913677714821120', N'1265905490051731456', N'OutStorageType', N'盘亏出库', N'LossOut', N'LossOut', NULL, 0, CAST(N'2020-05-28 15:51:54.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265913839413628928', N'1265905490051731456', N'OutStorageType', N'其他出库', N'OtherOut', N'OtherOut', NULL, 0, CAST(N'2020-05-28 15:52:33.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1267343942773379072', N'1267343796501221376', N'RecordBookType', N'入库', N'In', N'In', N'入库', 1, CAST(N'2020-06-01 14:35:16.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1267344016408580096', N'1267343796501221376', N'RecordBookType', N'出库', N'Out', N'Out', N'出库', 1, CAST(N'2020-06-01 14:35:34.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1267344146171957248', N'1267343796501221376', N'RecordBookType', N'移库-出', N'MoveOut', N'MoveOut', N'移库', 1, CAST(N'2020-06-01 14:36:05.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1267344733621981184', N'1267343796501221376', N'RecordBookType', N'调拨-出', N'AllocateOut', N'AllocateOut', N'调拨-出', 1, CAST(N'2020-06-01 14:38:25.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1267344795970310144', N'1267343796501221376', N'RecordBookType', N'调拨-入', N'AllocateIn', N'AllocateIn', N'调拨-入', 1, CAST(N'2020-06-01 14:38:40.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1267344884684034048', N'1267343796501221376', N'RecordBookType', N'报损-出', N'BadOut', N'BadOut', N'报损', 1, CAST(N'2020-06-01 14:39:01.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1267345176536289280', N'1267343796501221376', N'RecordBookType', N'盘亏', N'Deficit', N'Deficit', N'盘亏', 1, CAST(N'2020-06-01 14:40:10.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1267345226628861952', N'1267343796501221376', N'RecordBookType', N'盘盈', N'Panying', N'Panying', N'盘盈', 1, CAST(N'2020-06-01 14:40:22.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1267702461620031488', N'1263662963768692736', N'LocationType', N'待入货区(I)', N'In', N'In', N'待入货位', 0, CAST(N'2020-06-02 14:19:54.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1267702845126217728', N'1263662963768692736', N'LocationType', N'待出货区', N'Out', N'Out', N'待出货位', 0, CAST(N'2020-06-02 14:21:25.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1267703373965037568', N'1263662963768692736', N'LocationType', N'待检货区', N'Check', N'Check', N'待检货位', 0, CAST(N'2020-06-02 14:23:31.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1267735495421464576', N'1267735325581512704', N'BadType', N'损坏报损', N'Bad', N'Bad', N'损坏报损', 0, CAST(N'2020-06-02 16:31:10.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1267735665538240512', N'1267735325581512704', N'BadType', N'丢失报损', N'Lost', N'Lost', N'丢失报损', 0, CAST(N'2020-06-02 16:31:50.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1268738467588739072', N'1268737696893767680', N'AllocateType', N'正常调拨', N'Normal', N'Normal', N'正常调拨', 0, CAST(N'2020-06-05 10:56:37.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1268787018519810048', N'1267343796501221376', N'RecordBookType', N'报损-入', N'BadIn', N'BadIn', N'报损-入', 1, CAST(N'2020-06-05 14:09:32.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1268787264457019392', N'1267343796501221376', N'RecordBookType', N'移库-入', N'MoveIn', N'MoveIn', N'移库-入', 1, CAST(N'2020-06-05 14:10:31.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1269901068939038720', N'1263662963768692736', N'StorAreaType', N'缓存货区', N'Cache', N'Cache', N'缓存货区', 0, CAST(N'2020-06-08 15:56:23.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1270233730820083712', N'1262924591811006464', N'CustomerType', N'虚拟', N'Virtual', N'Virtual', N'虚拟', 0, CAST(N'2020-06-09 13:58:15.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1270234020088647680', N'1263012771306409984', N'SupplierType', N'虚拟', N'Virtual', N'Virtual', N'虚拟', 0, CAST(N'2020-06-09 13:59:24.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1270241676245340160', N'1262924591811006464', N'CustomerType', N'内部', N'Internal', N'Internal', N'内部', 0, CAST(N'2020-06-09 14:29:50.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1270241855396646912', N'1263012771306409984', N'SupplierType', N'内部', N'Internal', N'Internal', N'内部', 0, CAST(N'2020-06-09 14:30:32.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1270258903237529600', N'1263389132227350528', N'BarCodeRuleType', N'参数流水号', N'ParaSerial', N'ParaSerial', N'参数流水号', 0, CAST(N'2020-06-09 15:38:17.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1278499184181252096', N'1262552693780516864', N'StorageType', N'智能仓库', N'AI', N'AI', N'智能仓库', 0, CAST(N'2020-07-02 09:22:13.0000000' AS DateTime2), N'1269896267287236608', 1)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1280786880316575744', N'1280786420239175680', N'ReceiveType', N'采购收货', N'Purchase', N'Purchase', N'采购收货', 0, CAST(N'2020-07-08 16:52:42.0000000' AS DateTime2), N'1269896267287236608', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1280786992887500800', N'1280786420239175680', N'ReceiveType', N'销售退货', N'Return', N'Return', N'销售退货', 0, CAST(N'2020-07-08 16:53:09.0000000' AS DateTime2), N'1269896267287236608', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1281042311165251584', N'1281041911058010112', N'SendType', N'销售发货', N'SaleOut', N'SaleOut', NULL, 0, CAST(N'2020-07-09 09:47:42.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1281042551599534080', N'1281041911058010112', N'SendType', N'采购退货', N'PurchaseReturn', N'PurchaseReturn', NULL, 0, CAST(N'2020-07-09 09:48:39.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1282578367706566656', N'1265905490051731456', N'OutStorageType', N'采购出库', N'PurchaseReturn', N'PurchaseReturn', NULL, 0, CAST(N'2020-07-13 15:31:26.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1283931256500785152', N'1283931080293879808', N'PointType', N'只进', N'In', N'In', N'只进', 0, CAST(N'2020-07-17 09:07:20.0000000' AS DateTime2), N'1269896267287236608', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1283931335655690240', N'1283931080293879808', N'PointType', N'只出', N'Out', N'Out', N'只出', 0, CAST(N'2020-07-17 09:07:39.0000000' AS DateTime2), N'1269896267287236608', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1283931426781138944', N'1283931080293879808', N'PointType', N'进出', N'InOut', N'InOut', N'进出', 0, CAST(N'2020-07-17 09:08:01.0000000' AS DateTime2), N'1269896267287236608', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1283931563964239872', N'1283931080293879808', N'PointType', N'出回', N'OutBack', N'OutBack', N'出回', 0, CAST(N'2020-07-17 09:08:33.0000000' AS DateTime2), N'1269896267287236608', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1289085729720242176', N'1263012771306409984', N'SupplierType', N'生产车间', N'Product', N'Product', NULL, 0, CAST(N'2020-07-31 14:29:22.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1291191219430363136', N'1265905490051731456', N'OutStorageType', N'生产出库', N'ProductOut', N'ProductOut', NULL, 0, CAST(N'2020-08-06 09:55:50.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1292764385210535936', N'1292758803841814528', N'TrayType', N'标准托盘', N'StanType', N'StanType', NULL, 0, CAST(N'2020-08-10 18:07:02.0000000' AS DateTime2), N'1269896764274511872', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1293010461901459456', N'1292758803841814528', N'TrayType', N'原料托盘', N'RawType', N'RawType', NULL, 0, CAST(N'2020-08-11 10:24:51.0000000' AS DateTime2), N'1269896764274511872', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1293010685189427200', N'1292758803841814528', N'TrayType', N'异形托盘', N'AlienType', N'AlienType', NULL, 0, CAST(N'2020-08-11 10:25:44.0000000' AS DateTime2), N'1269896764274511872', 0)
INSERT [dbo].[base_enumitem] ([Id], [EnumId], [EnumCode], [Name], [Code], [Value], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1293010886000119808', N'1292758803841814528', N'TrayType', N'其他托盘', N'OtherType', N'OtherType', NULL, 0, CAST(N'2020-08-11 10:26:32.0000000' AS DateTime2), N'1269896764274511872', 0)
INSERT [dbo].[base_parameter] ([Id], [Type], [Code], [Name], [ValConfig], [Val], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1263643880092340224', N'Process', N'GenerateInStorageCode', N'生成入库单号', N'{"Type":"select","Data":[{"Name":"是","Value":"1"},{"Name":"否","Value":"0"}]}', N'1', N'入库单号是否通过系统自动生成', 1, CAST(N'2020-05-22 09:32:33.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_parameter] ([Id], [Type], [Code], [Name], [ValConfig], [Val], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1263644231503712256', N'Process', N'GenerateOutStorageCode', N'生成出库单号', N'{"Type":"select","Data":[{"Name":"是","Value":"1"},{"Name":"否","Value":"0"}]}', N'1', N'出库单号是否通过系统自动生成', 1, CAST(N'2020-05-22 09:33:56.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_parameter] ([Id], [Type], [Code], [Name], [ValConfig], [Val], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265822399262101504', N'Process', N'GenerateStorAreaCode', N'生成货区编号', N'{"Type":"select","Data":[{"Name":"是","Value":"1"},{"Name":"否","Value":"0"}]}', N'1', N'货区编号是系统否自动生成', 1, CAST(N'2020-05-28 09:49:12.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_parameter] ([Id], [Type], [Code], [Name], [ValConfig], [Val], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265888049137455104', N'Process', N'MaterialTypeCode', N'物料类型编号', N'{"Type":"select","Data":[{"Name":"是","Value":"1"},{"Name":"否","Value":"0"}]}', N'1', N'物料类型编号是否自动生成', 1, CAST(N'2020-05-28 14:10:04.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_parameter] ([Id], [Type], [Code], [Name], [ValConfig], [Val], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265891433571684352', N'Process', N'CustomerCode', N'客户编号', N'{"Type":"select","Data":[{"Name":"是","Value":"1"},{"Name":"否","Value":"0"}]}', N'1', N'客户编号是否自动生成', 1, CAST(N'2020-05-28 14:23:31.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_parameter] ([Id], [Type], [Code], [Name], [ValConfig], [Val], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265891669794885632', N'Process', N'SupplierCode', N'供应商编号', N'{"Type":"select","Data":[{"Name":"是","Value":"1"},{"Name":"否","Value":"0"}]}', N'1', N'供应商编号是否自动生成', 1, CAST(N'2020-05-28 14:24:27.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_parameter] ([Id], [Type], [Code], [Name], [ValConfig], [Val], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265892287653613568', N'Process', N'MaterialCode', N'物料编码', N'{"Type":"select","Data":[{"Name":"是","Value":"1"},{"Name":"否","Value":"0"}]}', N'1', N'物料编码是否自动生成', 1, CAST(N'2020-05-28 14:26:55.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_parameter] ([Id], [Type], [Code], [Name], [ValConfig], [Val], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265892519116279808', N'Process', N'EquipmentCode', N'设备编码', N'{"Type":"select","Data":[{"Name":"是","Value":"1"},{"Name":"否","Value":"0"}]}', N'1', N'设备编码是否自动生成', 1, CAST(N'2020-05-28 14:27:50.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_parameter] ([Id], [Type], [Code], [Name], [ValConfig], [Val], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265895036839530496', N'Process', N'GenerateStorageCode', N'生成仓库编号', N'{"Type":"select","Data":[{"Name":"是","Value":"1"},{"Name":"否","Value":"0"}]}', N'1', N'仓库编号是否自动生成', 1, CAST(N'2020-05-28 14:37:50.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_parameter] ([Id], [Type], [Code], [Name], [ValConfig], [Val], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265895300246016000', N'Process', N'GenerateLocationCode', N'生成货位编号', N'{"Type":"select","Data":[{"Name":"是","Value":"1"},{"Name":"否","Value":"0"}]}', N'1', N'货位编号是否自动生成', 1, CAST(N'2020-05-28 14:38:53.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_parameter] ([Id], [Type], [Code], [Name], [ValConfig], [Val], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265895662407389184', N'Process', N'GenerateLanewayCode', N'生成巷道编号', N'{"Type":"select","Data":[{"Name":"是","Value":"1"},{"Name":"否","Value":"0"}]}', N'1', N'巷道编号是否自动生成', 1, CAST(N'2020-05-28 14:40:19.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_parameter] ([Id], [Type], [Code], [Name], [ValConfig], [Val], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265895913000275968', N'Process', N'GenerateRackCode', N'生成货位编号', N'{"Type":"select","Data":[{"Name":"是","Value":"1"},{"Name":"否","Value":"0"}]}', N'1', N'货位编号是否自动生成', 1, CAST(N'2020-05-28 14:41:19.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_parameter] ([Id], [Type], [Code], [Name], [ValConfig], [Val], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1267736072519946240', N'Process', N'GenerateBadCode', N'自动生成报损单号', N'{"Type":"select","Data":[{"Name":"是","Value":"1"},{"Name":"否","Value":"0"}]}', N'1', N'是否系统自动生成报损单号', 1, CAST(N'2020-06-02 16:33:27.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_parameter] ([Id], [Type], [Code], [Name], [ValConfig], [Val], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1270162225755066368', N'Process', N'GenerateMeasureCode', N'计量单位编号自动生成', N'{"Type":"select","Data":[{"Name":"是","Value":"1"},{"Name":"否","Value":"0"}]}', N'1', N'系统是否自动生成计量单位编号，1:是,0:否', 1, CAST(N'2020-06-09 09:14:07.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_parameter] ([Id], [Type], [Code], [Name], [ValConfig], [Val], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1270614428672331776', N'Process', N'GenerateTrayTypeCode', N'生成托盘类型编号', N'{"Type":"select","Data":[{"Name":"是","Value":"1"},{"Name":"否","Value":"0"}]}', N'1', N'系统是否自动生成托盘类型编号', 1, CAST(N'2020-06-10 15:11:01.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_parameter] ([Id], [Type], [Code], [Name], [ValConfig], [Val], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1270969348990701568', N'Process', N'GenerateTrayCode', N'生成托盘编号', N'{"Type":"select","Data":[{"Name":"是","Value":"1"},{"Name":"否","Value":"0"}]}', N'1', N'系统是否自动生成托盘编号', 1, CAST(N'2020-06-11 14:41:20.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_parameter] ([Id], [Type], [Code], [Name], [ValConfig], [Val], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1271270736828305408', N'Process', N'GenerateMoveCode', N'生成移库单号', N'{"Type":"select","Data":[{"Name":"是","Value":"1"},{"Name":"否","Value":"0"}]}', N'1', N'系统是否自动生成移库单号', 1, CAST(N'2020-06-12 10:38:57.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_parameter] ([Id], [Type], [Code], [Name], [ValConfig], [Val], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1271270829279154176', N'Process', N'GenerateAllocateCode', N'生成调拨单号', N'{"Type":"select","Data":[{"Name":"是","Value":"1"},{"Name":"否","Value":"0"}]}', N'1', N'系统是否自动生成移库单号', 1, CAST(N'2020-06-12 10:39:19.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_parameter] ([Id], [Type], [Code], [Name], [ValConfig], [Val], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1272713364539183104', N'Process', N'CheckCode', N'盘点编码', N'{"Type":"select","Data":[{"Name":"是","Value":"1"},{"Name":"否","Value":"0"}]}', N'1', N'系统是否自动生成盘点编码', 1, CAST(N'2020-06-16 10:11:26.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_parameter] ([Id], [Type], [Code], [Name], [ValConfig], [Val], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1282507459948187648', N'Process', N'GenerateSendCode', N'发货编号', N'{"Type":"select","Data":[{"Name":"是","Value":"1"},{"Name":"否","Value":"0"}]}', N'1', N'系统是否自动生成发货编码', 1, CAST(N'2020-07-13 10:49:40.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_parameter] ([Id], [Type], [Code], [Name], [ValConfig], [Val], [Remarks], [IsSystem], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1282507459948187649', N'Process', N'PlanCode', N'计划编号', N'{"Type":"select","Data":[{"Name":"是","Value":"1"},{"Name":"否","Value":"0"}]}', N'1', N'系统是否自动生成', 1, CAST(N'2020-07-23 09:25:51.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[base_role] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleName]) VALUES (N'1', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'超级管理员')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'1', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1178957405992521728')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'10', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1188801109783744512')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'100', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1269853718489075714')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'101', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1269854054255693824')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'102', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1269854054255693825')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'103', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1269854054255693826')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'104', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1269854080503648256')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'105', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1269854080503648257')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'106', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1269854080503648258')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'107', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1275630906790383616')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'108', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1275630906790383617')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'109', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1275630906790383618')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'11', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1188801109783744513')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'110', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1275631260353433600')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'111', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1275631260353433601')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'112', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1275631260353433602')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'113', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1275631469582094336')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'114', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1275631469582094337')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'115', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1275631469582094338')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'116', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1275631660213211136')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'117', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1275631660213211137')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'118', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1275631660213211138')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'119', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1275631903717724160')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'12', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1188801109783744514')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'120', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1275631903717724161')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'121', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1275631903717724162')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'122', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1275632133192290304')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'123', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1275632133192290305')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'124', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1275632133192290306')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'125', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1275632328638468096')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'126', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1275632328638468097')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'127', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1275632328638468098')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'128', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1275667161926340608')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'129', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1275667161926340609')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'13', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1188801273885888512')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'130', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1275667161926340610')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'131', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277422688519852032')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'132', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277431617714917376')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'133', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277532469750403072')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'134', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277532469750403073')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'135', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277532469750403074')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'136', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277532672414978048')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'137', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277532672414978049')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'138', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277532672414978050')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'139', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277532925318926336')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'14', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1188801273885888513')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'140', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277532925318926337')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'141', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277532925318926338')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'142', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277533121314557952')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'143', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277533121314557953')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'144', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277533121314557954')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'145', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277533297932505088')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'146', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277533297932505089')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'147', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277533297932505090')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'148', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277533458817617920')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'149', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277533458817617921')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'15', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1188801273885888514')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'150', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277533458817617922')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'151', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277533650639917056')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'152', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277533650639917057')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'153', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277533650639917058')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'154', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277533675898015744')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'155', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277533675898015745')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'156', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277533675898015746')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'157', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277533711419576320')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'158', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277533711419576321')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'159', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277533711419576322')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'16', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1188801341661646848')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'160', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277535944697712640')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'161', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277535944697712641')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'162', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277535944697712642')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'163', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277535944697712643')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'164', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277535944697712644')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'165', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277763256412278784')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'166', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277763256416473088')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'167', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277763256416473089')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'168', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277763256416473090')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'169', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277763256416473091')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'17', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1188801341661646849')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'170', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277763256416473092')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'171', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277768417000034304')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'172', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277768417000034305')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'173', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277768417000034306')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'174', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277769428984926208')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'175', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277769428984926209')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'176', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277769428984926210')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'177', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277769428984926211')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'178', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277771896309420032')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'179', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277771896309420033')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'18', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1188801341661646850')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'180', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277771896309420034')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'181', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277771896309420035')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'182', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277772033597378560')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'183', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277772033597378561')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'184', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277772033597378562')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'185', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277772033597378563')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'186', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277774855038570496')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'187', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277774855038570497')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'188', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277774855038570498')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'189', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277774855038570499')
GO
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'19', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1193158266167758848')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'190', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277777564420542464')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'191', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277777564420542465')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'192', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277777564420542466')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'193', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277777564420542467')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'194', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277777564420542468')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'195', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277777564420542469')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'196', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277778496889819136')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'197', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277778496889819137')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'198', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277778496889819138')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'199', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277778496889819139')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'2', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1178957553778823168')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'20', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1193158630615027712')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'200', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277784297289289728')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'201', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277784297289289729')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'202', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277784297289289730')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'203', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277784297289289731')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'204', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277789944756047872')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'205', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277789944756047873')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'206', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277789944756047874')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'207', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277789944756047875')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'208', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277789944756047876')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'209', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277790037492109312')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'21', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1193158780011941888')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'210', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277790037492109313')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'211', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277790037492109314')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'212', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277790037492109315')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'213', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277792686522241024')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'214', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277792686522241025')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'215', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277792686522241026')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'216', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277792686522241027')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'217', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277792686522241028')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'218', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277800839968198656')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'219', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277800839968198657')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'22', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1251792477787000832')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'220', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277800839968198658')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'221', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277800839968198659')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'222', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277800966913003520')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'223', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277800966913003521')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'224', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277800966913003522')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'225', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277800966913003523')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'226', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277801097083228160')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'227', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277801097083228161')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'228', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277801097083228162')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'229', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277801097083228163')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'23', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1251792477787000833')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'230', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277801221343678464')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'231', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277801221343678465')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'232', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277801221343678466')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'233', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277801221343678467')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'234', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277805864069107712')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'235', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277805864069107713')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'236', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277805864069107714')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'237', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277805864069107715')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'238', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277805864069107716')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'239', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277805864069107717')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'24', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1251792477787000834')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'240', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277874050336559104')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'241', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277874050336559105')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'242', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277874050336559106')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'243', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277874050336559107')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'244', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277875765320355840')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'245', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277875765320355841')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'246', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277875765320355842')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'247', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1277875765320355843')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'248', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1278217036945690624')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'249', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1278217036949884928')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'25', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1251792721769664512')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'250', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1278217036949884929')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'251', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1278217036949884930')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'252', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1278882800153399296')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'253', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1280406830014533632')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'254', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1280407972886876160')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'255', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1280408088234430464')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'256', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1281114864143568896')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'257', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1281114864143568897')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'258', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1281114864143568898')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'259', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1281114864143568899')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'26', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1262552445217673216')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'260', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1281114864143568900')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'261', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1281120622100877312')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'262', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1281120622100877313')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'263', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1281120622100877314')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'264', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1281120622100877315')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'265', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1281120622100877316')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'266', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1281120622100877317')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'267', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1281513078063632384')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'268', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1281513078063632385')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'269', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1281513078063632386')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'27', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1262552445653880832')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'270', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1281513078063632387')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'271', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1281513125501210624')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'272', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1281513125501210625')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'273', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1281513125501210626')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'274', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1281513195655139328')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'275', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1281513195655139329')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'276', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1281513195655139330')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'277', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1281513255243616256')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'278', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1281513255243616257')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'279', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1281513255243616258')
GO
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'28', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1262552445653880833')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'280', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1281513335262547968')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'281', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1281513335262547969')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'282', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1281513335262547970')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'283', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1281513335262547971')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'284', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1282483071345496064')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'285', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1282483071345496065')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'286', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1282483071345496066')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'287', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1282483071345496067')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'288', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1282483071345496068')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'289', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1282483071345496069')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'29', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1262552445653880834')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'290', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1282514726487592960')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'291', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1282514726491787264')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'292', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1282514726491787265')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'293', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1282514726491787266')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'294', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1282515015819071488')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'295', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1282515015819071489')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'296', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1282515015819071490')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'297', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1282515015819071491')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'298', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1282515015819071492')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'299', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1282515015819071493')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'3', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1179018395304071168')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'30', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1262553786761613312')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'300', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1282515169800359936')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'301', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1282515169800359937')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'302', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1282515169800359938')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'303', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1282515169800359939')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'304', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1282515169800359940')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'305', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1282515169800359941')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'306', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1282517133300862976')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'307', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1282517133300862977')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'308', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1282517133300862978')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'309', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1282517133300862979')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'31', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1262554025874690048')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'310', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1282517133300862980')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'311', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1282517133300862981')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'312', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1283687810397638656')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'313', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1285822067316363264')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'314', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1285822623409770496')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'315', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1285822623619485696')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'316', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1285822623619485697')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'317', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1285822623619485698')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'318', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1285822962565386240')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'319', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1285822962565386241')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'32', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1262554652306575360')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'320', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1285822962565386242')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'321', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1285823056396161024')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'322', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1285823056396161025')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'323', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1285823056396161026')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'324', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1288803740630913024')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'325', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1288803740630913025')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'326', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1288803740630913026')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'327', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1288803740630913027')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'328', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1288803740630913028')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'329', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1288810339193851904')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'33', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1262554652306575361')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'330', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1288810339193851905')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'331', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1288810339193851906')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'332', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1288810339193851907')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'333', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1288810339193851908')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'334', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1288810445376851968')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'335', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1288810445376851969')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'336', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1288810445376851970')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'337', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1288810445376851971')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'338', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1288810445376851972')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'339', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1289080577990856704')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'34', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1262554652306575362')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'340', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1289080577995051008')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'341', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1289080577995051009')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'342', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1289080577995051010')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'343', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1289080750527746048')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'344', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1289080750527746049')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'345', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1289080750527746050')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'346', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1289080750527746051')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'347', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1289080894702751744')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'348', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1289081251390558208')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'349', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1289081251390558209')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'35', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1262556698871074816')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'350', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1289081251390558210')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'351', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1289081251390558211')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'352', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1291286901214416896')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'353', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1291286901214416897')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'354', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1291286901214416898')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'355', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1291286901214416899')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'356', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1291286901214416900')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'357', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1291286901214416901')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'358', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1291286901214416902')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'359', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1298444755516002304')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'36', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1262557084470218752')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'360', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1298444755516002305')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'361', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1298444755516002306')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'362', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1298445500449558528')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'363', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1298445500449558529')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'364', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1298445500449558530')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'365', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1298445595668647936')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'366', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1298445595668647937')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'367', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1298445595668647938')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'368', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1298445852758511616')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'369', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1298445852758511617')
GO
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'37', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1262557084470218753')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'370', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1298445852758511618')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'38', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1262557084470218754')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'39', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1262561996948115456')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'4', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1182652266117599232')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'40', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1262575099001704448')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'41', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1262575100272578560')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'42', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1262575172028731392')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'43', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1262575875254128640')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'44', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1262668982729576448')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'45', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1262922914915684352')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'46', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1262928230298423296')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'47', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1262928411609796608')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'48', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1263009829799071744')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'49', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1263271264097669120')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'5', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1182652367447789568')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'50', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1263347595661545472')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'51', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1263368318757113856')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'52', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1263368319327539200')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'53', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1263368319327539201')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'54', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1263368319327539202')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'55', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1263368516816343040')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'56', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1263371155239079936')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'57', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1263371432251887616')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'58', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1263371432251887617')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'59', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1263371432251887618')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'6', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1182652433302556672')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'60', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1263395034003148800')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'61', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1263637992564592640')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'62', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1263666945958350848')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'63', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1263667270278713344')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'64', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1264818587378388992')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'65', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1264818748754235392')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'66', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1264819191542714368')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'67', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1264819336162316288')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'68', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1264819485643116544')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'69', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1265093185428787200')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'7', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1188801057778569216')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'70', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1265817934853312512')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'71', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1265818342078287872')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'72', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1265818342078287873')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'73', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1265818342078287874')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'74', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1267717170092052480')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'75', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1268745471006871552')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'76', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1269830807669706752')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'77', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1269830807669706753')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'78', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1269830807669706754')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'79', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1269830894030426112')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'8', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1188801057778569217')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'80', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1269830894030426113')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'81', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1269830894030426114')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'82', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1269830934069252096')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'83', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1269830934069252097')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'84', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1269830934069252098')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'85', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1269833062556897280')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'86', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1269833062556897281')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'87', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1269833062556897282')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'88', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1269833149739700224')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'89', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1269833291159048192')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'9', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1188801057778569218')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'90', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1269833291159048193')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'91', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1269833291159048194')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'92', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1269844636759756800')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'93', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1269844636759756801')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'94', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1269844636759756802')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'95', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1269853640227557376')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'96', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1269853640227557377')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'97', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1269853640227557378')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'98', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1269853718489075712')
INSERT [dbo].[base_roleaction] ([Id], [CreateTime], [CreatorId], [Deleted], [RoleId], [ActionId]) VALUES (N'99', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'1', N'1269853718489075713')
INSERT [dbo].[base_user] ([Id], [CreateTime], [CreatorId], [deleted], [UserName], [Password], [RealName], [Sex], [Birthday], [DepartmentId]) VALUES (N'2f2ed66e-3c66-45a9-944b-ce88ea0597f4', CAST(N'2023-12-04 11:54:39.4854704' AS DateTime2), N'25481777-0d0b-4aae-b7db-bd8e16aed03c', 0, N'ada2b077-3f7b-4a86-9cd1-c5d62302b66a', N'7d11fabd-02e1-4eee-a451-bf491c26a6ee', N'1fa70a33-c78c-4b88-a3b8-4e94efe415d1', 1, CAST(N'2023-12-04' AS Date), N'50bc344c-73e3-4771-b50b-89b2b0905e94')
INSERT [dbo].[base_user] ([Id], [CreateTime], [CreatorId], [deleted], [UserName], [Password], [RealName], [Sex], [Birthday], [DepartmentId]) VALUES (N'Admin', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), N'Admin', 0, N'Admin', N'e10adc3949ba59abbe56e057f20f883e', N'超级管理员', 1, CAST(N'2020-01-01' AS Date), NULL)
INSERT [dbo].[base_userrole] ([Id], [CreateTime], [CreatorId], [Deleted], [UserId], [RoleId]) VALUES (N'1', CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), NULL, 0, N'Admin', N'1')
INSERT [dbo].[base_userstor] ([Id], [UserId], [StorId], [IsDefault], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1', N'1', N'1', 1, CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1263400848411594752', N'1263374134566457344', N'Const', N'1', N'S', NULL, CAST(N'2020-05-21 17:26:49.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1263400895811424256', N'1263374134566457344', N'Serial', N'2', NULL, 4, CAST(N'2020-05-21 17:27:01.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1264741628791230464', N'1264741457835593728', N'Const', N'1', N'RK', NULL, CAST(N'2020-05-25 10:14:36.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1264741739424387072', N'1264741457835593728', N'Date', N'2', N'yyyyMMdd', NULL, CAST(N'2020-05-25 10:15:03.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1264742087627116544', N'1264741457835593728', N'Daily', N'3', NULL, NULL, CAST(N'2020-05-25 10:16:26.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265890350820495360', N'1265890219614277632', N'Const', N'1', N'MT', NULL, CAST(N'2020-05-28 14:19:13.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265890437890052096', N'1265890219614277632', N'Serial', N'2', NULL, NULL, CAST(N'2020-05-28 14:19:34.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265893917933441024', N'1265893849943773184', N'Const', N'1', N'C', NULL, CAST(N'2020-05-28 14:33:23.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265894043221495808', N'1265893849943773184', N'Date', N'2', N'yyyyMM', NULL, CAST(N'2020-05-28 14:33:53.0000000' AS DateTime2), N'Admin', 1)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265894157218484224', N'1265893849943773184', N'PerMonth', N'3', NULL, 4, CAST(N'2020-05-28 14:34:20.0000000' AS DateTime2), N'Admin', 1)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265895158159773696', N'1265895064618405888', N'Const', N'1', N'M', NULL, CAST(N'2020-05-28 14:38:19.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265895221426655232', N'1265895064618405888', N'Date', N'2', N'yyyyMMdd', NULL, CAST(N'2020-05-28 14:38:34.0000000' AS DateTime2), N'Admin', 1)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265895287000403968', N'1265895064618405888', N'Daily', N'3', NULL, 4, CAST(N'2020-05-28 14:38:50.0000000' AS DateTime2), N'Admin', 1)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265895714571948032', N'1265895658099838976', N'Const', N'1', N'EQU', NULL, CAST(N'2020-05-28 14:40:32.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265895761887891456', N'1265895658099838976', N'Serial', N'2', NULL, 6, CAST(N'2020-05-28 14:40:43.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265899102235791360', N'1265897755352502272', N'Const', N'1', N'HJ', NULL, CAST(N'2020-05-28 14:53:59.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265899452523089920', N'1265897755352502272', N'Serial', N'2', NULL, 4, CAST(N'2020-05-28 14:55:23.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265899707113148416', N'1265897893827448832', N'Const', N'1', N'XD', NULL, CAST(N'2020-05-28 14:56:24.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265899765242007552', N'1265897893827448832', N'Serial', N'2', NULL, 4, CAST(N'2020-05-28 14:56:37.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265899839502159872', N'1265898000555708416', N'Const', N'1', N'HQ', NULL, CAST(N'2020-05-28 14:56:55.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265899879310299136', N'1265898000555708416', N'Serial', N'2', NULL, 4, CAST(N'2020-05-28 14:57:05.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265900020364742656', N'1265898274779303936', N'Const', N'1', N'CK', NULL, CAST(N'2020-05-28 14:57:38.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265900097497993216', N'1265898274779303936', N'Serial', N'2', NULL, 3, CAST(N'2020-05-28 14:57:57.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265900183326035968', N'1265898094164185088', N'Const', N'1', N'HW', NULL, CAST(N'2020-05-28 14:58:17.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265900329224900608', N'1265898094164185088', N'Serial', N'2', NULL, 5, CAST(N'2020-05-28 14:58:52.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1266289911300886528', N'1265100131921825792', N'Const', N'1', N'CK', NULL, CAST(N'2020-05-29 16:46:56.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1266289987565916160', N'1265100131921825792', N'Date', N'2', N'yyyyMMdd', NULL, CAST(N'2020-05-29 16:47:14.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1266290026036072448', N'1265100131921825792', N'Daily', N'3', NULL, NULL, CAST(N'2020-05-29 16:47:23.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1267736367002030080', N'1267736253223145472', N'Const', N'1', N'BS', NULL, CAST(N'2020-06-02 16:34:37.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1267736443191562240', N'1267736253223145472', N'Date', N'2', N'yyyyMMdd', NULL, CAST(N'2020-06-02 16:34:56.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1267736484031500288', N'1267736253223145472', N'Daily', N'3', NULL, NULL, CAST(N'2020-06-02 16:35:05.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1270163946367619072', N'1270163864792600576', N'Const', N'1', N'U', NULL, CAST(N'2020-06-09 09:20:57.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1270163993817780224', N'1270163864792600576', N'Serial', N'2', NULL, NULL, CAST(N'2020-06-09 09:21:09.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1270238541992955904', N'1265893849943773184', N'Serial', N'2', NULL, 4, CAST(N'2020-06-09 14:17:22.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1270541710178390016', N'1270540906067398656', N'Parameter', N'1', N'TypeCode', NULL, CAST(N'2020-06-10 10:22:03.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1270541824234098688', N'1270540906067398656', N'ParaSerial', N'2', N'TypeCode', 3, CAST(N'2020-06-10 10:22:31.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1270550161231187968', N'1265895064618405888', N'Serial', N'2', NULL, NULL, CAST(N'2020-06-10 10:55:38.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1270619319910273024', N'1270618079855906816', N'Const', N'1', N'TP', NULL, CAST(N'2020-06-10 15:30:27.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1270619351799566336', N'1270618079855906816', N'Serial', N'2', NULL, NULL, CAST(N'2020-06-10 15:30:35.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1271269913335435264', N'1271269800823230464', N'Const', N'1', N'YK', NULL, CAST(N'2020-06-12 10:35:41.0000000' AS DateTime2), N'1269896948060524544', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1271270020755755008', N'1271269800823230464', N'Date', N'2', N'yyyyMMdd', NULL, CAST(N'2020-06-12 10:36:06.0000000' AS DateTime2), N'1269896948060524544', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1271270129061072896', N'1271269800823230464', N'Daily', N'3', NULL, NULL, CAST(N'2020-06-12 10:36:32.0000000' AS DateTime2), N'1269896948060524544', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1271270425057300480', N'1271270374046175232', N'Const', N'1', N'DB', NULL, CAST(N'2020-06-12 10:37:43.0000000' AS DateTime2), N'1269896948060524544', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1271270521756979200', N'1271270374046175232', N'Date', N'2', N'yyyyMMdd', NULL, CAST(N'2020-06-12 10:38:06.0000000' AS DateTime2), N'1269896948060524544', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1271270555168804864', N'1271270374046175232', N'Daily', N'3', NULL, NULL, CAST(N'2020-06-12 10:38:14.0000000' AS DateTime2), N'1269896948060524544', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1272713832183107584', N'1272713708254007296', N'Const', N'1', N'CK', NULL, CAST(N'2020-06-16 10:13:18.0000000' AS DateTime2), N'1269896267287236608', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1272713950454091776', N'1272713708254007296', N'Date', N'2', N'yyyyMM', NULL, CAST(N'2020-06-16 10:13:46.0000000' AS DateTime2), N'1269896267287236608', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1272713999217070080', N'1272713708254007296', N'Serial', N'3', NULL, 4, CAST(N'2020-06-16 10:13:57.0000000' AS DateTime2), N'1269896267287236608', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1274973810705043456', N'1274973582878838784', N'Const', N'1', N'XTCS', 4, CAST(N'2020-06-22 15:53:38.0000000' AS DateTime2), N'1269896764274511872', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1281112958432186368', N'1281112857743724544', N'Const', N'1', N'SH', NULL, CAST(N'2020-07-09 14:28:25.0000000' AS DateTime2), N'1269896267287236608', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1281113035745792000', N'1281112857743724544', N'Date', N'2', N'yyyyMMdd', NULL, CAST(N'2020-07-09 14:28:44.0000000' AS DateTime2), N'1269896267287236608', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1281113083426639872', N'1281112857743724544', N'Serial', N'3', NULL, NULL, CAST(N'2020-07-09 14:28:55.0000000' AS DateTime2), N'1269896267287236608', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1282506852428419072', N'1282506768873689088', N'Const', N'1', N'FH', NULL, CAST(N'2020-07-13 10:47:16.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1282506947609759744', N'1282506768873689088', N'Date', N'2', N'yyyyMMdd', NULL, CAST(N'2020-07-13 10:47:38.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1282506997232570368', N'1282506768873689088', N'Serial', N'3', NULL, NULL, CAST(N'2020-07-13 10:47:50.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1285853045862699008', N'1285847814198267904', N'Const', N'1', N'SH', NULL, CAST(N'2020-07-22 16:23:50.0000000' AS DateTime2), N'1278228362082390016', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1285853078263697408', N'1285847814198267904', N'Date', N'2', N'yyyyMMdd', NULL, CAST(N'2020-07-22 16:23:58.0000000' AS DateTime2), N'1278228362082390016', 0)
INSERT [dbo].[pb_barcoderule] ([Id], [TypeId], [Type], [Sort], [Rule], [length], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1285853106172596224', N'1285847814198267904', N'Serial', N'3', NULL, NULL, CAST(N'2020-07-22 16:24:05.0000000' AS DateTime2), N'1278228362082390016', 0)
INSERT [dbo].[pb_barcodetype] ([Id], [Code], [Name], [JoinChar], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1263374134566457344', N'PB_Supplier', N'供应商编号', N'', CAST(N'2020-05-21 15:40:40.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcodetype] ([Id], [Code], [Name], [JoinChar], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1264741457835593728', N'TD_InStorage', N'入库单号', N'-', CAST(N'2020-05-25 10:13:55.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcodetype] ([Id], [Code], [Name], [JoinChar], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265100131921825792', N'TD_OutStorage', N'出库单号', N'-', CAST(N'2020-05-26 09:59:10.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcodetype] ([Id], [Code], [Name], [JoinChar], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265890219614277632', N'PB_MaterialType', N'物料类型编号', N'-', CAST(N'2020-05-28 14:18:42.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcodetype] ([Id], [Code], [Name], [JoinChar], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265893849943773184', N'PB_Customer', N'客户编号', N'', CAST(N'2020-05-28 14:33:07.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcodetype] ([Id], [Code], [Name], [JoinChar], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265895064618405888', N'PB_Material', N'物料编号', N'-', CAST(N'2020-05-28 14:37:57.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcodetype] ([Id], [Code], [Name], [JoinChar], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265895658099838976', N'PB_Equipment', N'设备编码', N'-', CAST(N'2020-05-28 14:40:18.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcodetype] ([Id], [Code], [Name], [JoinChar], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265897755352502272', N'PB_Rack', N'货架编号', N'-', CAST(N'2020-05-28 14:48:38.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcodetype] ([Id], [Code], [Name], [JoinChar], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265897893827448832', N'PB_Laneway', N'巷道编号', N'-', CAST(N'2020-05-28 14:49:11.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcodetype] ([Id], [Code], [Name], [JoinChar], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265898000555708416', N'PB_StorArea', N'货区编号', N'-', CAST(N'2020-05-28 14:49:37.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcodetype] ([Id], [Code], [Name], [JoinChar], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265898094164185088', N'PB_Location', N'货位编号', N'-', CAST(N'2020-05-28 14:49:59.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcodetype] ([Id], [Code], [Name], [JoinChar], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1265898274779303936', N'PB_Storage', N'仓库编号', N'-', CAST(N'2020-05-28 14:50:42.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcodetype] ([Id], [Code], [Name], [JoinChar], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1267736253223145472', N'TD_Bad', N'报损单号', N'-', CAST(N'2020-06-02 16:34:10.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcodetype] ([Id], [Code], [Name], [JoinChar], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1270163864792600576', N'PB_Measure', N'计量单位编号', N'', CAST(N'2020-06-09 09:20:38.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcodetype] ([Id], [Code], [Name], [JoinChar], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1270540906067398656', N'PB_Tray', N'托盘编号', N'-', CAST(N'2020-06-10 10:18:52.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcodetype] ([Id], [Code], [Name], [JoinChar], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1270618079855906816', N'PB_TrayType', N'托盘类型', N'', CAST(N'2020-06-10 15:25:31.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcodetype] ([Id], [Code], [Name], [JoinChar], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1271269800823230464', N'TD_Move', N'移库单号', N'-', CAST(N'2020-06-12 10:35:14.0000000' AS DateTime2), N'1269896948060524544', 0)
INSERT [dbo].[pb_barcodetype] ([Id], [Code], [Name], [JoinChar], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1271270374046175232', N'TD_Allocate', N'调拨', N'-', CAST(N'2020-06-12 10:37:30.0000000' AS DateTime2), N'1269896948060524544', 0)
INSERT [dbo].[pb_barcodetype] ([Id], [Code], [Name], [JoinChar], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1272713708254007296', N'TD_Check', N'盘点编号', N'-', CAST(N'2020-06-16 10:12:48.0000000' AS DateTime2), N'1269896267287236608', 0)
INSERT [dbo].[pb_barcodetype] ([Id], [Code], [Name], [JoinChar], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1274973582878838784', N'Base_Parameter', N'系统参数编号', N'', CAST(N'2020-06-22 15:52:44.0000000' AS DateTime2), N'1269896764274511872', 0)
INSERT [dbo].[pb_barcodetype] ([Id], [Code], [Name], [JoinChar], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1281112857743724544', N'TD_Receiving', N'收货单编码', N'-', CAST(N'2020-07-09 14:28:01.0000000' AS DateTime2), N'1269896267287236608', 0)
INSERT [dbo].[pb_barcodetype] ([Id], [Code], [Name], [JoinChar], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1282506768873689088', N'TD_Send', N'发货编码', N'-', CAST(N'2020-07-13 10:46:56.0000000' AS DateTime2), N'Admin', 0)
INSERT [dbo].[pb_barcodetype] ([Id], [Code], [Name], [JoinChar], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1285847814198267904', N'PD_Plan', N'计划表', N'-', CAST(N'2020-07-22 16:03:03.0000000' AS DateTime2), N'1278228362082390016', 0)
INSERT [dbo].[pb_storage] ([Id], [Code], [Name], [Type], [IsTray], [IsZone], [Disable], [IsDefault], [Remarks], [CreateTime], [CreatorId], [Deleted]) VALUES (N'1', N'CK001', N'默认仓库', N'Plane', 0, 0, 1, 0, NULL, CAST(N'2020-08-26 14:01:58.0000000' AS DateTime2), N'Admin', 0)
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_Base_EnumItem]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_Base_EnumItem] ON [dbo].[base_enumitem]
(
	[EnumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_IT_LocalDetail]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_IT_LocalDetail] ON [dbo].[it_localdetail]
(
	[MeasureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_IT_LocalDetail2]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_IT_LocalDetail2] ON [dbo].[it_localdetail]
(
	[InStorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_IT_LocalDetail3]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_IT_LocalDetail3] ON [dbo].[it_localdetail]
(
	[LocalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_IT_LocalDetail4]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_IT_LocalDetail4] ON [dbo].[it_localdetail]
(
	[MaterialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_IT_LocalDetail5]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_IT_LocalDetail5] ON [dbo].[it_localdetail]
(
	[ZoneId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_IT_LocalDetail6]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_IT_LocalDetail6] ON [dbo].[it_localdetail]
(
	[StorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_IT_LocalDetail7]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_IT_LocalDetail7] ON [dbo].[it_localdetail]
(
	[TrayId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_IT_LocalMaterial]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_IT_LocalMaterial] ON [dbo].[it_localmaterial]
(
	[MeasureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_IT_LocalMaterial2]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_IT_LocalMaterial2] ON [dbo].[it_localmaterial]
(
	[MaterialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_IT_LocalMaterial3]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_IT_LocalMaterial3] ON [dbo].[it_localmaterial]
(
	[StorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_IT_LocalMaterial4]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_IT_LocalMaterial4] ON [dbo].[it_localmaterial]
(
	[ZoneId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_IT_LocalMaterial5]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_IT_LocalMaterial5] ON [dbo].[it_localmaterial]
(
	[TrayId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_IT_LocalMaterial6]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_IT_LocalMaterial6] ON [dbo].[it_localmaterial]
(
	[LocalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_IT_RecordBook]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_IT_RecordBook] ON [dbo].[it_recordbook]
(
	[MeasureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_IT_RecordBook2]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_IT_RecordBook2] ON [dbo].[it_recordbook]
(
	[FromLocalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_IT_RecordBook3]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_IT_RecordBook3] ON [dbo].[it_recordbook]
(
	[ToLocalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_IT_RecordBook4]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_IT_RecordBook4] ON [dbo].[it_recordbook]
(
	[ToStorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_IT_RecordBook5]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_IT_RecordBook5] ON [dbo].[it_recordbook]
(
	[FromStorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_IT_RecordBook6]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_IT_RecordBook6] ON [dbo].[it_recordbook]
(
	[MaterialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_PB_Address]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_PB_Address] ON [dbo].[pb_address]
(
	[SupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_PB_Address2]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_PB_Address2] ON [dbo].[pb_address]
(
	[CusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_PB_AreaMaterial2]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_PB_AreaMaterial2] ON [dbo].[pb_areamaterial]
(
	[MaterialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_PB_BarCode]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_PB_BarCode] ON [dbo].[pb_barcode]
(
	[BarCodeTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_PB_BarCodeRule]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_PB_BarCodeRule] ON [dbo].[pb_barcoderule]
(
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_PB_BarCodeSerial]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_PB_BarCodeSerial] ON [dbo].[pb_barcodeserial]
(
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [Code]    Script Date: 2023/12/04 16:50:28 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Code] ON [dbo].[pb_equipment]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_PB_FeedPoint_LaneId]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_PB_FeedPoint_LaneId] ON [dbo].[pb_feedpoint]
(
	[LaneId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_PB_FeedPoint_StorId]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_PB_FeedPoint_StorId] ON [dbo].[pb_feedpoint]
(
	[StorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_PB_Laneway]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_PB_Laneway] ON [dbo].[pb_laneway]
(
	[StorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_PB_LocalTray2]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_PB_LocalTray2] ON [dbo].[pb_localtray]
(
	[TrayTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_PB_Location1]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_PB_Location1] ON [dbo].[pb_location]
(
	[StorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_PB_Location2]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_PB_Location2] ON [dbo].[pb_location]
(
	[AreaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_PB_Location3]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_PB_Location3] ON [dbo].[pb_location]
(
	[LanewayId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_PB_Location4]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_PB_Location4] ON [dbo].[pb_location]
(
	[RackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_PB_Material]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_PB_Material] ON [dbo].[pb_material]
(
	[MeasureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_PB_Material2]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_PB_Material2] ON [dbo].[pb_material]
(
	[MaterialTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_PB_MaterialPoint2]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_PB_MaterialPoint2] ON [dbo].[pb_materialpoint]
(
	[MaterialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_PB_Rack]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_PB_Rack] ON [dbo].[pb_rack]
(
	[StorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_PB_StorArea]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_PB_StorArea] ON [dbo].[pb_storarea]
(
	[StorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_PB_Tray]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_PB_Tray] ON [dbo].[pb_tray]
(
	[LocalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_PB_Tray2]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_PB_Tray2] ON [dbo].[pb_tray]
(
	[TrayTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_PB_TrayMaterial2]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_PB_TrayMaterial2] ON [dbo].[pb_traymaterial]
(
	[TrayTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_PB_TrayZone]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_PB_TrayZone] ON [dbo].[pb_trayzone]
(
	[TrayTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_Allocate]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_Allocate] ON [dbo].[td_allocate]
(
	[EquId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_Allocate2]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_Allocate2] ON [dbo].[td_allocate]
(
	[ToStorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_Allocate3]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_Allocate3] ON [dbo].[td_allocate]
(
	[StorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_Allocate4]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_Allocate4] ON [dbo].[td_allocate]
(
	[ToLocalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_AllocateDetail]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_AllocateDetail] ON [dbo].[td_allocatedetail]
(
	[FromTrayId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_AllocateDetail2]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_AllocateDetail2] ON [dbo].[td_allocatedetail]
(
	[FromZoneId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_AllocateDetail3]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_AllocateDetail3] ON [dbo].[td_allocatedetail]
(
	[ToStorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_AllocateDetail4]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_AllocateDetail4] ON [dbo].[td_allocatedetail]
(
	[ToLocalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_AllocateDetail5]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_AllocateDetail5] ON [dbo].[td_allocatedetail]
(
	[FromlocalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_AllocateDetail6]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_AllocateDetail6] ON [dbo].[td_allocatedetail]
(
	[AllocateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_AllocateDetail7]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_AllocateDetail7] ON [dbo].[td_allocatedetail]
(
	[MaterialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_AllocateDetail8]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_AllocateDetail8] ON [dbo].[td_allocatedetail]
(
	[FromStorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_Bad]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_Bad] ON [dbo].[td_bad]
(
	[EquId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_Bad2]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_Bad2] ON [dbo].[td_bad]
(
	[StorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_BadDetail]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_BadDetail] ON [dbo].[td_baddetail]
(
	[StorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_BadDetail2]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_BadDetail2] ON [dbo].[td_baddetail]
(
	[ToLocalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_BadDetail3]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_BadDetail3] ON [dbo].[td_baddetail]
(
	[BadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_BadDetail4]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_BadDetail4] ON [dbo].[td_baddetail]
(
	[FromLocalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_BadDetail5]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_BadDetail5] ON [dbo].[td_baddetail]
(
	[ZoneId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_BadDetail6]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_BadDetail6] ON [dbo].[td_baddetail]
(
	[MaterialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_BadDetail7]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_BadDetail7] ON [dbo].[td_baddetail]
(
	[TrayId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_Check]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_Check] ON [dbo].[td_check]
(
	[StorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_Reference_119]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_Reference_119] ON [dbo].[td_checkarea]
(
	[StoarAreaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_CheckData]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_CheckData] ON [dbo].[td_checkdata]
(
	[MaterialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_CheckData2]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_CheckData2] ON [dbo].[td_checkdata]
(
	[StorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_CheckData3]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_CheckData3] ON [dbo].[td_checkdata]
(
	[CheckId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_CheckData4]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_CheckData4] ON [dbo].[td_checkdata]
(
	[localId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_CheckData5]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_CheckData5] ON [dbo].[td_checkdata]
(
	[TrayId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_CheckData6]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_CheckData6] ON [dbo].[td_checkdata]
(
	[ZoneId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_CheckMaterial]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_CheckMaterial] ON [dbo].[td_checkmaterial]
(
	[MaterialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_InStorage]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_InStorage] ON [dbo].[td_instorage]
(
	[EqId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_InStorage2]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_InStorage2] ON [dbo].[td_instorage]
(
	[AddrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_InStorage3]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_InStorage3] ON [dbo].[td_instorage]
(
	[StorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_InStorage4]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_InStorage4] ON [dbo].[td_instorage]
(
	[SupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_InStorDetail]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_InStorDetail] ON [dbo].[td_instordetail]
(
	[MaterialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_InStorDetail2]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_InStorDetail2] ON [dbo].[td_instordetail]
(
	[LocalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_InStorDetail3]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_InStorDetail3] ON [dbo].[td_instordetail]
(
	[InStorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_InStorDetail4]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_InStorDetail4] ON [dbo].[td_instordetail]
(
	[ZoneId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_InStorDetail5]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_InStorDetail5] ON [dbo].[td_instordetail]
(
	[TrayId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_InStorDetail6]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_InStorDetail6] ON [dbo].[td_instordetail]
(
	[StorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_Move]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_Move] ON [dbo].[td_move]
(
	[EquId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_Move2]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_Move2] ON [dbo].[td_move]
(
	[StorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_MoveDetail]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_MoveDetail] ON [dbo].[td_movedetail]
(
	[ToZoneId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_MoveDetail2]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_MoveDetail2] ON [dbo].[td_movedetail]
(
	[FromZoneId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_MoveDetail3]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_MoveDetail3] ON [dbo].[td_movedetail]
(
	[ToLocalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_MoveDetail4]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_MoveDetail4] ON [dbo].[td_movedetail]
(
	[FromTrayId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_MoveDetail5]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_MoveDetail5] ON [dbo].[td_movedetail]
(
	[MoveId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_MoveDetail6]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_MoveDetail6] ON [dbo].[td_movedetail]
(
	[ToTrayId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_MoveDetail7]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_MoveDetail7] ON [dbo].[td_movedetail]
(
	[FromLocalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_MoveDetail8]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_MoveDetail8] ON [dbo].[td_movedetail]
(
	[MaterialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_MoveDetail9]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_MoveDetail9] ON [dbo].[td_movedetail]
(
	[StorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_OutStorage]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_OutStorage] ON [dbo].[td_outstorage]
(
	[StorageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_OutStorage2]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_OutStorage2] ON [dbo].[td_outstorage]
(
	[AddrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_OutStorage3]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_OutStorage3] ON [dbo].[td_outstorage]
(
	[CusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_OutStorage4]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_OutStorage4] ON [dbo].[td_outstorage]
(
	[EquId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_OutStorage5]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_OutStorage5] ON [dbo].[td_outstorage]
(
	[SendId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_OutStorDetail]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_OutStorDetail] ON [dbo].[td_outstordetail]
(
	[LocalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_OutStorDetail2]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_OutStorDetail2] ON [dbo].[td_outstordetail]
(
	[ZoneId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_OutStorDetail3]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_OutStorDetail3] ON [dbo].[td_outstordetail]
(
	[OutStorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_OutStorDetail4]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_OutStorDetail4] ON [dbo].[td_outstordetail]
(
	[StorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_OutStorDetail5]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_OutStorDetail5] ON [dbo].[td_outstordetail]
(
	[TrayId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_OutStorDetail6]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_OutStorDetail6] ON [dbo].[td_outstordetail]
(
	[MaterialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_RecDetail_LocalId]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_RecDetail_LocalId] ON [dbo].[td_recdetail]
(
	[LocaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_RecDetail_MaterialId]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_RecDetail_MaterialId] ON [dbo].[td_recdetail]
(
	[MaterialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_RecDetail_MeasureId]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_RecDetail_MeasureId] ON [dbo].[td_recdetail]
(
	[MeasureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_RecDetail_RecId]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_RecDetail_RecId] ON [dbo].[td_recdetail]
(
	[RecId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_RecDetail_StorId]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_RecDetail_StorId] ON [dbo].[td_recdetail]
(
	[StorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_Receiving_StorId]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_Receiving_StorId] ON [dbo].[td_receiving]
(
	[StorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_Receiving_SupId]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_Receiving_SupId] ON [dbo].[td_receiving]
(
	[SupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_Send1]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_Send1] ON [dbo].[td_send]
(
	[StorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_Send2]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_Send2] ON [dbo].[td_send]
(
	[CusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_Send3]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_Send3] ON [dbo].[td_send]
(
	[AddrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_SendDetail]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_SendDetail] ON [dbo].[td_senddetail]
(
	[SendId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_SendDetail2]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_SendDetail2] ON [dbo].[td_senddetail]
(
	[StorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_SendDetail3]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_SendDetail3] ON [dbo].[td_senddetail]
(
	[MaterialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_SendDetail4]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_SendDetail4] ON [dbo].[td_senddetail]
(
	[MeasureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [FK_TD_SendDetail5]    Script Date: 2023/12/04 16:50:28 ******/
CREATE NONCLUSTERED INDEX [FK_TD_SendDetail5] ON [dbo].[td_senddetail]
(
	[LocalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[base_enumitem]  WITH CHECK ADD  CONSTRAINT [FK_Base_EnumItem] FOREIGN KEY([EnumId])
REFERENCES [dbo].[base_enum] ([Id])
GO
ALTER TABLE [dbo].[base_enumitem] CHECK CONSTRAINT [FK_Base_EnumItem]
GO
ALTER TABLE [dbo].[it_localdetail]  WITH CHECK ADD  CONSTRAINT [FK_IT_LocalDetail] FOREIGN KEY([MeasureId])
REFERENCES [dbo].[pb_measure] ([Id])
GO
ALTER TABLE [dbo].[it_localdetail] CHECK CONSTRAINT [FK_IT_LocalDetail]
GO
ALTER TABLE [dbo].[it_localdetail]  WITH CHECK ADD  CONSTRAINT [FK_IT_LocalDetail2] FOREIGN KEY([InStorId])
REFERENCES [dbo].[td_instorage] ([Id])
GO
ALTER TABLE [dbo].[it_localdetail] CHECK CONSTRAINT [FK_IT_LocalDetail2]
GO
ALTER TABLE [dbo].[it_localdetail]  WITH CHECK ADD  CONSTRAINT [FK_IT_LocalDetail3] FOREIGN KEY([LocalId])
REFERENCES [dbo].[pb_location] ([Id])
GO
ALTER TABLE [dbo].[it_localdetail] CHECK CONSTRAINT [FK_IT_LocalDetail3]
GO
ALTER TABLE [dbo].[it_localdetail]  WITH CHECK ADD  CONSTRAINT [FK_IT_LocalDetail4] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[pb_material] ([Id])
GO
ALTER TABLE [dbo].[it_localdetail] CHECK CONSTRAINT [FK_IT_LocalDetail4]
GO
ALTER TABLE [dbo].[it_localdetail]  WITH CHECK ADD  CONSTRAINT [FK_IT_LocalDetail5] FOREIGN KEY([ZoneId])
REFERENCES [dbo].[pb_trayzone] ([Id])
GO
ALTER TABLE [dbo].[it_localdetail] CHECK CONSTRAINT [FK_IT_LocalDetail5]
GO
ALTER TABLE [dbo].[it_localdetail]  WITH CHECK ADD  CONSTRAINT [FK_IT_LocalDetail6] FOREIGN KEY([StorId])
REFERENCES [dbo].[pb_storage] ([Id])
GO
ALTER TABLE [dbo].[it_localdetail] CHECK CONSTRAINT [FK_IT_LocalDetail6]
GO
ALTER TABLE [dbo].[it_localdetail]  WITH CHECK ADD  CONSTRAINT [FK_IT_LocalDetail7] FOREIGN KEY([TrayId])
REFERENCES [dbo].[pb_tray] ([Id])
GO
ALTER TABLE [dbo].[it_localdetail] CHECK CONSTRAINT [FK_IT_LocalDetail7]
GO
ALTER TABLE [dbo].[it_localmaterial]  WITH CHECK ADD  CONSTRAINT [FK_IT_LocalMaterial] FOREIGN KEY([MeasureId])
REFERENCES [dbo].[pb_measure] ([Id])
GO
ALTER TABLE [dbo].[it_localmaterial] CHECK CONSTRAINT [FK_IT_LocalMaterial]
GO
ALTER TABLE [dbo].[it_localmaterial]  WITH CHECK ADD  CONSTRAINT [FK_IT_LocalMaterial2] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[pb_material] ([Id])
GO
ALTER TABLE [dbo].[it_localmaterial] CHECK CONSTRAINT [FK_IT_LocalMaterial2]
GO
ALTER TABLE [dbo].[it_localmaterial]  WITH CHECK ADD  CONSTRAINT [FK_IT_LocalMaterial3] FOREIGN KEY([StorId])
REFERENCES [dbo].[pb_storage] ([Id])
GO
ALTER TABLE [dbo].[it_localmaterial] CHECK CONSTRAINT [FK_IT_LocalMaterial3]
GO
ALTER TABLE [dbo].[it_localmaterial]  WITH CHECK ADD  CONSTRAINT [FK_IT_LocalMaterial4] FOREIGN KEY([ZoneId])
REFERENCES [dbo].[pb_trayzone] ([Id])
GO
ALTER TABLE [dbo].[it_localmaterial] CHECK CONSTRAINT [FK_IT_LocalMaterial4]
GO
ALTER TABLE [dbo].[it_localmaterial]  WITH CHECK ADD  CONSTRAINT [FK_IT_LocalMaterial5] FOREIGN KEY([TrayId])
REFERENCES [dbo].[pb_tray] ([Id])
GO
ALTER TABLE [dbo].[it_localmaterial] CHECK CONSTRAINT [FK_IT_LocalMaterial5]
GO
ALTER TABLE [dbo].[it_localmaterial]  WITH CHECK ADD  CONSTRAINT [FK_IT_LocalMaterial6] FOREIGN KEY([LocalId])
REFERENCES [dbo].[pb_location] ([Id])
GO
ALTER TABLE [dbo].[it_localmaterial] CHECK CONSTRAINT [FK_IT_LocalMaterial6]
GO
ALTER TABLE [dbo].[it_recordbook]  WITH CHECK ADD  CONSTRAINT [FK_IT_RecordBook] FOREIGN KEY([MeasureId])
REFERENCES [dbo].[pb_measure] ([Id])
GO
ALTER TABLE [dbo].[it_recordbook] CHECK CONSTRAINT [FK_IT_RecordBook]
GO
ALTER TABLE [dbo].[it_recordbook]  WITH CHECK ADD  CONSTRAINT [FK_IT_RecordBook2] FOREIGN KEY([FromLocalId])
REFERENCES [dbo].[pb_location] ([Id])
GO
ALTER TABLE [dbo].[it_recordbook] CHECK CONSTRAINT [FK_IT_RecordBook2]
GO
ALTER TABLE [dbo].[it_recordbook]  WITH CHECK ADD  CONSTRAINT [FK_IT_RecordBook3] FOREIGN KEY([ToLocalId])
REFERENCES [dbo].[pb_location] ([Id])
GO
ALTER TABLE [dbo].[it_recordbook] CHECK CONSTRAINT [FK_IT_RecordBook3]
GO
ALTER TABLE [dbo].[it_recordbook]  WITH CHECK ADD  CONSTRAINT [FK_IT_RecordBook4] FOREIGN KEY([ToStorId])
REFERENCES [dbo].[pb_storage] ([Id])
GO
ALTER TABLE [dbo].[it_recordbook] CHECK CONSTRAINT [FK_IT_RecordBook4]
GO
ALTER TABLE [dbo].[it_recordbook]  WITH CHECK ADD  CONSTRAINT [FK_IT_RecordBook5] FOREIGN KEY([FromStorId])
REFERENCES [dbo].[pb_storage] ([Id])
GO
ALTER TABLE [dbo].[it_recordbook] CHECK CONSTRAINT [FK_IT_RecordBook5]
GO
ALTER TABLE [dbo].[it_recordbook]  WITH CHECK ADD  CONSTRAINT [FK_IT_RecordBook6] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[pb_material] ([Id])
GO
ALTER TABLE [dbo].[it_recordbook] CHECK CONSTRAINT [FK_IT_RecordBook6]
GO
ALTER TABLE [dbo].[pb_address]  WITH CHECK ADD  CONSTRAINT [FK_PB_Address] FOREIGN KEY([SupId])
REFERENCES [dbo].[pb_supplier] ([Id])
GO
ALTER TABLE [dbo].[pb_address] CHECK CONSTRAINT [FK_PB_Address]
GO
ALTER TABLE [dbo].[pb_address]  WITH CHECK ADD  CONSTRAINT [FK_PB_Address2] FOREIGN KEY([CusId])
REFERENCES [dbo].[pb_customer] ([Id])
GO
ALTER TABLE [dbo].[pb_address] CHECK CONSTRAINT [FK_PB_Address2]
GO
ALTER TABLE [dbo].[pb_areamaterial]  WITH CHECK ADD  CONSTRAINT [FK_PB_AreaMaterial1] FOREIGN KEY([AreaId])
REFERENCES [dbo].[pb_storarea] ([Id])
GO
ALTER TABLE [dbo].[pb_areamaterial] CHECK CONSTRAINT [FK_PB_AreaMaterial1]
GO
ALTER TABLE [dbo].[pb_areamaterial]  WITH CHECK ADD  CONSTRAINT [FK_PB_AreaMaterial2] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[pb_material] ([Id])
GO
ALTER TABLE [dbo].[pb_areamaterial] CHECK CONSTRAINT [FK_PB_AreaMaterial2]
GO
ALTER TABLE [dbo].[pb_barcode]  WITH CHECK ADD  CONSTRAINT [FK_PB_BarCode] FOREIGN KEY([BarCodeTypeId])
REFERENCES [dbo].[pb_barcodetype] ([Id])
GO
ALTER TABLE [dbo].[pb_barcode] CHECK CONSTRAINT [FK_PB_BarCode]
GO
ALTER TABLE [dbo].[pb_barcoderule]  WITH CHECK ADD  CONSTRAINT [FK_PB_BarCodeRule] FOREIGN KEY([TypeId])
REFERENCES [dbo].[pb_barcodetype] ([Id])
GO
ALTER TABLE [dbo].[pb_barcoderule] CHECK CONSTRAINT [FK_PB_BarCodeRule]
GO
ALTER TABLE [dbo].[pb_barcodeserial]  WITH CHECK ADD  CONSTRAINT [FK_PB_BarCodeSerial] FOREIGN KEY([TypeId])
REFERENCES [dbo].[pb_barcodetype] ([Id])
GO
ALTER TABLE [dbo].[pb_barcodeserial] CHECK CONSTRAINT [FK_PB_BarCodeSerial]
GO
ALTER TABLE [dbo].[pb_feedpoint]  WITH CHECK ADD  CONSTRAINT [FK_PB_FeedPoint_LaneId] FOREIGN KEY([LaneId])
REFERENCES [dbo].[pb_laneway] ([Id])
GO
ALTER TABLE [dbo].[pb_feedpoint] CHECK CONSTRAINT [FK_PB_FeedPoint_LaneId]
GO
ALTER TABLE [dbo].[pb_feedpoint]  WITH CHECK ADD  CONSTRAINT [FK_PB_FeedPoint_StorId] FOREIGN KEY([StorId])
REFERENCES [dbo].[pb_storage] ([Id])
GO
ALTER TABLE [dbo].[pb_feedpoint] CHECK CONSTRAINT [FK_PB_FeedPoint_StorId]
GO
ALTER TABLE [dbo].[pb_laneway]  WITH CHECK ADD  CONSTRAINT [FK_PB_Laneway] FOREIGN KEY([StorId])
REFERENCES [dbo].[pb_storage] ([Id])
GO
ALTER TABLE [dbo].[pb_laneway] CHECK CONSTRAINT [FK_PB_Laneway]
GO
ALTER TABLE [dbo].[pb_localtray]  WITH CHECK ADD  CONSTRAINT [FK_PB_LocalTray1] FOREIGN KEY([LocalId])
REFERENCES [dbo].[pb_location] ([Id])
GO
ALTER TABLE [dbo].[pb_localtray] CHECK CONSTRAINT [FK_PB_LocalTray1]
GO
ALTER TABLE [dbo].[pb_localtray]  WITH CHECK ADD  CONSTRAINT [FK_PB_LocalTray2] FOREIGN KEY([TrayTypeId])
REFERENCES [dbo].[pb_traytype] ([Id])
GO
ALTER TABLE [dbo].[pb_localtray] CHECK CONSTRAINT [FK_PB_LocalTray2]
GO
ALTER TABLE [dbo].[pb_location]  WITH CHECK ADD  CONSTRAINT [FK_PB_Location1] FOREIGN KEY([StorId])
REFERENCES [dbo].[pb_storage] ([Id])
GO
ALTER TABLE [dbo].[pb_location] CHECK CONSTRAINT [FK_PB_Location1]
GO
ALTER TABLE [dbo].[pb_location]  WITH CHECK ADD  CONSTRAINT [FK_PB_Location2] FOREIGN KEY([AreaId])
REFERENCES [dbo].[pb_storarea] ([Id])
GO
ALTER TABLE [dbo].[pb_location] CHECK CONSTRAINT [FK_PB_Location2]
GO
ALTER TABLE [dbo].[pb_location]  WITH CHECK ADD  CONSTRAINT [FK_PB_Location3] FOREIGN KEY([LanewayId])
REFERENCES [dbo].[pb_laneway] ([Id])
GO
ALTER TABLE [dbo].[pb_location] CHECK CONSTRAINT [FK_PB_Location3]
GO
ALTER TABLE [dbo].[pb_location]  WITH CHECK ADD  CONSTRAINT [FK_PB_Location4] FOREIGN KEY([RackId])
REFERENCES [dbo].[pb_rack] ([Id])
GO
ALTER TABLE [dbo].[pb_location] CHECK CONSTRAINT [FK_PB_Location4]
GO
ALTER TABLE [dbo].[pb_material]  WITH CHECK ADD  CONSTRAINT [FK_PB_Material] FOREIGN KEY([MeasureId])
REFERENCES [dbo].[pb_measure] ([Id])
GO
ALTER TABLE [dbo].[pb_material] CHECK CONSTRAINT [FK_PB_Material]
GO
ALTER TABLE [dbo].[pb_material]  WITH CHECK ADD  CONSTRAINT [FK_PB_Material2] FOREIGN KEY([MaterialTypeId])
REFERENCES [dbo].[pb_materialtype] ([Id])
GO
ALTER TABLE [dbo].[pb_material] CHECK CONSTRAINT [FK_PB_Material2]
GO
ALTER TABLE [dbo].[pb_materialpoint]  WITH CHECK ADD  CONSTRAINT [FK_PB_MaterialPoint_MaterailId1] FOREIGN KEY([PointId])
REFERENCES [dbo].[pb_feedpoint] ([Id])
GO
ALTER TABLE [dbo].[pb_materialpoint] CHECK CONSTRAINT [FK_PB_MaterialPoint_MaterailId1]
GO
ALTER TABLE [dbo].[pb_materialpoint]  WITH CHECK ADD  CONSTRAINT [FK_PB_MaterialPoint_MaterailId2] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[pb_material] ([Id])
GO
ALTER TABLE [dbo].[pb_materialpoint] CHECK CONSTRAINT [FK_PB_MaterialPoint_MaterailId2]
GO
ALTER TABLE [dbo].[pb_rack]  WITH CHECK ADD  CONSTRAINT [FK_PB_Rack] FOREIGN KEY([StorId])
REFERENCES [dbo].[pb_storage] ([Id])
GO
ALTER TABLE [dbo].[pb_rack] CHECK CONSTRAINT [FK_PB_Rack]
GO
ALTER TABLE [dbo].[pb_storarea]  WITH CHECK ADD  CONSTRAINT [FK_PB_StorArea] FOREIGN KEY([StorId])
REFERENCES [dbo].[pb_storage] ([Id])
GO
ALTER TABLE [dbo].[pb_storarea] CHECK CONSTRAINT [FK_PB_StorArea]
GO
ALTER TABLE [dbo].[pb_tray]  WITH CHECK ADD  CONSTRAINT [FK_PB_Tray] FOREIGN KEY([LocalId])
REFERENCES [dbo].[pb_location] ([Id])
GO
ALTER TABLE [dbo].[pb_tray] CHECK CONSTRAINT [FK_PB_Tray]
GO
ALTER TABLE [dbo].[pb_tray]  WITH CHECK ADD  CONSTRAINT [FK_PB_Tray2] FOREIGN KEY([TrayTypeId])
REFERENCES [dbo].[pb_traytype] ([Id])
GO
ALTER TABLE [dbo].[pb_tray] CHECK CONSTRAINT [FK_PB_Tray2]
GO
ALTER TABLE [dbo].[pb_traymaterial]  WITH CHECK ADD  CONSTRAINT [FK_PB_TrayMaterial1] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[pb_material] ([Id])
GO
ALTER TABLE [dbo].[pb_traymaterial] CHECK CONSTRAINT [FK_PB_TrayMaterial1]
GO
ALTER TABLE [dbo].[pb_traymaterial]  WITH CHECK ADD  CONSTRAINT [FK_PB_TrayMaterial2] FOREIGN KEY([TrayTypeId])
REFERENCES [dbo].[pb_traytype] ([Id])
GO
ALTER TABLE [dbo].[pb_traymaterial] CHECK CONSTRAINT [FK_PB_TrayMaterial2]
GO
ALTER TABLE [dbo].[pb_trayzone]  WITH CHECK ADD  CONSTRAINT [FK_PB_TrayZone] FOREIGN KEY([TrayTypeId])
REFERENCES [dbo].[pb_traytype] ([Id])
GO
ALTER TABLE [dbo].[pb_trayzone] CHECK CONSTRAINT [FK_PB_TrayZone]
GO
ALTER TABLE [dbo].[td_allocate]  WITH CHECK ADD  CONSTRAINT [FK_TD_Allocate] FOREIGN KEY([EquId])
REFERENCES [dbo].[pb_equipment] ([Id])
GO
ALTER TABLE [dbo].[td_allocate] CHECK CONSTRAINT [FK_TD_Allocate]
GO
ALTER TABLE [dbo].[td_allocate]  WITH CHECK ADD  CONSTRAINT [FK_TD_Allocate2] FOREIGN KEY([ToStorId])
REFERENCES [dbo].[pb_storage] ([Id])
GO
ALTER TABLE [dbo].[td_allocate] CHECK CONSTRAINT [FK_TD_Allocate2]
GO
ALTER TABLE [dbo].[td_allocate]  WITH CHECK ADD  CONSTRAINT [FK_TD_Allocate3] FOREIGN KEY([StorId])
REFERENCES [dbo].[pb_storage] ([Id])
GO
ALTER TABLE [dbo].[td_allocate] CHECK CONSTRAINT [FK_TD_Allocate3]
GO
ALTER TABLE [dbo].[td_allocate]  WITH CHECK ADD  CONSTRAINT [FK_TD_Allocate4] FOREIGN KEY([ToLocalId])
REFERENCES [dbo].[pb_location] ([Id])
GO
ALTER TABLE [dbo].[td_allocate] CHECK CONSTRAINT [FK_TD_Allocate4]
GO
ALTER TABLE [dbo].[td_allocatedetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_AllocateDetail] FOREIGN KEY([FromTrayId])
REFERENCES [dbo].[pb_tray] ([Id])
GO
ALTER TABLE [dbo].[td_allocatedetail] CHECK CONSTRAINT [FK_TD_AllocateDetail]
GO
ALTER TABLE [dbo].[td_allocatedetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_AllocateDetail2] FOREIGN KEY([FromZoneId])
REFERENCES [dbo].[pb_trayzone] ([Id])
GO
ALTER TABLE [dbo].[td_allocatedetail] CHECK CONSTRAINT [FK_TD_AllocateDetail2]
GO
ALTER TABLE [dbo].[td_allocatedetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_AllocateDetail3] FOREIGN KEY([ToStorId])
REFERENCES [dbo].[pb_storage] ([Id])
GO
ALTER TABLE [dbo].[td_allocatedetail] CHECK CONSTRAINT [FK_TD_AllocateDetail3]
GO
ALTER TABLE [dbo].[td_allocatedetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_AllocateDetail4] FOREIGN KEY([ToLocalId])
REFERENCES [dbo].[pb_location] ([Id])
GO
ALTER TABLE [dbo].[td_allocatedetail] CHECK CONSTRAINT [FK_TD_AllocateDetail4]
GO
ALTER TABLE [dbo].[td_allocatedetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_AllocateDetail5] FOREIGN KEY([FromlocalId])
REFERENCES [dbo].[pb_location] ([Id])
GO
ALTER TABLE [dbo].[td_allocatedetail] CHECK CONSTRAINT [FK_TD_AllocateDetail5]
GO
ALTER TABLE [dbo].[td_allocatedetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_AllocateDetail6] FOREIGN KEY([AllocateId])
REFERENCES [dbo].[td_allocate] ([Id])
GO
ALTER TABLE [dbo].[td_allocatedetail] CHECK CONSTRAINT [FK_TD_AllocateDetail6]
GO
ALTER TABLE [dbo].[td_allocatedetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_AllocateDetail7] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[pb_material] ([Id])
GO
ALTER TABLE [dbo].[td_allocatedetail] CHECK CONSTRAINT [FK_TD_AllocateDetail7]
GO
ALTER TABLE [dbo].[td_allocatedetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_AllocateDetail8] FOREIGN KEY([FromStorId])
REFERENCES [dbo].[pb_storage] ([Id])
GO
ALTER TABLE [dbo].[td_allocatedetail] CHECK CONSTRAINT [FK_TD_AllocateDetail8]
GO
ALTER TABLE [dbo].[td_bad]  WITH CHECK ADD  CONSTRAINT [FK_TD_Bad] FOREIGN KEY([EquId])
REFERENCES [dbo].[pb_equipment] ([Id])
GO
ALTER TABLE [dbo].[td_bad] CHECK CONSTRAINT [FK_TD_Bad]
GO
ALTER TABLE [dbo].[td_bad]  WITH CHECK ADD  CONSTRAINT [FK_TD_Bad2] FOREIGN KEY([StorId])
REFERENCES [dbo].[pb_storage] ([Id])
GO
ALTER TABLE [dbo].[td_bad] CHECK CONSTRAINT [FK_TD_Bad2]
GO
ALTER TABLE [dbo].[td_baddetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_BadDetail] FOREIGN KEY([StorId])
REFERENCES [dbo].[pb_storage] ([Id])
GO
ALTER TABLE [dbo].[td_baddetail] CHECK CONSTRAINT [FK_TD_BadDetail]
GO
ALTER TABLE [dbo].[td_baddetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_BadDetail2] FOREIGN KEY([ToLocalId])
REFERENCES [dbo].[pb_location] ([Id])
GO
ALTER TABLE [dbo].[td_baddetail] CHECK CONSTRAINT [FK_TD_BadDetail2]
GO
ALTER TABLE [dbo].[td_baddetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_BadDetail3] FOREIGN KEY([BadId])
REFERENCES [dbo].[td_bad] ([Id])
GO
ALTER TABLE [dbo].[td_baddetail] CHECK CONSTRAINT [FK_TD_BadDetail3]
GO
ALTER TABLE [dbo].[td_baddetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_BadDetail4] FOREIGN KEY([FromLocalId])
REFERENCES [dbo].[pb_location] ([Id])
GO
ALTER TABLE [dbo].[td_baddetail] CHECK CONSTRAINT [FK_TD_BadDetail4]
GO
ALTER TABLE [dbo].[td_baddetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_BadDetail5] FOREIGN KEY([ZoneId])
REFERENCES [dbo].[pb_trayzone] ([Id])
GO
ALTER TABLE [dbo].[td_baddetail] CHECK CONSTRAINT [FK_TD_BadDetail5]
GO
ALTER TABLE [dbo].[td_baddetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_BadDetail6] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[pb_material] ([Id])
GO
ALTER TABLE [dbo].[td_baddetail] CHECK CONSTRAINT [FK_TD_BadDetail6]
GO
ALTER TABLE [dbo].[td_baddetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_BadDetail7] FOREIGN KEY([TrayId])
REFERENCES [dbo].[pb_tray] ([Id])
GO
ALTER TABLE [dbo].[td_baddetail] CHECK CONSTRAINT [FK_TD_BadDetail7]
GO
ALTER TABLE [dbo].[td_check]  WITH CHECK ADD  CONSTRAINT [FK_TD_Check] FOREIGN KEY([StorId])
REFERENCES [dbo].[pb_storage] ([Id])
GO
ALTER TABLE [dbo].[td_check] CHECK CONSTRAINT [FK_TD_Check]
GO
ALTER TABLE [dbo].[td_checkarea]  WITH CHECK ADD  CONSTRAINT [FK_Reference_118] FOREIGN KEY([CherkId])
REFERENCES [dbo].[td_check] ([Id])
GO
ALTER TABLE [dbo].[td_checkarea] CHECK CONSTRAINT [FK_Reference_118]
GO
ALTER TABLE [dbo].[td_checkarea]  WITH CHECK ADD  CONSTRAINT [FK_Reference_119] FOREIGN KEY([StoarAreaId])
REFERENCES [dbo].[pb_storarea] ([Id])
GO
ALTER TABLE [dbo].[td_checkarea] CHECK CONSTRAINT [FK_Reference_119]
GO
ALTER TABLE [dbo].[td_checkdata]  WITH CHECK ADD  CONSTRAINT [FK_TD_CheckData] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[pb_material] ([Id])
GO
ALTER TABLE [dbo].[td_checkdata] CHECK CONSTRAINT [FK_TD_CheckData]
GO
ALTER TABLE [dbo].[td_checkdata]  WITH CHECK ADD  CONSTRAINT [FK_TD_CheckData2] FOREIGN KEY([StorId])
REFERENCES [dbo].[pb_storage] ([Id])
GO
ALTER TABLE [dbo].[td_checkdata] CHECK CONSTRAINT [FK_TD_CheckData2]
GO
ALTER TABLE [dbo].[td_checkdata]  WITH CHECK ADD  CONSTRAINT [FK_TD_CheckData3] FOREIGN KEY([CheckId])
REFERENCES [dbo].[td_check] ([Id])
GO
ALTER TABLE [dbo].[td_checkdata] CHECK CONSTRAINT [FK_TD_CheckData3]
GO
ALTER TABLE [dbo].[td_checkdata]  WITH CHECK ADD  CONSTRAINT [FK_TD_CheckData4] FOREIGN KEY([localId])
REFERENCES [dbo].[pb_location] ([Id])
GO
ALTER TABLE [dbo].[td_checkdata] CHECK CONSTRAINT [FK_TD_CheckData4]
GO
ALTER TABLE [dbo].[td_checkdata]  WITH CHECK ADD  CONSTRAINT [FK_TD_CheckData5] FOREIGN KEY([TrayId])
REFERENCES [dbo].[pb_tray] ([Id])
GO
ALTER TABLE [dbo].[td_checkdata] CHECK CONSTRAINT [FK_TD_CheckData5]
GO
ALTER TABLE [dbo].[td_checkdata]  WITH CHECK ADD  CONSTRAINT [FK_TD_CheckData6] FOREIGN KEY([ZoneId])
REFERENCES [dbo].[pb_trayzone] ([Id])
GO
ALTER TABLE [dbo].[td_checkdata] CHECK CONSTRAINT [FK_TD_CheckData6]
GO
ALTER TABLE [dbo].[td_checkmaterial]  WITH CHECK ADD  CONSTRAINT [FK_TD_CheckMaterial] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[pb_material] ([Id])
GO
ALTER TABLE [dbo].[td_checkmaterial] CHECK CONSTRAINT [FK_TD_CheckMaterial]
GO
ALTER TABLE [dbo].[td_checkmaterial]  WITH CHECK ADD  CONSTRAINT [FK_TD_CheckMaterial2] FOREIGN KEY([CheckId])
REFERENCES [dbo].[td_check] ([Id])
GO
ALTER TABLE [dbo].[td_checkmaterial] CHECK CONSTRAINT [FK_TD_CheckMaterial2]
GO
ALTER TABLE [dbo].[td_instorage]  WITH CHECK ADD  CONSTRAINT [FK_TD_InStorage] FOREIGN KEY([EqId])
REFERENCES [dbo].[pb_equipment] ([Id])
GO
ALTER TABLE [dbo].[td_instorage] CHECK CONSTRAINT [FK_TD_InStorage]
GO
ALTER TABLE [dbo].[td_instorage]  WITH CHECK ADD  CONSTRAINT [FK_TD_InStorage2] FOREIGN KEY([AddrId])
REFERENCES [dbo].[pb_address] ([Id])
GO
ALTER TABLE [dbo].[td_instorage] CHECK CONSTRAINT [FK_TD_InStorage2]
GO
ALTER TABLE [dbo].[td_instorage]  WITH CHECK ADD  CONSTRAINT [FK_TD_InStorage3] FOREIGN KEY([StorId])
REFERENCES [dbo].[pb_storage] ([Id])
GO
ALTER TABLE [dbo].[td_instorage] CHECK CONSTRAINT [FK_TD_InStorage3]
GO
ALTER TABLE [dbo].[td_instorage]  WITH CHECK ADD  CONSTRAINT [FK_TD_InStorage4] FOREIGN KEY([SupId])
REFERENCES [dbo].[pb_supplier] ([Id])
GO
ALTER TABLE [dbo].[td_instorage] CHECK CONSTRAINT [FK_TD_InStorage4]
GO
ALTER TABLE [dbo].[td_instordetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_InStorDetail] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[pb_material] ([Id])
GO
ALTER TABLE [dbo].[td_instordetail] CHECK CONSTRAINT [FK_TD_InStorDetail]
GO
ALTER TABLE [dbo].[td_instordetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_InStorDetail2] FOREIGN KEY([LocalId])
REFERENCES [dbo].[pb_location] ([Id])
GO
ALTER TABLE [dbo].[td_instordetail] CHECK CONSTRAINT [FK_TD_InStorDetail2]
GO
ALTER TABLE [dbo].[td_instordetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_InStorDetail3] FOREIGN KEY([InStorId])
REFERENCES [dbo].[td_instorage] ([Id])
GO
ALTER TABLE [dbo].[td_instordetail] CHECK CONSTRAINT [FK_TD_InStorDetail3]
GO
ALTER TABLE [dbo].[td_instordetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_InStorDetail4] FOREIGN KEY([ZoneId])
REFERENCES [dbo].[pb_trayzone] ([Id])
GO
ALTER TABLE [dbo].[td_instordetail] CHECK CONSTRAINT [FK_TD_InStorDetail4]
GO
ALTER TABLE [dbo].[td_instordetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_InStorDetail5] FOREIGN KEY([TrayId])
REFERENCES [dbo].[pb_tray] ([Id])
GO
ALTER TABLE [dbo].[td_instordetail] CHECK CONSTRAINT [FK_TD_InStorDetail5]
GO
ALTER TABLE [dbo].[td_instordetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_InStorDetail6] FOREIGN KEY([StorId])
REFERENCES [dbo].[pb_storage] ([Id])
GO
ALTER TABLE [dbo].[td_instordetail] CHECK CONSTRAINT [FK_TD_InStorDetail6]
GO
ALTER TABLE [dbo].[td_move]  WITH CHECK ADD  CONSTRAINT [FK_TD_Move] FOREIGN KEY([EquId])
REFERENCES [dbo].[pb_equipment] ([Id])
GO
ALTER TABLE [dbo].[td_move] CHECK CONSTRAINT [FK_TD_Move]
GO
ALTER TABLE [dbo].[td_move]  WITH CHECK ADD  CONSTRAINT [FK_TD_Move2] FOREIGN KEY([StorId])
REFERENCES [dbo].[pb_storage] ([Id])
GO
ALTER TABLE [dbo].[td_move] CHECK CONSTRAINT [FK_TD_Move2]
GO
ALTER TABLE [dbo].[td_movedetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_MoveDetail] FOREIGN KEY([ToZoneId])
REFERENCES [dbo].[pb_trayzone] ([Id])
GO
ALTER TABLE [dbo].[td_movedetail] CHECK CONSTRAINT [FK_TD_MoveDetail]
GO
ALTER TABLE [dbo].[td_movedetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_MoveDetail2] FOREIGN KEY([FromZoneId])
REFERENCES [dbo].[pb_trayzone] ([Id])
GO
ALTER TABLE [dbo].[td_movedetail] CHECK CONSTRAINT [FK_TD_MoveDetail2]
GO
ALTER TABLE [dbo].[td_movedetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_MoveDetail3] FOREIGN KEY([ToLocalId])
REFERENCES [dbo].[pb_location] ([Id])
GO
ALTER TABLE [dbo].[td_movedetail] CHECK CONSTRAINT [FK_TD_MoveDetail3]
GO
ALTER TABLE [dbo].[td_movedetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_MoveDetail4] FOREIGN KEY([FromTrayId])
REFERENCES [dbo].[pb_tray] ([Id])
GO
ALTER TABLE [dbo].[td_movedetail] CHECK CONSTRAINT [FK_TD_MoveDetail4]
GO
ALTER TABLE [dbo].[td_movedetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_MoveDetail5] FOREIGN KEY([MoveId])
REFERENCES [dbo].[td_move] ([Id])
GO
ALTER TABLE [dbo].[td_movedetail] CHECK CONSTRAINT [FK_TD_MoveDetail5]
GO
ALTER TABLE [dbo].[td_movedetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_MoveDetail6] FOREIGN KEY([ToTrayId])
REFERENCES [dbo].[pb_tray] ([Id])
GO
ALTER TABLE [dbo].[td_movedetail] CHECK CONSTRAINT [FK_TD_MoveDetail6]
GO
ALTER TABLE [dbo].[td_movedetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_MoveDetail7] FOREIGN KEY([FromLocalId])
REFERENCES [dbo].[pb_location] ([Id])
GO
ALTER TABLE [dbo].[td_movedetail] CHECK CONSTRAINT [FK_TD_MoveDetail7]
GO
ALTER TABLE [dbo].[td_movedetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_MoveDetail8] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[pb_material] ([Id])
GO
ALTER TABLE [dbo].[td_movedetail] CHECK CONSTRAINT [FK_TD_MoveDetail8]
GO
ALTER TABLE [dbo].[td_movedetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_MoveDetail9] FOREIGN KEY([StorId])
REFERENCES [dbo].[pb_storage] ([Id])
GO
ALTER TABLE [dbo].[td_movedetail] CHECK CONSTRAINT [FK_TD_MoveDetail9]
GO
ALTER TABLE [dbo].[td_outstorage]  WITH CHECK ADD  CONSTRAINT [FK_TD_OutStorage] FOREIGN KEY([StorageId])
REFERENCES [dbo].[pb_storage] ([Id])
GO
ALTER TABLE [dbo].[td_outstorage] CHECK CONSTRAINT [FK_TD_OutStorage]
GO
ALTER TABLE [dbo].[td_outstorage]  WITH CHECK ADD  CONSTRAINT [FK_TD_OutStorage2] FOREIGN KEY([AddrId])
REFERENCES [dbo].[pb_address] ([Id])
GO
ALTER TABLE [dbo].[td_outstorage] CHECK CONSTRAINT [FK_TD_OutStorage2]
GO
ALTER TABLE [dbo].[td_outstorage]  WITH CHECK ADD  CONSTRAINT [FK_TD_OutStorage3] FOREIGN KEY([CusId])
REFERENCES [dbo].[pb_customer] ([Id])
GO
ALTER TABLE [dbo].[td_outstorage] CHECK CONSTRAINT [FK_TD_OutStorage3]
GO
ALTER TABLE [dbo].[td_outstorage]  WITH CHECK ADD  CONSTRAINT [FK_TD_OutStorage4] FOREIGN KEY([EquId])
REFERENCES [dbo].[pb_equipment] ([Id])
GO
ALTER TABLE [dbo].[td_outstorage] CHECK CONSTRAINT [FK_TD_OutStorage4]
GO
ALTER TABLE [dbo].[td_outstorage]  WITH CHECK ADD  CONSTRAINT [FK_TD_OutStorage5] FOREIGN KEY([SendId])
REFERENCES [dbo].[td_send] ([Id])
GO
ALTER TABLE [dbo].[td_outstorage] CHECK CONSTRAINT [FK_TD_OutStorage5]
GO
ALTER TABLE [dbo].[td_outstordetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_OutStorDetail] FOREIGN KEY([LocalId])
REFERENCES [dbo].[pb_location] ([Id])
GO
ALTER TABLE [dbo].[td_outstordetail] CHECK CONSTRAINT [FK_TD_OutStorDetail]
GO
ALTER TABLE [dbo].[td_outstordetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_OutStorDetail2] FOREIGN KEY([ZoneId])
REFERENCES [dbo].[pb_trayzone] ([Id])
GO
ALTER TABLE [dbo].[td_outstordetail] CHECK CONSTRAINT [FK_TD_OutStorDetail2]
GO
ALTER TABLE [dbo].[td_outstordetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_OutStorDetail3] FOREIGN KEY([OutStorId])
REFERENCES [dbo].[td_outstorage] ([Id])
GO
ALTER TABLE [dbo].[td_outstordetail] CHECK CONSTRAINT [FK_TD_OutStorDetail3]
GO
ALTER TABLE [dbo].[td_outstordetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_OutStorDetail4] FOREIGN KEY([StorId])
REFERENCES [dbo].[pb_storage] ([Id])
GO
ALTER TABLE [dbo].[td_outstordetail] CHECK CONSTRAINT [FK_TD_OutStorDetail4]
GO
ALTER TABLE [dbo].[td_outstordetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_OutStorDetail5] FOREIGN KEY([TrayId])
REFERENCES [dbo].[pb_tray] ([Id])
GO
ALTER TABLE [dbo].[td_outstordetail] CHECK CONSTRAINT [FK_TD_OutStorDetail5]
GO
ALTER TABLE [dbo].[td_outstordetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_OutStorDetail6] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[pb_material] ([Id])
GO
ALTER TABLE [dbo].[td_outstordetail] CHECK CONSTRAINT [FK_TD_OutStorDetail6]
GO
ALTER TABLE [dbo].[td_recdetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_RecDetail_LocalId] FOREIGN KEY([LocaId])
REFERENCES [dbo].[pb_location] ([Id])
GO
ALTER TABLE [dbo].[td_recdetail] CHECK CONSTRAINT [FK_TD_RecDetail_LocalId]
GO
ALTER TABLE [dbo].[td_recdetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_RecDetail_MaterialId] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[pb_material] ([Id])
GO
ALTER TABLE [dbo].[td_recdetail] CHECK CONSTRAINT [FK_TD_RecDetail_MaterialId]
GO
ALTER TABLE [dbo].[td_recdetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_RecDetail_MeasureId] FOREIGN KEY([MeasureId])
REFERENCES [dbo].[pb_measure] ([Id])
GO
ALTER TABLE [dbo].[td_recdetail] CHECK CONSTRAINT [FK_TD_RecDetail_MeasureId]
GO
ALTER TABLE [dbo].[td_recdetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_RecDetail_RecId] FOREIGN KEY([RecId])
REFERENCES [dbo].[td_receiving] ([Id])
GO
ALTER TABLE [dbo].[td_recdetail] CHECK CONSTRAINT [FK_TD_RecDetail_RecId]
GO
ALTER TABLE [dbo].[td_recdetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_RecDetail_StorId] FOREIGN KEY([StorId])
REFERENCES [dbo].[pb_storage] ([Id])
GO
ALTER TABLE [dbo].[td_recdetail] CHECK CONSTRAINT [FK_TD_RecDetail_StorId]
GO
ALTER TABLE [dbo].[td_receiving]  WITH CHECK ADD  CONSTRAINT [FK_TD_Receiving_StorId] FOREIGN KEY([StorId])
REFERENCES [dbo].[pb_storage] ([Id])
GO
ALTER TABLE [dbo].[td_receiving] CHECK CONSTRAINT [FK_TD_Receiving_StorId]
GO
ALTER TABLE [dbo].[td_receiving]  WITH CHECK ADD  CONSTRAINT [FK_TD_Receiving_SupId] FOREIGN KEY([SupId])
REFERENCES [dbo].[pb_supplier] ([Id])
GO
ALTER TABLE [dbo].[td_receiving] CHECK CONSTRAINT [FK_TD_Receiving_SupId]
GO
ALTER TABLE [dbo].[td_send]  WITH CHECK ADD  CONSTRAINT [FK_TD_Send1] FOREIGN KEY([StorId])
REFERENCES [dbo].[pb_storage] ([Id])
GO
ALTER TABLE [dbo].[td_send] CHECK CONSTRAINT [FK_TD_Send1]
GO
ALTER TABLE [dbo].[td_send]  WITH CHECK ADD  CONSTRAINT [FK_TD_Send2] FOREIGN KEY([CusId])
REFERENCES [dbo].[pb_customer] ([Id])
GO
ALTER TABLE [dbo].[td_send] CHECK CONSTRAINT [FK_TD_Send2]
GO
ALTER TABLE [dbo].[td_send]  WITH CHECK ADD  CONSTRAINT [FK_TD_Send3] FOREIGN KEY([AddrId])
REFERENCES [dbo].[pb_address] ([Id])
GO
ALTER TABLE [dbo].[td_send] CHECK CONSTRAINT [FK_TD_Send3]
GO
ALTER TABLE [dbo].[td_senddetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_SendDetail] FOREIGN KEY([SendId])
REFERENCES [dbo].[td_send] ([Id])
GO
ALTER TABLE [dbo].[td_senddetail] CHECK CONSTRAINT [FK_TD_SendDetail]
GO
ALTER TABLE [dbo].[td_senddetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_SendDetail2] FOREIGN KEY([StorId])
REFERENCES [dbo].[pb_storage] ([Id])
GO
ALTER TABLE [dbo].[td_senddetail] CHECK CONSTRAINT [FK_TD_SendDetail2]
GO
ALTER TABLE [dbo].[td_senddetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_SendDetail3] FOREIGN KEY([MaterialId])
REFERENCES [dbo].[pb_material] ([Id])
GO
ALTER TABLE [dbo].[td_senddetail] CHECK CONSTRAINT [FK_TD_SendDetail3]
GO
ALTER TABLE [dbo].[td_senddetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_SendDetail4] FOREIGN KEY([MeasureId])
REFERENCES [dbo].[pb_measure] ([Id])
GO
ALTER TABLE [dbo].[td_senddetail] CHECK CONSTRAINT [FK_TD_SendDetail4]
GO
ALTER TABLE [dbo].[td_senddetail]  WITH CHECK ADD  CONSTRAINT [FK_TD_SendDetail5] FOREIGN KEY([LocalId])
REFERENCES [dbo].[pb_location] ([Id])
GO
ALTER TABLE [dbo].[td_senddetail] CHECK CONSTRAINT [FK_TD_SendDetail5]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_action', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_action', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_action', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'否已删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_action', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_action', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型,菜单=0,页面=1,权限=2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_action', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限名/菜单名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_action', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_action', @level2type=N'COLUMN',@level2name=N'Url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_action', @level2type=N'COLUMN',@level2name=N'Value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否需要权限(仅页面有效)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_action', @level2type=N'COLUMN',@level2name=N'NeedAction'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_action', @level2type=N'COLUMN',@level2name=N'Icon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_action', @level2type=N'COLUMN',@level2name=N'Sort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统权限表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_action'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自然主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_appsecret', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_appsecret', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_appsecret', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'否已删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_appsecret', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_appsecret', @level2type=N'COLUMN',@level2name=N'AppId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用密钥' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_appsecret', @level2type=N'COLUMN',@level2name=N'AppSecret'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_appsecret', @level2type=N'COLUMN',@level2name=N'AppName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'应用密钥表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_appsecret'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自然主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_buildtest', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_buildtest', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_buildtest', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'否已删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_buildtest', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'列1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_buildtest', @level2type=N'COLUMN',@level2name=N'Column1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'列2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_buildtest', @level2type=N'COLUMN',@level2name=N'Column2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'列3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_buildtest', @level2type=N'COLUMN',@level2name=N'Column3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'列4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_buildtest', @level2type=N'COLUMN',@level2name=N'Column4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'列5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_buildtest', @level2type=N'COLUMN',@level2name=N'Column5'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成测试表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_buildtest'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自然主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_dblink', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_dblink', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_dblink', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'否已删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_dblink', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'连接名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_dblink', @level2type=N'COLUMN',@level2name=N'LinkName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'连接字符串' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_dblink', @level2type=N'COLUMN',@level2name=N'ConnectionStr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据库类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_dblink', @level2type=N'COLUMN',@level2name=N'DbType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据库连接表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_dblink'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_department', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_department', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_department', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'否已删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_department', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_department', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上级部门Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_department', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_department'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_enum', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_enum', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_enum', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统必须' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_enum', @level2type=N'COLUMN',@level2name=N'IsSystem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_enum', @level2type=N'COLUMN',@level2name=N'Remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_enum', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_enum', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_enum', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据字典' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_enum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_enumitem', @level2type=N'COLUMN',@level2name=N'Remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统必须' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_enumitem', @level2type=N'COLUMN',@level2name=N'IsSystem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_enumitem', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_enumitem', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_enumitem', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字典值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_enumitem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_parameter', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参数类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_parameter', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参数编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_parameter', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参数名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_parameter', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参数值配置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_parameter', @level2type=N'COLUMN',@level2name=N'ValConfig'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参数值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_parameter', @level2type=N'COLUMN',@level2name=N'Val'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_parameter', @level2type=N'COLUMN',@level2name=N'Remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否系统必须' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_parameter', @level2type=N'COLUMN',@level2name=N'IsSystem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_parameter', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_parameter', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_parameter', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统参数表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_parameter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_role', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_role', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_role', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'否已删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_role', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_role', @level2type=N'COLUMN',@level2name=N'RoleName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统角色表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_role'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_roleaction', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_roleaction', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_roleaction', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'否已删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_roleaction', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_roleaction', @level2type=N'COLUMN',@level2name=N'RoleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_roleaction', @level2type=N'COLUMN',@level2name=N'ActionId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色权限表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_roleaction'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_user', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_user', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_user', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'否已删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_user', @level2type=N'COLUMN',@level2name=N'deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_user', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_user', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_user', @level2type=N'COLUMN',@level2name=N'RealName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别(1为男，0为女)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_user', @level2type=N'COLUMN',@level2name=N'Sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出生日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_user', @level2type=N'COLUMN',@level2name=N'Birthday'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属部门Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_user', @level2type=N'COLUMN',@level2name=N'DepartmentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统用户表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_user'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'自然主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_userlog', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_userlog', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_userlog', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_userlog', @level2type=N'COLUMN',@level2name=N'CreatorRealName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_userlog', @level2type=N'COLUMN',@level2name=N'LogType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_userlog', @level2type=N'COLUMN',@level2name=N'LogContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统日志表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_userlog'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_userrole', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_userrole', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_userrole', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'否已删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_userrole', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_userrole', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_userrole', @level2type=N'COLUMN',@level2name=N'RoleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户角色表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_userrole'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_userstor', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_userstor', @level2type=N'COLUMN',@level2name=N'StorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否默认仓库' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_userstor', @level2type=N'COLUMN',@level2name=N'IsDefault'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_userstor', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_userstor', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_userstor', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户仓库权限表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'base_userstor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_localdetail', @level2type=N'COLUMN',@level2name=N'StorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入库ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_localdetail', @level2type=N'COLUMN',@level2name=N'InStorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_localdetail', @level2type=N'COLUMN',@level2name=N'LocalId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'托盘号ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_localdetail', @level2type=N'COLUMN',@level2name=N'TrayId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'托盘分区ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_localdetail', @level2type=N'COLUMN',@level2name=N'ZoneId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_localdetail', @level2type=N'COLUMN',@level2name=N'MaterialId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_localdetail', @level2type=N'COLUMN',@level2name=N'MeasureId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_localdetail', @level2type=N'COLUMN',@level2name=N'BatchNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'条码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_localdetail', @level2type=N'COLUMN',@level2name=N'BarCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入库时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_localdetail', @level2type=N'COLUMN',@level2name=N'InTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_localdetail', @level2type=N'COLUMN',@level2name=N'Amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_localdetail', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_localdetail', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_localdetail', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_localdetail', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_localdetail', @level2type=N'COLUMN',@level2name=N'Num'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存明细表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_localdetail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_localmaterial', @level2type=N'COLUMN',@level2name=N'StorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_localmaterial', @level2type=N'COLUMN',@level2name=N'LocalId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'托盘号ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_localmaterial', @level2type=N'COLUMN',@level2name=N'TrayId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'托盘分区ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_localmaterial', @level2type=N'COLUMN',@level2name=N'ZoneId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_localmaterial', @level2type=N'COLUMN',@level2name=N'MaterialId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_localmaterial', @level2type=N'COLUMN',@level2name=N'MeasureId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_localmaterial', @level2type=N'COLUMN',@level2name=N'BatchNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'条码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_localmaterial', @level2type=N'COLUMN',@level2name=N'BarCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_localmaterial', @level2type=N'COLUMN',@level2name=N'Num'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_localmaterial'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'相关单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_recordbook', @level2type=N'COLUMN',@level2name=N'RefCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'台账类型
            入库 出库 移库 调拨出 调拨入 报损 盘亏 盘盈' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_recordbook', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原仓库ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_recordbook', @level2type=N'COLUMN',@level2name=N'FromStorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原货位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_recordbook', @level2type=N'COLUMN',@level2name=N'FromLocalId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目标仓库' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_recordbook', @level2type=N'COLUMN',@level2name=N'ToStorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目标货位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_recordbook', @level2type=N'COLUMN',@level2name=N'ToLocalId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_recordbook', @level2type=N'COLUMN',@level2name=N'MaterialId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_recordbook', @level2type=N'COLUMN',@level2name=N'MeasureId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料条码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_recordbook', @level2type=N'COLUMN',@level2name=N'BarCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_recordbook', @level2type=N'COLUMN',@level2name=N'BatchNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_recordbook', @level2type=N'COLUMN',@level2name=N'Num'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_recordbook', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_recordbook', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_recordbook', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'台账表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'it_recordbook'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_address', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_address', @level2type=N'COLUMN',@level2name=N'CusId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_address', @level2type=N'COLUMN',@level2name=N'SupId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话/投料点编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_address', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人/投料点名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_address', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_address', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_address', @level2type=N'COLUMN',@level2name=N'IsEnable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_address', @level2type=N'COLUMN',@level2name=N'IsDefault'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_address', @level2type=N'COLUMN',@level2name=N'Remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_address', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_address', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_address', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户/投料点/供应商地址表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货区ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_areamaterial', @level2type=N'COLUMN',@level2name=N'AreaId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_areamaterial', @level2type=N'COLUMN',@level2name=N'MaterialId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货区物料关系表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_areamaterial'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'条码类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_barcode', @level2type=N'COLUMN',@level2name=N'BarCodeTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_barcode', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_barcode', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_barcode', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'条码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_barcode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型 常量 日期 流水号 引用 每日流水号 随机数(GUID) 参数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_barcoderule', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_barcoderule', @level2type=N'COLUMN',@level2name=N'Sort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'规则' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_barcoderule', @level2type=N'COLUMN',@level2name=N'Rule'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'长度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_barcoderule', @level2type=N'COLUMN',@level2name=N'length'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_barcoderule', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_barcoderule', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_barcoderule', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'条码规则' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_barcoderule'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_barcodeserial', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'条码类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_barcodeserial', @level2type=N'COLUMN',@level2name=N'TypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参数名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_barcodeserial', @level2type=N'COLUMN',@level2name=N'ParaName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参数值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_barcodeserial', @level2type=N'COLUMN',@level2name=N'ParaValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_barcodeserial', @level2type=N'COLUMN',@level2name=N'SerialNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'条码参数流水' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_barcodeserial'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号（业务表名称）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_barcodetype', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_barcodetype', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'连接符' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_barcodetype', @level2type=N'COLUMN',@level2name=N'JoinChar'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_barcodetype', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_barcodetype', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_barcodetype', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'条码类型管理' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_barcodetype'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_customer', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_customer', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_customer', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_customer', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_customer', @level2type=N'COLUMN',@level2name=N'Phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传真' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_customer', @level2type=N'COLUMN',@level2name=N'Fax'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_customer', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_customer', @level2type=N'COLUMN',@level2name=N'Remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_customer', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_customer', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_customer', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户/投料点表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_customer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_equipment', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_equipment', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_equipment', @level2type=N'COLUMN',@level2name=N'EquNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态 0 启用 1停用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_equipment', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_equipment', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_equipment', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_equipment', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_equipment', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_equipment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_feedpoint', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_feedpoint', @level2type=N'COLUMN',@level2name=N'StorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'巷道Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_feedpoint', @level2type=N'COLUMN',@level2name=N'LaneId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_feedpoint', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_feedpoint', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型：只进/进出/只出/出回' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_feedpoint', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_feedpoint', @level2type=N'COLUMN',@level2name=N'IsEnable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_feedpoint', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_feedpoint', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_feedpoint', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'进料点/出料点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_feedpoint'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_laneway', @level2type=N'COLUMN',@level2name=N'StorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'巷道编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_laneway', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'巷道名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_laneway', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_laneway', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_laneway', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_laneway', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'巷道管理' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_laneway'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_localtray', @level2type=N'COLUMN',@level2name=N'LocalId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'托盘类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_localtray', @level2type=N'COLUMN',@level2name=N'TrayTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'托盘类型与货位对应关系' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_localtray'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货位编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_location', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货位名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_location', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_location', @level2type=N'COLUMN',@level2name=N'StorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货区ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_location', @level2type=N'COLUMN',@level2name=N'AreaId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'巷道ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_location', @level2type=N'COLUMN',@level2name=N'LanewayId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货架ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_location', @level2type=N'COLUMN',@level2name=N'RackId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'剩余容量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_location', @level2type=N'COLUMN',@level2name=N'OverVol'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否禁用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_location', @level2type=N'COLUMN',@level2name=N'IsForbid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_location', @level2type=N'COLUMN',@level2name=N'IsDefault'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'锁类型,0：没有锁，1：入库锁，2：出库锁' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_location', @level2type=N'COLUMN',@level2name=N'LockType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'故障代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_location', @level2type=N'COLUMN',@level2name=N'ErrorCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_location', @level2type=N'COLUMN',@level2name=N'Remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_location', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_location', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_location', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货位管理' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_location'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_material', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_material', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_material', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'条码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_material', @level2type=N'COLUMN',@level2name=N'BarCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料简称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_material', @level2type=N'COLUMN',@level2name=N'SimpleName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_material', @level2type=N'COLUMN',@level2name=N'MaterialTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_material', @level2type=N'COLUMN',@level2name=N'MeasureId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料规格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_material', @level2type=N'COLUMN',@level2name=N'Spec'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上限数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_material', @level2type=N'COLUMN',@level2name=N'Max'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下限数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_material', @level2type=N'COLUMN',@level2name=N'Min'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_material', @level2type=N'COLUMN',@level2name=N'CusId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_material', @level2type=N'COLUMN',@level2name=N'SupId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认存储仓库' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_material', @level2type=N'COLUMN',@level2name=N'StorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_material', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_material', @level2type=N'COLUMN',@level2name=N'Remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_material', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_material', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_material', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料目录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_material'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'料点Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_materialpoint', @level2type=N'COLUMN',@level2name=N'PointId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_materialpoint', @level2type=N'COLUMN',@level2name=N'MaterialId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'进料点/出料点 与物料对应关系' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_materialpoint'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料分类表ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_materialtype', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料分类名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_materialtype', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料分类编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_materialtype', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父节点物料分类ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_materialtype', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否是叶节点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_materialtype', @level2type=N'COLUMN',@level2name=N'IsLeaf'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_materialtype', @level2type=N'COLUMN',@level2name=N'Remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_materialtype', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_materialtype', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_materialtype', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_materialtype'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_measure', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_measure', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_measure', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_measure', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_measure', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_measure', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计量单位表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_measure'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货架编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_rack', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货架名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_rack', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_rack', @level2type=N'COLUMN',@level2name=N'StorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_rack', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_rack', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_rack', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货架管理' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_rack'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_storage', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_storage', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_storage', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库类型（平库,立库）(枚举)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_storage', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用托盘管理 0  禁用：1启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_storage', @level2type=N'COLUMN',@level2name=N'IsTray'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否启用分区管理 0  禁用：1启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_storage', @level2type=N'COLUMN',@level2name=N'IsZone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'启用：0  禁用：1启用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_storage', @level2type=N'COLUMN',@level2name=N'Disable'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'默认' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_storage', @level2type=N'COLUMN',@level2name=N'IsDefault'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_storage', @level2type=N'COLUMN',@level2name=N'Remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_storage', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_storage', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_storage', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_storage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_storarea', @level2type=N'COLUMN',@level2name=N'StorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货区编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_storarea', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货区名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_storarea', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货区类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_storarea', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_storarea', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_storarea', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_storarea', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货区表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_storarea'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_supplier', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_supplier', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_supplier', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_supplier', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_supplier', @level2type=N'COLUMN',@level2name=N'Phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传真' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_supplier', @level2type=N'COLUMN',@level2name=N'Fax'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_supplier', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_supplier', @level2type=N'COLUMN',@level2name=N'ContactName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_supplier', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_supplier', @level2type=N'COLUMN',@level2name=N'Remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_supplier', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_supplier', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_supplier', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商/下料点表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_supplier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货位ID(空托盘出库情况)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_tray', @level2type=N'COLUMN',@level2name=N'LocalId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'托盘号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_tray', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'托盘名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_tray', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'托盘类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_tray', @level2type=N'COLUMN',@level2name=N'TrayTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'启用日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_tray', @level2type=N'COLUMN',@level2name=N'StartTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'托盘状态:0启用 1停用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_tray', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_tray', @level2type=N'COLUMN',@level2name=N'Remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_tray', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_tray', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_tray', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'托盘表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_tray'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_traymaterial', @level2type=N'COLUMN',@level2name=N'MaterialId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'托盘类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_traymaterial', @level2type=N'COLUMN',@level2name=N'TrayTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'托盘类型与物料对应关系' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_traymaterial'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_traytype', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_traytype', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_traytype', @level2type=N'COLUMN',@level2name=N'Length'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'宽' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_traytype', @level2type=N'COLUMN',@level2name=N'Width'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'高' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_traytype', @level2type=N'COLUMN',@level2name=N'High'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否有分区' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_traytype', @level2type=N'COLUMN',@level2name=N'IsZone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_traytype', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_traytype', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_traytype', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'托盘类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_traytype'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'托盘类型ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_trayzone', @level2type=N'COLUMN',@level2name=N'TrayTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'托盘分区编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_trayzone', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'托盘分区名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_trayzone', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否默认托盘分区' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_trayzone', @level2type=N'COLUMN',@level2name=N'IsDefault'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_trayzone', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_trayzone', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_trayzone', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'托盘类型分区' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pb_trayzone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pd_plan', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pd_plan', @level2type=N'COLUMN',@level2name=N'MaterialId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Bom版本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pd_plan', @level2type=N'COLUMN',@level2name=N'BomVerId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pd_plan', @level2type=N'COLUMN',@level2name=N'BatchNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pd_plan', @level2type=N'COLUMN',@level2name=N'Num'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pd_plan', @level2type=N'COLUMN',@level2name=N'PlanDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划开始日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pd_plan', @level2type=N'COLUMN',@level2name=N'StartDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划完成日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pd_plan', @level2type=N'COLUMN',@level2name=N'FinishDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生产单元' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pd_plan', @level2type=N'COLUMN',@level2name=N'UnitCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pd_plan', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pd_plan', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pd_plan', @level2type=N'COLUMN',@level2name=N'OrderNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上级系统Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pd_plan', @level2type=N'COLUMN',@level2name=N'RefId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pd_plan', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pd_plan', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pd_plan', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'pd_plan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调拨单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_allocate', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调拨时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_allocate', @level2type=N'COLUMN',@level2name=N'AllocateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调拨类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_allocate', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_allocate', @level2type=N'COLUMN',@level2name=N'StorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目标仓库ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_allocate', @level2type=N'COLUMN',@level2name=N'ToStorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目标货位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_allocate', @level2type=N'COLUMN',@level2name=N'ToLocalId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_allocate', @level2type=N'COLUMN',@level2name=N'RefCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_allocate', @level2type=N'COLUMN',@level2name=N'Amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调拨数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_allocate', @level2type=N'COLUMN',@level2name=N'AllocateNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_allocate', @level2type=N'COLUMN',@level2name=N'EquId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态(0待审核;1审核通过;2审核失败)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_allocate', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_allocate', @level2type=N'COLUMN',@level2name=N'Remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_allocate', @level2type=N'COLUMN',@level2name=N'AuditUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_allocate', @level2type=N'COLUMN',@level2name=N'AuditeTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_allocate', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_allocate', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_allocate', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调拨表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_allocate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调拨ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_allocatedetail', @level2type=N'COLUMN',@level2name=N'AllocateId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原仓库ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_allocatedetail', @level2type=N'COLUMN',@level2name=N'FromStorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原货位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_allocatedetail', @level2type=N'COLUMN',@level2name=N'FromlocalId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原托盘ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_allocatedetail', @level2type=N'COLUMN',@level2name=N'FromTrayId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原托盘分区ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_allocatedetail', @level2type=N'COLUMN',@level2name=N'FromZoneId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目标仓库ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_allocatedetail', @level2type=N'COLUMN',@level2name=N'ToStorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目标货位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_allocatedetail', @level2type=N'COLUMN',@level2name=N'ToLocalId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'条码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_allocatedetail', @level2type=N'COLUMN',@level2name=N'BarCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_allocatedetail', @level2type=N'COLUMN',@level2name=N'MaterialId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_allocatedetail', @level2type=N'COLUMN',@level2name=N'BatchNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_allocatedetail', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_allocatedetail', @level2type=N'COLUMN',@level2name=N'Amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_allocatedetail', @level2type=N'COLUMN',@level2name=N'LocalNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调拨数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_allocatedetail', @level2type=N'COLUMN',@level2name=N'AllocateNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_allocatedetail', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_allocatedetail', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_allocatedetail', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'调拨明细' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_allocatedetail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报损单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_bad', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_bad', @level2type=N'COLUMN',@level2name=N'StorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报损时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_bad', @level2type=N'COLUMN',@level2name=N'BadTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报损类型(枚举)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_bad', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_bad', @level2type=N'COLUMN',@level2name=N'RefCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报损数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_bad', @level2type=N'COLUMN',@level2name=N'BadNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_bad', @level2type=N'COLUMN',@level2name=N'TotalAmt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_bad', @level2type=N'COLUMN',@level2name=N'EquId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_bad', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_bad', @level2type=N'COLUMN',@level2name=N'Remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_bad', @level2type=N'COLUMN',@level2name=N'AuditUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_bad', @level2type=N'COLUMN',@level2name=N'AuditeTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_bad', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_bad', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_bad', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报损表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_bad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_baddetail', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报损ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_baddetail', @level2type=N'COLUMN',@level2name=N'BadId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_baddetail', @level2type=N'COLUMN',@level2name=N'StorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原货位iD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_baddetail', @level2type=N'COLUMN',@level2name=N'FromLocalId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原托盘ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_baddetail', @level2type=N'COLUMN',@level2name=N'TrayId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'托盘分区ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_baddetail', @level2type=N'COLUMN',@level2name=N'ZoneId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目标货位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_baddetail', @level2type=N'COLUMN',@level2name=N'ToLocalId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_baddetail', @level2type=N'COLUMN',@level2name=N'MaterialId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_baddetail', @level2type=N'COLUMN',@level2name=N'BatchNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'条码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_baddetail', @level2type=N'COLUMN',@level2name=N'BarCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_baddetail', @level2type=N'COLUMN',@level2name=N'LocalNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报损数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_baddetail', @level2type=N'COLUMN',@level2name=N'BadNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'残余值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_baddetail', @level2type=N'COLUMN',@level2name=N'Surplus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_baddetail', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_baddetail', @level2type=N'COLUMN',@level2name=N'Amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_baddetail', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_baddetail', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_baddetail', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'报损明细' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_baddetail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_check', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_check', @level2type=N'COLUMN',@level2name=N'StorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'盘点时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_check', @level2type=N'COLUMN',@level2name=N'CheckTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'盘点类型
            整体盘点 区域盘点 特定物料盘点 随机物料盘点(百分比) ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_check', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_check', @level2type=N'COLUMN',@level2name=N'RefCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_check', @level2type=N'COLUMN',@level2name=N'EquId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否盘差状态(0待盘 1已盘)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_check', @level2type=N'COLUMN',@level2name=N'IsComplete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态(0待审核;1审核通过;2审核失败;3=退回)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_check', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_check', @level2type=N'COLUMN',@level2name=N'AuditUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_check', @level2type=N'COLUMN',@level2name=N'AuditeTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_check', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_check', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_check', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_check', @level2type=N'COLUMN',@level2name=N'Remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'盘点表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_check'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'盘点货区关系表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_checkarea'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_checkdata', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'盘点ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_checkdata', @level2type=N'COLUMN',@level2name=N'CheckId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_checkdata', @level2type=N'COLUMN',@level2name=N'StorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_checkdata', @level2type=N'COLUMN',@level2name=N'localId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_checkdata', @level2type=N'COLUMN',@level2name=N'MaterialId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_checkdata', @level2type=N'COLUMN',@level2name=N'BatchNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_checkdata', @level2type=N'COLUMN',@level2name=N'LocalNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'盘点数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_checkdata', @level2type=N'COLUMN',@level2name=N'CheckNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'盘差数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_checkdata', @level2type=N'COLUMN',@level2name=N'DisNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'盘点人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_checkdata', @level2type=N'COLUMN',@level2name=N'CheckUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_checkdata', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_checkdata', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'盘差表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_checkdata'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'盘点ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_checkmaterial', @level2type=N'COLUMN',@level2name=N'CheckId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_checkmaterial', @level2type=N'COLUMN',@level2name=N'MaterialId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'盘点信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_checkmaterial'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_instorage', @level2type=N'COLUMN',@level2name=N'RecId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入库单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_instorage', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入库时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_instorage', @level2type=N'COLUMN',@level2name=N'InStorTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入库类型(枚举)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_instorage', @level2type=N'COLUMN',@level2name=N'InType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_instorage', @level2type=N'COLUMN',@level2name=N'RefCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态(0待审核;1审核通过;2审核失败)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_instorage', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_instorage', @level2type=N'COLUMN',@level2name=N'StorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目标地址ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_instorage', @level2type=N'COLUMN',@level2name=N'AddrId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_instorage', @level2type=N'COLUMN',@level2name=N'SupId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入库数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_instorage', @level2type=N'COLUMN',@level2name=N'TotalNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_instorage', @level2type=N'COLUMN',@level2name=N'TotalAmt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_instorage', @level2type=N'COLUMN',@level2name=N'EqId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_instorage', @level2type=N'COLUMN',@level2name=N'AuditUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_instorage', @level2type=N'COLUMN',@level2name=N'AuditeTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_instorage', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_instorage', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_instorage', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入库表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_instorage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入库ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_instordetail', @level2type=N'COLUMN',@level2name=N'InStorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_instordetail', @level2type=N'COLUMN',@level2name=N'StorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_instordetail', @level2type=N'COLUMN',@level2name=N'LocalId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'托盘ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_instordetail', @level2type=N'COLUMN',@level2name=N'TrayId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'托盘分区ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_instordetail', @level2type=N'COLUMN',@level2name=N'ZoneId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'条码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_instordetail', @level2type=N'COLUMN',@level2name=N'BarCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_instordetail', @level2type=N'COLUMN',@level2name=N'MaterialId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_instordetail', @level2type=N'COLUMN',@level2name=N'BatchNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_instordetail', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_instordetail', @level2type=N'COLUMN',@level2name=N'TotalAmt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入库数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_instordetail', @level2type=N'COLUMN',@level2name=N'Num'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_instordetail', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_instordetail', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_instordetail', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入库明细' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_instordetail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'移库单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_move', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'移库时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_move', @level2type=N'COLUMN',@level2name=N'MoveTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'移库类型(枚举)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_move', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_move', @level2type=N'COLUMN',@level2name=N'RefCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_move', @level2type=N'COLUMN',@level2name=N'StorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_move', @level2type=N'COLUMN',@level2name=N'MoveNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_move', @level2type=N'COLUMN',@level2name=N'TotalAmt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_move', @level2type=N'COLUMN',@level2name=N'EquId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态(0待审核；1审核通过；2审核失败；3待移库；4已移库' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_move', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_move', @level2type=N'COLUMN',@level2name=N'Remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_move', @level2type=N'COLUMN',@level2name=N'AuditUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_move', @level2type=N'COLUMN',@level2name=N'AuditeTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_move', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_move', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_move', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'移库表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_move'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'移库ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_movedetail', @level2type=N'COLUMN',@level2name=N'MoveId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_movedetail', @level2type=N'COLUMN',@level2name=N'StorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原货位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_movedetail', @level2type=N'COLUMN',@level2name=N'FromLocalId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原托盘分区' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_movedetail', @level2type=N'COLUMN',@level2name=N'FromZoneId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原托盘ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_movedetail', @level2type=N'COLUMN',@level2name=N'FromTrayId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目标货位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_movedetail', @level2type=N'COLUMN',@level2name=N'ToLocalId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目标托盘ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_movedetail', @level2type=N'COLUMN',@level2name=N'ToTrayId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目标托盘分区' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_movedetail', @level2type=N'COLUMN',@level2name=N'ToZoneId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'条码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_movedetail', @level2type=N'COLUMN',@level2name=N'BarCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_movedetail', @level2type=N'COLUMN',@level2name=N'MaterialId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_movedetail', @level2type=N'COLUMN',@level2name=N'BatchNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_movedetail', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'移库数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_movedetail', @level2type=N'COLUMN',@level2name=N'LocalNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_movedetail', @level2type=N'COLUMN',@level2name=N'Amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_movedetail', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_movedetail', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_movedetail', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'移库明细' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_movedetail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_outstorage', @level2type=N'COLUMN',@level2name=N'SendId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_outstorage', @level2type=N'COLUMN',@level2name=N'StorageId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出库单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_outstorage', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出库时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_outstorage', @level2type=N'COLUMN',@level2name=N'OutTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出库类型(枚举)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_outstorage', @level2type=N'COLUMN',@level2name=N'OutType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_outstorage', @level2type=N'COLUMN',@level2name=N'RefCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出库数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_outstorage', @level2type=N'COLUMN',@level2name=N'OutNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_outstorage', @level2type=N'COLUMN',@level2name=N'TotalAmt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'设备ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_outstorage', @level2type=N'COLUMN',@level2name=N'EquId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_outstorage', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_outstorage', @level2type=N'COLUMN',@level2name=N'CusId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目标地址ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_outstorage', @level2type=N'COLUMN',@level2name=N'AddrId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_outstorage', @level2type=N'COLUMN',@level2name=N'Remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_outstorage', @level2type=N'COLUMN',@level2name=N'AuditUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_outstorage', @level2type=N'COLUMN',@level2name=N'AuditeTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_outstorage', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_outstorage', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_outstorage', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出库表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_outstorage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_outstordetail', @level2type=N'COLUMN',@level2name=N'StorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出库ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_outstordetail', @level2type=N'COLUMN',@level2name=N'OutStorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_outstordetail', @level2type=N'COLUMN',@level2name=N'LocalId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'托盘ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_outstordetail', @level2type=N'COLUMN',@level2name=N'TrayId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'托盘分区ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_outstordetail', @level2type=N'COLUMN',@level2name=N'ZoneId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'条码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_outstordetail', @level2type=N'COLUMN',@level2name=N'BarCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_outstordetail', @level2type=N'COLUMN',@level2name=N'MaterialId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_outstordetail', @level2type=N'COLUMN',@level2name=N'BatchNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_outstordetail', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_outstordetail', @level2type=N'COLUMN',@level2name=N'TotalAmt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_outstordetail', @level2type=N'COLUMN',@level2name=N'LocalNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出库数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_outstordetail', @level2type=N'COLUMN',@level2name=N'OutNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_outstordetail', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_outstordetail', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_outstordetail', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出库明细' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_outstordetail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_recdetail', @level2type=N'COLUMN',@level2name=N'RecId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_recdetail', @level2type=N'COLUMN',@level2name=N'StorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_recdetail', @level2type=N'COLUMN',@level2name=N'LocaId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_recdetail', @level2type=N'COLUMN',@level2name=N'MaterialId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_recdetail', @level2type=N'COLUMN',@level2name=N'MeasureId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_recdetail', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_recdetail', @level2type=N'COLUMN',@level2name=N'PlanNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实收数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_recdetail', @level2type=N'COLUMN',@level2name=N'RecNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入库数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_recdetail', @level2type=N'COLUMN',@level2name=N'InNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_recdetail', @level2type=N'COLUMN',@level2name=N'Amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_recdetail', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_recdetail', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_recdetail', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货明细' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_recdetail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_receiving', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_receiving', @level2type=N'COLUMN',@level2name=N'StorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_receiving', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_receiving', @level2type=N'COLUMN',@level2name=N'OrderTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_receiving', @level2type=N'COLUMN',@level2name=N'RecTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货类型(枚举)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_receiving', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_receiving', @level2type=N'COLUMN',@level2name=N'RefCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态(0待审核;1确认；2：取消;3审核通过;4审核失败;5部分入库；6全部入库)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_receiving', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_receiving', @level2type=N'COLUMN',@level2name=N'SupId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_receiving', @level2type=N'COLUMN',@level2name=N'TotalNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入库数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_receiving', @level2type=N'COLUMN',@level2name=N'InNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_receiving', @level2type=N'COLUMN',@level2name=N'TotalAmt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_receiving', @level2type=N'COLUMN',@level2name=N'Remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'确认ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_receiving', @level2type=N'COLUMN',@level2name=N'ConfirmUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'确认时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_receiving', @level2type=N'COLUMN',@level2name=N'ConfirmTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_receiving', @level2type=N'COLUMN',@level2name=N'AuditUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_receiving', @level2type=N'COLUMN',@level2name=N'AuditeTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_receiving', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_receiving', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_receiving', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_receiving'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_send', @level2type=N'COLUMN',@level2name=N'StorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_send', @level2type=N'COLUMN',@level2name=N'Code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_send', @level2type=N'COLUMN',@level2name=N'OrderTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_send', @level2type=N'COLUMN',@level2name=N'SendTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_send', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联单号/出库单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_send', @level2type=N'COLUMN',@level2name=N'RefCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货状态：0编制中；1确认；2审批通过；3驳回；4部分出库；5全部出库' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_send', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_send', @level2type=N'COLUMN',@level2name=N'CusId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_send', @level2type=N'COLUMN',@level2name=N'AddrId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总共数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_send', @level2type=N'COLUMN',@level2name=N'TotalNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_send', @level2type=N'COLUMN',@level2name=N'SendNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_send', @level2type=N'COLUMN',@level2name=N'TotalAmt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_send', @level2type=N'COLUMN',@level2name=N'Remarks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'确认ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_send', @level2type=N'COLUMN',@level2name=N'ConfirmUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'确认时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_send', @level2type=N'COLUMN',@level2name=N'ConfirmTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_send', @level2type=N'COLUMN',@level2name=N'AuditUserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_send', @level2type=N'COLUMN',@level2name=N'AuditeTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_send', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_send', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_send', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_send'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_senddetail', @level2type=N'COLUMN',@level2name=N'SendId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_senddetail', @level2type=N'COLUMN',@level2name=N'StorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_senddetail', @level2type=N'COLUMN',@level2name=N'LocalId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_senddetail', @level2type=N'COLUMN',@level2name=N'MaterialId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_senddetail', @level2type=N'COLUMN',@level2name=N'MeasureId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_senddetail', @level2type=N'COLUMN',@level2name=N'BatchNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_senddetail', @level2type=N'COLUMN',@level2name=N'LocalNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出库数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_senddetail', @level2type=N'COLUMN',@level2name=N'PlanNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_senddetail', @level2type=N'COLUMN',@level2name=N'SendNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_senddetail', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'总价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_senddetail', @level2type=N'COLUMN',@level2name=N'Amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_senddetail', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_senddetail', @level2type=N'COLUMN',@level2name=N'CreatorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除状态：0=未删除；1＝已删除；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_senddetail', @level2type=N'COLUMN',@level2name=N'Deleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货明细' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'td_senddetail'
GO
USE [master]
GO
ALTER DATABASE [TEST] SET  READ_WRITE 
GO
