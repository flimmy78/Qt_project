USE [BST_TFT]
GO
/****** Object:  Table [dbo].[客户人员]    Script Date: 11/27/2013 12:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[客户人员](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[名称] [nchar](30) NOT NULL,
	[地址] [nchar](30) NULL,
	[联系方式] [nchar](30) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[客户人员] ON
INSERT [dbo].[客户人员] ([ID], [名称], [地址], [联系方式]) VALUES (1, N'litianyu                      ', N'shanghai                      ', N'1356467588                    ')
INSERT [dbo].[客户人员] ([ID], [名称], [地址], [联系方式]) VALUES (2, N'liuyong                       ', N'xxx                           ', N'xxx                           ')
SET IDENTITY_INSERT [dbo].[客户人员] OFF
/****** Object:  Table [dbo].[文件类型]    Script Date: 11/27/2013 12:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[文件类型](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[类型] [nchar](30) NOT NULL,
 CONSTRAINT [PK_文件类型] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[文件类型] ON
INSERT [dbo].[文件类型] ([ID], [类型]) VALUES (1, N'引导程序                          ')
INSERT [dbo].[文件类型] ([ID], [类型]) VALUES (2, N'内核                            ')
INSERT [dbo].[文件类型] ([ID], [类型]) VALUES (3, N'根文件系统                         ')
INSERT [dbo].[文件类型] ([ID], [类型]) VALUES (5, N'应用程序                          ')
INSERT [dbo].[文件类型] ([ID], [类型]) VALUES (6, N'烧录文档                          ')
INSERT [dbo].[文件类型] ([ID], [类型]) VALUES (7, N'装配文档                          ')
INSERT [dbo].[文件类型] ([ID], [类型]) VALUES (8, N'测试文档                          ')
SET IDENTITY_INSERT [dbo].[文件类型] OFF
/****** Object:  Table [dbo].[接口板型号]    Script Date: 11/27/2013 12:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[接口板型号](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[型号] [nchar](30) NOT NULL,
	[批番号] [nchar](30) NOT NULL,
	[描述] [nchar](100) NULL,
 CONSTRAINT [PK_接口板] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[接口板型号] ON
INSERT [dbo].[接口板型号] ([ID], [型号], [批番号], [描述]) VALUES (1, N'YAF_konei_spi_001             ', N'P05                           ', N'并口转接板                                                                                               ')
INSERT [dbo].[接口板型号] ([ID], [型号], [批番号], [描述]) VALUES (2, N'YAF_konei_spi_002             ', N'P05                           ', N'并口转接板                                                                                               ')
SET IDENTITY_INSERT [dbo].[接口板型号] OFF
/****** Object:  Table [dbo].[主题]    Script Date: 11/27/2013 12:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[主题](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[名称] [nchar](100) NULL,
	[设计者] [nchar](30) NULL,
	[提交时间] [nchar](30) NULL,
	[归档路径] [nchar](100) NULL,
	[描述] [nchar](100) NULL,
 CONSTRAINT [PK_tb-UI] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[主题] ON
INSERT [dbo].[主题] ([ID], [名称], [设计者], [提交时间], [归档路径], [描述]) VALUES (1, N'巨人通力蓝底白字1280_720                                                                                    ', N'美工                            ', N'星期二 十一月 26 16:42:09 2013      ', N'D:/MyProject/IDE/BST_DEBUG/ui_sqlwidget.h                                                           ', N'不带视频，楼层-1开始                                                                                         ')
SET IDENTITY_INSERT [dbo].[主题] OFF
/****** Object:  Table [dbo].[主板平台]    Script Date: 11/27/2013 12:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[主板平台](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[平台名] [nchar](30) NOT NULL,
 CONSTRAINT [PK_Platform] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[主板平台] ON
INSERT [dbo].[主板平台] ([ID], [平台名]) VALUES (1, N'N329                          ')
INSERT [dbo].[主板平台] ([ID], [平台名]) VALUES (2, N'AM335x                        ')
INSERT [dbo].[主板平台] ([ID], [平台名]) VALUES (4, N'N329                          ')
SET IDENTITY_INSERT [dbo].[主板平台] OFF
/****** Object:  Table [dbo].[研发人员]    Script Date: 11/27/2013 12:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[研发人员](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[名称] [nchar](30) NOT NULL,
	[联系方式] [nchar](30) NULL,
	[描述] [nchar](100) NULL,
 CONSTRAINT [PK_Designer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[研发人员] ON
INSERT [dbo].[研发人员] ([ID], [名称], [联系方式], [描述]) VALUES (0, N'靳文杰                           ', N'13564627633                   ', N'项目主管                                                                                                ')
INSERT [dbo].[研发人员] ([ID], [名称], [联系方式], [描述]) VALUES (1, N'乐悦                            ', N'13564627633                   ', N'嵌入式软件工程师                                                                                            ')
INSERT [dbo].[研发人员] ([ID], [名称], [联系方式], [描述]) VALUES (2, N'李东胜                           ', N'13564627633                   ', N'嵌入式软件工程师                                                                                            ')
INSERT [dbo].[研发人员] ([ID], [名称], [联系方式], [描述]) VALUES (3, N'田凯文                           ', N'13564627633                   ', N'嵌入式硬件工程师                                                                                            ')
INSERT [dbo].[研发人员] ([ID], [名称], [联系方式], [描述]) VALUES (4, N'廖普仁                           ', N'13564627633                   ', N'嵌入式硬件工程师                                                                                            ')
INSERT [dbo].[研发人员] ([ID], [名称], [联系方式], [描述]) VALUES (5, N'施香兰                           ', N'13564627633                   ', N'测试工程师                                                                                               ')
SET IDENTITY_INSERT [dbo].[研发人员] OFF
/****** Object:  Table [dbo].[销售人员]    Script Date: 11/27/2013 12:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[销售人员](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[名称] [nchar](30) NOT NULL,
	[联系方式] [nchar](10) NULL,
 CONSTRAINT [PK_tb-Seller] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[销售人员] ON
INSERT [dbo].[销售人员] ([ID], [名称], [联系方式]) VALUES (1, N'flower                        ', N'1356467894')
INSERT [dbo].[销售人员] ([ID], [名称], [联系方式]) VALUES (2, N'alsa                          ', N'1345678945')
SET IDENTITY_INSERT [dbo].[销售人员] OFF
/****** Object:  Table [dbo].[项目]    Script Date: 11/27/2013 12:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[项目](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[项目名] [nchar](30) NOT NULL,
	[主板型号] [nchar](30) NOT NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[项目] ON
INSERT [dbo].[项目] ([ID], [项目名], [主板型号]) VALUES (6, N'sodimas_saf_7.0               ', N'2                             ')
INSERT [dbo].[项目] ([ID], [项目名], [主板型号]) VALUES (11, N'im335x_canbus                 ', N'4                             ')
SET IDENTITY_INSERT [dbo].[项目] OFF
/****** Object:  Table [dbo].[文件列表]    Script Date: 11/27/2013 12:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[文件列表](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[文件类型] [int] NULL,
	[所属项目] [int] NULL,
	[版本号] [nchar](30) NULL,
	[设计者] [int] NULL,
	[提交时间] [nchar](30) NULL,
	[归档路径] [nchar](100) NULL,
	[描述] [nchar](100) NULL,
 CONSTRAINT [PK_ProjectFile] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[文件列表] ON
INSERT [dbo].[文件列表] ([ID], [文件类型], [所属项目], [版本号], [设计者], [提交时间], [归档路径], [描述]) VALUES (9, 3, 11, N'0.1                           ', 2, N'星期三 十一月 27 11:01:19 2013      ', N'C:/NFDBuffer/NetDisk/ffmpeg.exe                                                                     ', N'                                                                                                    ')
INSERT [dbo].[文件列表] ([ID], [文件类型], [所属项目], [版本号], [设计者], [提交时间], [归档路径], [描述]) VALUES (10, 5, 6, N'0.1                           ', 4, N'星期三 十一月 27 11:56:31 2013      ', N'C:/NFDBuffer/NetDisk/ffmpeg.exe                                                                     ', N'                                                                                                    ')
SET IDENTITY_INSERT [dbo].[文件列表] OFF
/****** Object:  Table [dbo].[订单]    Script Date: 11/27/2013 12:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[订单](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[单号] [nchar](30) NOT NULL,
	[名称] [nchar](30) NOT NULL,
	[数量] [int] NOT NULL,
	[项目] [int] NOT NULL,
	[接口板型号] [int] NOT NULL,
	[提交时间] [nchar](50) NULL,
	[详细描述] [nchar](100) NULL,
 CONSTRAINT [PK_ProductOrder] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_ProductOrder] UNIQUE NONCLUSTERED 
(
	[单号] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[订单] ON
INSERT [dbo].[订单] ([ID], [单号], [名称], [数量], [项目], [接口板型号], [提交时间], [详细描述]) VALUES (109, N'QYW120404290                  ', N'贵州新时达                         ', 100, 6, 1, N'星期一 十一月 25 17:41:30 2013                          ', N'                                                                                                    ')
INSERT [dbo].[订单] ([ID], [单号], [名称], [数量], [项目], [接口板型号], [提交时间], [详细描述]) VALUES (154, N'QYW120404291                  ', N'安微通力                          ', 1000, 11, 1, N'星期二 十一月 26 09:24:21 2013                          ', N'                                                                                                    ')
INSERT [dbo].[订单] ([ID], [单号], [名称], [数量], [项目], [接口板型号], [提交时间], [详细描述]) VALUES (167, N'QYW120404292                  ', N'南浔通力                          ', 1000, 11, 1, N'星期三 十一月 27 11:09:09 2013                          ', N'                                                                                                    ')
INSERT [dbo].[订单] ([ID], [单号], [名称], [数量], [项目], [接口板型号], [提交时间], [详细描述]) VALUES (183, N'QYW120404293                  ', N'sodimas                       ', 206, 6, 1, N'星期三 十一月 27 11:12:59 2013                          ', N'                                                                                                    ')
INSERT [dbo].[订单] ([ID], [单号], [名称], [数量], [项目], [接口板型号], [提交时间], [详细描述]) VALUES (213, N'QYW120404294                  ', N'无锡希姆斯                         ', 100, 11, 2, N'星期三 十一月 27 11:09:07 2013                          ', N'hahahaha                                                                                            ')
INSERT [dbo].[订单] ([ID], [单号], [名称], [数量], [项目], [接口板型号], [提交时间], [详细描述]) VALUES (214, N'QYW120404295                  ', N'巨人通力                          ', 1000, 11, 1, N'星期三 十一月 27 11:09:05 2013                          ', N'...                                                                                                 ')
INSERT [dbo].[订单] ([ID], [单号], [名称], [数量], [项目], [接口板型号], [提交时间], [详细描述]) VALUES (215, N'QYW120404296                  ', N'三星现代                          ', 1009, 6, 1, N'星期三 十一月 27 11:08:54 2013                          ', N'saff
safsafa
asfasf
asfsaf                                                                          ')
INSERT [dbo].[订单] ([ID], [单号], [名称], [数量], [项目], [接口板型号], [提交时间], [详细描述]) VALUES (223, N'QYW120404297                  ', N'西门子                           ', 1000, 6, 1, N'星期三 十一月 27 11:16:19 2013                          ', N'safsaf
safasfa
awwfasf                                                                              ')
SET IDENTITY_INSERT [dbo].[订单] OFF
/****** Object:  Table [dbo].[网盘路径]    Script Date: 11/27/2013 12:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[网盘路径](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[归档路径] [nchar](100) NOT NULL,
	[所属项目] [int] NOT NULL,
	[文件类型] [int] NOT NULL,
 CONSTRAINT [PK_网盘路径] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[网盘路径] ON
INSERT [dbo].[网盘路径] ([ID], [归档路径], [所属项目], [文件类型]) VALUES (1, N'C:/NFDBuffer/NetDisk                                                                                ', 6, 3)
INSERT [dbo].[网盘路径] ([ID], [归档路径], [所属项目], [文件类型]) VALUES (2, N'C:/NFDBuffer/NetDisk                                                                                ', 6, 1)
INSERT [dbo].[网盘路径] ([ID], [归档路径], [所属项目], [文件类型]) VALUES (3, N'C:/NFDBuffer/NetDisk                                                                                ', 6, 2)
INSERT [dbo].[网盘路径] ([ID], [归档路径], [所属项目], [文件类型]) VALUES (4, N'C:/NFDBuffer/NetDisk                                                                                ', 6, 5)
INSERT [dbo].[网盘路径] ([ID], [归档路径], [所属项目], [文件类型]) VALUES (5, N'C:/NFDBuffer/NetDisk                                                                                ', 6, 6)
INSERT [dbo].[网盘路径] ([ID], [归档路径], [所属项目], [文件类型]) VALUES (6, N'C:/NFDBuffer/NetDisk                                                                                ', 6, 8)
INSERT [dbo].[网盘路径] ([ID], [归档路径], [所属项目], [文件类型]) VALUES (7, N'C:/NFDBuffer/NetDisk                                                                                ', 6, 7)
INSERT [dbo].[网盘路径] ([ID], [归档路径], [所属项目], [文件类型]) VALUES (9, N'C:/NFDBuffer/NetDisk                                                                                ', 11, 3)
SET IDENTITY_INSERT [dbo].[网盘路径] OFF
/****** Object:  Table [dbo].[客户记录]    Script Date: 11/27/2013 12:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[客户记录](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[客户名称] [int] NOT NULL,
	[订单号] [int] NOT NULL,
 CONSTRAINT [PK_tb-CustomRecord] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[客户记录] ON
INSERT [dbo].[客户记录] ([ID], [客户名称], [订单号]) VALUES (2, 1, 213)
INSERT [dbo].[客户记录] ([ID], [客户名称], [订单号]) VALUES (3, 2, 183)
INSERT [dbo].[客户记录] ([ID], [客户名称], [订单号]) VALUES (4, 1, 109)
INSERT [dbo].[客户记录] ([ID], [客户名称], [订单号]) VALUES (5, 2, 154)
INSERT [dbo].[客户记录] ([ID], [客户名称], [订单号]) VALUES (6, 2, 213)
INSERT [dbo].[客户记录] ([ID], [客户名称], [订单号]) VALUES (7, 1, 183)
INSERT [dbo].[客户记录] ([ID], [客户名称], [订单号]) VALUES (8, 1, 167)
INSERT [dbo].[客户记录] ([ID], [客户名称], [订单号]) VALUES (9, 2, 214)
INSERT [dbo].[客户记录] ([ID], [客户名称], [订单号]) VALUES (10, 2, 215)
SET IDENTITY_INSERT [dbo].[客户记录] OFF
/****** Object:  Table [dbo].[接口板]    Script Date: 11/27/2013 12:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[接口板](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[二维码] [nchar](30) NOT NULL,
	[订单号] [int] NULL,
 CONSTRAINT [PK_InterfaceBoard] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[接口板] ON
INSERT [dbo].[接口板] ([ID], [二维码], [订单号]) VALUES (1, N'201311202000                  ', 213)
SET IDENTITY_INSERT [dbo].[接口板] OFF
/****** Object:  Table [dbo].[销售记录]    Script Date: 11/27/2013 12:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[销售记录](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[销售名称] [int] NOT NULL,
	[订单号] [int] NOT NULL,
 CONSTRAINT [PK_SellerRecord] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[销售记录] ON
INSERT [dbo].[销售记录] ([ID], [销售名称], [订单号]) VALUES (1, 1, 109)
INSERT [dbo].[销售记录] ([ID], [销售名称], [订单号]) VALUES (2, 1, 154)
INSERT [dbo].[销售记录] ([ID], [销售名称], [订单号]) VALUES (3, 1, 213)
INSERT [dbo].[销售记录] ([ID], [销售名称], [订单号]) VALUES (4, 2, 223)
INSERT [dbo].[销售记录] ([ID], [销售名称], [订单号]) VALUES (5, 2, 167)
INSERT [dbo].[销售记录] ([ID], [销售名称], [订单号]) VALUES (6, 2, 183)
INSERT [dbo].[销售记录] ([ID], [销售名称], [订单号]) VALUES (7, 1, 214)
INSERT [dbo].[销售记录] ([ID], [销售名称], [订单号]) VALUES (8, 1, 215)
INSERT [dbo].[销售记录] ([ID], [销售名称], [订单号]) VALUES (9, 1, 223)
SET IDENTITY_INSERT [dbo].[销售记录] OFF
/****** Object:  Table [dbo].[主板]    Script Date: 11/27/2013 12:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[主板](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[二维码] [nchar](30) NULL,
	[订单号] [int] NULL,
 CONSTRAINT [PK_MainBoard] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[主板] ON
INSERT [dbo].[主板] ([ID], [二维码], [订单号]) VALUES (1, N'201311201000                  ', 213)
INSERT [dbo].[主板] ([ID], [二维码], [订单号]) VALUES (28, N'5                             ', 109)
INSERT [dbo].[主板] ([ID], [二维码], [订单号]) VALUES (29, N'6                             ', 109)
SET IDENTITY_INSERT [dbo].[主板] OFF
/****** Object:  Table [dbo].[主题记录]    Script Date: 11/27/2013 12:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[主题记录](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[订单号] [int] NULL,
	[主题名] [int] NULL,
 CONSTRAINT [PK_UIRecord] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[主题记录] ON
INSERT [dbo].[主题记录] ([ID], [订单号], [主题名]) VALUES (1, 213, 1)
INSERT [dbo].[主题记录] ([ID], [订单号], [主题名]) VALUES (2, 214, 1)
INSERT [dbo].[主题记录] ([ID], [订单号], [主题名]) VALUES (3, 215, 1)
INSERT [dbo].[主题记录] ([ID], [订单号], [主题名]) VALUES (5, 183, 1)
INSERT [dbo].[主题记录] ([ID], [订单号], [主题名]) VALUES (6, 167, 1)
INSERT [dbo].[主题记录] ([ID], [订单号], [主题名]) VALUES (8, 154, 1)
INSERT [dbo].[主题记录] ([ID], [订单号], [主题名]) VALUES (9, 109, 1)
SET IDENTITY_INSERT [dbo].[主题记录] OFF
/****** Object:  Table [dbo].[主板日志]    Script Date: 11/27/2013 12:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[主板日志](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[主板二维码] [int] NULL,
	[提交时间] [nchar](100) NULL,
	[描述] [nchar](100) NULL,
 CONSTRAINT [PK_MainBoardLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[主板日志] ON
INSERT [dbo].[主板日志] ([ID], [主板二维码], [提交时间], [描述]) VALUES (1, 1, N'星期三 十一月 20 16:03:23 2013                                                                            ', N'烧录                                                                                                  ')
SET IDENTITY_INSERT [dbo].[主板日志] OFF
/****** Object:  Table [dbo].[接口板日志]    Script Date: 11/27/2013 12:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[接口板日志](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[接口板二维码] [int] NULL,
	[提交时间] [nchar](100) NULL,
	[描述] [nchar](100) NULL,
 CONSTRAINT [PK_InterfaceBoardLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[接口板日志] ON
INSERT [dbo].[接口板日志] ([ID], [接口板二维码], [提交时间], [描述]) VALUES (1, 1, N'星期三 十一月 20 16:03:50 2013                                                                            ', N'烧录                                                                                                  ')
INSERT [dbo].[接口板日志] ([ID], [接口板二维码], [提交时间], [描述]) VALUES (2, 1, N'星期三 十一月 20 16:06:16 2013                                                                            ', N'烧录                                                                                                  ')
SET IDENTITY_INSERT [dbo].[接口板日志] OFF
/****** Object:  Table [dbo].[设备]    Script Date: 11/27/2013 12:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[设备](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[二维码] [nchar](30) NULL,
	[主板二维码] [int] NULL,
	[接口板二维码] [int] NULL,
 CONSTRAINT [PK_Device] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[设备] ON
INSERT [dbo].[设备] ([ID], [二维码], [主板二维码], [接口板二维码]) VALUES (3, N'201311200000                  ', 1, 1)
SET IDENTITY_INSERT [dbo].[设备] OFF
/****** Object:  Table [dbo].[设备日志]    Script Date: 11/27/2013 12:37:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[设备日志](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[设备二维码] [int] NULL,
	[提交时间] [nchar](100) NULL,
	[描述] [nchar](100) NOT NULL,
 CONSTRAINT [PK_DeviceTestLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[设备日志] ON
INSERT [dbo].[设备日志] ([ID], [设备二维码], [提交时间], [描述]) VALUES (1, 3, N'星期三 十一月 27 09:02:44 2013                                                                            ', N'组装                                                                                                  ')
INSERT [dbo].[设备日志] ([ID], [设备二维码], [提交时间], [描述]) VALUES (2, 3, N'星期三 十一月 20 16:00:33 2013                                                                            ', N'测试                                                                                                  ')
SET IDENTITY_INSERT [dbo].[设备日志] OFF
/****** Object:  ForeignKey [FK_ProductOrder_Project]    Script Date: 11/27/2013 12:37:29 ******/
ALTER TABLE [dbo].[订单]  WITH CHECK ADD  CONSTRAINT [FK_ProductOrder_Project] FOREIGN KEY([项目])
REFERENCES [dbo].[项目] ([ID])
GO
ALTER TABLE [dbo].[订单] CHECK CONSTRAINT [FK_ProductOrder_Project]
GO
/****** Object:  ForeignKey [FK_订单_接口板]    Script Date: 11/27/2013 12:37:29 ******/
ALTER TABLE [dbo].[订单]  WITH CHECK ADD  CONSTRAINT [FK_订单_接口板] FOREIGN KEY([接口板型号])
REFERENCES [dbo].[接口板型号] ([ID])
GO
ALTER TABLE [dbo].[订单] CHECK CONSTRAINT [FK_订单_接口板]
GO
/****** Object:  ForeignKey [FK_InterfaceBoard_订单]    Script Date: 11/27/2013 12:37:29 ******/
ALTER TABLE [dbo].[接口板]  WITH CHECK ADD  CONSTRAINT [FK_InterfaceBoard_订单] FOREIGN KEY([订单号])
REFERENCES [dbo].[订单] ([ID])
GO
ALTER TABLE [dbo].[接口板] CHECK CONSTRAINT [FK_InterfaceBoard_订单]
GO
/****** Object:  ForeignKey [FK_InterfaceBoardLog_InterfaceBoard]    Script Date: 11/27/2013 12:37:29 ******/
ALTER TABLE [dbo].[接口板日志]  WITH CHECK ADD  CONSTRAINT [FK_InterfaceBoardLog_InterfaceBoard] FOREIGN KEY([接口板二维码])
REFERENCES [dbo].[接口板] ([ID])
GO
ALTER TABLE [dbo].[接口板日志] CHECK CONSTRAINT [FK_InterfaceBoardLog_InterfaceBoard]
GO
/****** Object:  ForeignKey [FK_CustomRecord_Customer1]    Script Date: 11/27/2013 12:37:29 ******/
ALTER TABLE [dbo].[客户记录]  WITH CHECK ADD  CONSTRAINT [FK_CustomRecord_Customer1] FOREIGN KEY([客户名称])
REFERENCES [dbo].[客户人员] ([ID])
GO
ALTER TABLE [dbo].[客户记录] CHECK CONSTRAINT [FK_CustomRecord_Customer1]
GO
/****** Object:  ForeignKey [FK_CustomRecord_订单]    Script Date: 11/27/2013 12:37:29 ******/
ALTER TABLE [dbo].[客户记录]  WITH CHECK ADD  CONSTRAINT [FK_CustomRecord_订单] FOREIGN KEY([订单号])
REFERENCES [dbo].[订单] ([ID])
GO
ALTER TABLE [dbo].[客户记录] CHECK CONSTRAINT [FK_CustomRecord_订单]
GO
/****** Object:  ForeignKey [FK_Device_InterfaceBoard]    Script Date: 11/27/2013 12:37:29 ******/
ALTER TABLE [dbo].[设备]  WITH CHECK ADD  CONSTRAINT [FK_Device_InterfaceBoard] FOREIGN KEY([接口板二维码])
REFERENCES [dbo].[接口板] ([ID])
GO
ALTER TABLE [dbo].[设备] CHECK CONSTRAINT [FK_Device_InterfaceBoard]
GO
/****** Object:  ForeignKey [FK_Device_MainBoard]    Script Date: 11/27/2013 12:37:29 ******/
ALTER TABLE [dbo].[设备]  WITH CHECK ADD  CONSTRAINT [FK_Device_MainBoard] FOREIGN KEY([主板二维码])
REFERENCES [dbo].[主板] ([ID])
GO
ALTER TABLE [dbo].[设备] CHECK CONSTRAINT [FK_Device_MainBoard]
GO
/****** Object:  ForeignKey [FK_设备日志_设备]    Script Date: 11/27/2013 12:37:29 ******/
ALTER TABLE [dbo].[设备日志]  WITH CHECK ADD  CONSTRAINT [FK_设备日志_设备] FOREIGN KEY([设备二维码])
REFERENCES [dbo].[设备] ([ID])
GO
ALTER TABLE [dbo].[设备日志] CHECK CONSTRAINT [FK_设备日志_设备]
GO
/****** Object:  ForeignKey [FK_网盘路径_文件类型]    Script Date: 11/27/2013 12:37:29 ******/
ALTER TABLE [dbo].[网盘路径]  WITH CHECK ADD  CONSTRAINT [FK_网盘路径_文件类型] FOREIGN KEY([文件类型])
REFERENCES [dbo].[文件类型] ([ID])
GO
ALTER TABLE [dbo].[网盘路径] CHECK CONSTRAINT [FK_网盘路径_文件类型]
GO
/****** Object:  ForeignKey [FK_网盘路径_项目]    Script Date: 11/27/2013 12:37:29 ******/
ALTER TABLE [dbo].[网盘路径]  WITH CHECK ADD  CONSTRAINT [FK_网盘路径_项目] FOREIGN KEY([所属项目])
REFERENCES [dbo].[项目] ([ID])
GO
ALTER TABLE [dbo].[网盘路径] CHECK CONSTRAINT [FK_网盘路径_项目]
GO
/****** Object:  ForeignKey [FK_ProjectFile_Designer]    Script Date: 11/27/2013 12:37:29 ******/
ALTER TABLE [dbo].[文件列表]  WITH CHECK ADD  CONSTRAINT [FK_ProjectFile_Designer] FOREIGN KEY([设计者])
REFERENCES [dbo].[研发人员] ([ID])
GO
ALTER TABLE [dbo].[文件列表] CHECK CONSTRAINT [FK_ProjectFile_Designer]
GO
/****** Object:  ForeignKey [FK_ProjectFile_Project]    Script Date: 11/27/2013 12:37:29 ******/
ALTER TABLE [dbo].[文件列表]  WITH CHECK ADD  CONSTRAINT [FK_ProjectFile_Project] FOREIGN KEY([所属项目])
REFERENCES [dbo].[项目] ([ID])
GO
ALTER TABLE [dbo].[文件列表] CHECK CONSTRAINT [FK_ProjectFile_Project]
GO
/****** Object:  ForeignKey [FK_文件列表_文件类型]    Script Date: 11/27/2013 12:37:29 ******/
ALTER TABLE [dbo].[文件列表]  WITH CHECK ADD  CONSTRAINT [FK_文件列表_文件类型] FOREIGN KEY([文件类型])
REFERENCES [dbo].[文件类型] ([ID])
GO
ALTER TABLE [dbo].[文件列表] CHECK CONSTRAINT [FK_文件列表_文件类型]
GO
/****** Object:  ForeignKey [FK_SellerRecord_ProductOrder]    Script Date: 11/27/2013 12:37:29 ******/
ALTER TABLE [dbo].[销售记录]  WITH CHECK ADD  CONSTRAINT [FK_SellerRecord_ProductOrder] FOREIGN KEY([订单号])
REFERENCES [dbo].[订单] ([ID])
GO
ALTER TABLE [dbo].[销售记录] CHECK CONSTRAINT [FK_SellerRecord_ProductOrder]
GO
/****** Object:  ForeignKey [FK_SellerRecord_Seller]    Script Date: 11/27/2013 12:37:29 ******/
ALTER TABLE [dbo].[销售记录]  WITH CHECK ADD  CONSTRAINT [FK_SellerRecord_Seller] FOREIGN KEY([销售名称])
REFERENCES [dbo].[销售人员] ([ID])
GO
ALTER TABLE [dbo].[销售记录] CHECK CONSTRAINT [FK_SellerRecord_Seller]
GO
/****** Object:  ForeignKey [FK_MainBoard_订单]    Script Date: 11/27/2013 12:37:29 ******/
ALTER TABLE [dbo].[主板]  WITH CHECK ADD  CONSTRAINT [FK_MainBoard_订单] FOREIGN KEY([订单号])
REFERENCES [dbo].[订单] ([ID])
GO
ALTER TABLE [dbo].[主板] CHECK CONSTRAINT [FK_MainBoard_订单]
GO
/****** Object:  ForeignKey [FK_MainBoardLog_MainBoard]    Script Date: 11/27/2013 12:37:29 ******/
ALTER TABLE [dbo].[主板日志]  WITH CHECK ADD  CONSTRAINT [FK_MainBoardLog_MainBoard] FOREIGN KEY([主板二维码])
REFERENCES [dbo].[主板] ([ID])
GO
ALTER TABLE [dbo].[主板日志] CHECK CONSTRAINT [FK_MainBoardLog_MainBoard]
GO
/****** Object:  ForeignKey [FK_UIRecord_ProductOrder]    Script Date: 11/27/2013 12:37:29 ******/
ALTER TABLE [dbo].[主题记录]  WITH CHECK ADD  CONSTRAINT [FK_UIRecord_ProductOrder] FOREIGN KEY([订单号])
REFERENCES [dbo].[订单] ([ID])
GO
ALTER TABLE [dbo].[主题记录] CHECK CONSTRAINT [FK_UIRecord_ProductOrder]
GO
/****** Object:  ForeignKey [FK_UIRecord_UI]    Script Date: 11/27/2013 12:37:29 ******/
ALTER TABLE [dbo].[主题记录]  WITH CHECK ADD  CONSTRAINT [FK_UIRecord_UI] FOREIGN KEY([主题名])
REFERENCES [dbo].[主题] ([ID])
GO
ALTER TABLE [dbo].[主题记录] CHECK CONSTRAINT [FK_UIRecord_UI]
GO
