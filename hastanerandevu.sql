USE [hastane]
GO
/****** Object:  Table [dbo].[doktorlar]    Script Date: 15.01.2025 21:34:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[doktorlar](
	[DOKTORID] [int] IDENTITY(1,1) NOT NULL,
	[DOKTORAD] [nvarchar](50) NOT NULL,
	[HASTANEID] [int] NOT NULL,
	[KLINIKID] [int] NOT NULL,
 CONSTRAINT [PK_doktorlar] PRIMARY KEY CLUSTERED 
(
	[DOKTORID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hastaneler]    Script Date: 15.01.2025 21:34:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hastaneler](
	[HASTANEID] [int] IDENTITY(1,1) NOT NULL,
	[SEHIRID] [int] NOT NULL,
	[ILCEID] [int] NOT NULL,
	[HASTANEAD] [nvarchar](60) NOT NULL,
 CONSTRAINT [PK_hastaneler] PRIMARY KEY CLUSTERED 
(
	[HASTANEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ilceler]    Script Date: 15.01.2025 21:34:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ilceler](
	[ILCEID] [int] IDENTITY(1,1) NOT NULL,
	[SEHIRID] [int] NOT NULL,
	[ILCEAD] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ilceler] PRIMARY KEY CLUSTERED 
(
	[ILCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[klinikler]    Script Date: 15.01.2025 21:34:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[klinikler](
	[KLINIKID] [int] IDENTITY(1,1) NOT NULL,
	[KLINIKAD] [nvarchar](50) NOT NULL,
	[HASTANEID] [int] NULL,
 CONSTRAINT [PK_klinikler] PRIMARY KEY CLUSTERED 
(
	[KLINIKID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[personel]    Script Date: 15.01.2025 21:34:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personel](
	[PID] [int] IDENTITY(1,1) NOT NULL,
	[PUsername] [nvarchar](50) NULL,
	[PPasword] [nvarchar](50) NULL,
 CONSTRAINT [PK_personel] PRIMARY KEY CLUSTERED 
(
	[PID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[randevular]    Script Date: 15.01.2025 21:34:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[randevular](
	[RANDEVUID] [int] IDENTITY(1,1) NOT NULL,
	[USERID] [int] NOT NULL,
	[DOKTORID] [int] NOT NULL,
	[RANDEVUTARIH] [nvarchar](50) NOT NULL,
	[RANDEVUSAAT] [nvarchar](50) NOT NULL,
	[RANDEVUTUR] [int] NULL,
 CONSTRAINT [PK_randevular] PRIMARY KEY CLUSTERED 
(
	[RANDEVUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sehirler]    Script Date: 15.01.2025 21:34:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sehirler](
	[SEHIRID] [int] IDENTITY(1,1) NOT NULL,
	[SEHIRAD] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_sehirler] PRIMARY KEY CLUSTERED 
(
	[SEHIRID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tur]    Script Date: 15.01.2025 21:34:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tur](
	[RANDEVUTUR] [int] IDENTITY(1,1) NOT NULL,
	[RANDEVUAD] [nvarchar](50) NULL,
 CONSTRAINT [PK_tur] PRIMARY KEY CLUSTERED 
(
	[RANDEVUTUR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 15.01.2025 21:34:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[USERID] [int] IDENTITY(1,1) NOT NULL,
	[USERTC] [nvarchar](20) NOT NULL,
	[USERAD] [nvarchar](20) NOT NULL,
	[USERSOYAD] [nvarchar](20) NOT NULL,
	[USERDOGUM] [date] NOT NULL,
	[USERSİFRE] [nvarchar](20) NOT NULL,
	[AILEHID] [int] NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[USERID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[doktorlar] ON 

INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (1, N'Ömer Faruk Cengiz', 1, 1)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (2, N'Berkay Akparlar', 1, 2)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (3, N'Eren Kıranatlı', 1, 3)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (4, N'Ahmet Çakıl', 1, 4)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (5, N'Zeynep Gürler', 1, 5)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (6, N'Ebru Gün', 1, 6)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (7, N'Hakan İlkay', 1, 7)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (8, N'Buket Dağdeviren', 1, 8)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (9, N'Soner Kabak', 2, 1010)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (10, N'Duygu Özlü', 2, 1011)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (11, N'Oğuzhan Ballı', 2, 1012)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (12, N'Onur Yokuşlu', 2, 1013)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (13, N'Tülay Şener', 2, 1014)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (14, N'Erşan Çağan Bozkurt', 2, 1015)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (15, N'Demir Can', 2, 1016)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (16, N'Hatice Pınarlı', 2, 1017)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (17, N'Doruk Yücesoy', 3, 1018)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (18, N'Taner Tümük', 3, 1019)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (19, N'Buse Terim', 3, 1020)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (20, N'Sinan Engin', 3, 1021)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (21, N'Fatma Karan', 3, 1022)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (22, N'Fatih Kalkan', 3, 1023)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (23, N'Uğur Taş', 3, 1024)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (24, N'Çağrı Ergün', 3, 1025)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (25, N'Eylül Güzel', 4, 1026)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (26, N'Arda Demir', 4, 1027)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (27, N'Mustafa Korkut', 4, 1028)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (28, N'Oğuzhan Görkem', 4, 1029)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (29, N'İrem Sarkıt', 4, 1030)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (30, N'Yaren Yılmaz', 4, 1031)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (31, N'Ziya Yerlitaş', 4, 1032)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (32, N'Nurettin Yerlikabak', 4, 1033)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (33, N'Oğuz Kaan Subaşı', 5, 1034)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (34, N'Beyza Avşar', 5, 1035)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (35, N'Sena Aslan', 5, 1036)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (36, N'Kemal Parlak', 5, 1037)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (37, N'Melisa Metin', 5, 1038)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (38, N'Hazan Gürses', 5, 1039)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (39, N'Hilmi Cevdet', 5, 1040)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (40, N'Celal Güven', 5, 1041)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (41, N'Nergis İnan', 6, 1042)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (42, N'Çağla Akyüz', 6, 1043)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (43, N'Emirhan Kıvanç', 6, 1044)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (44, N'Tolunay Ören', 6, 1045)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (45, N'Gülbahar Büyük', 6, 1046)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (46, N'Ender Taşçı', 6, 1047)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (47, N'Murat Yücedağ', 6, 1048)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (48, N'Damla Süvari', 6, 1049)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (49, N'Edis İnci', 7, 1050)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (50, N'Alp Saçan', 7, 1051)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (51, N'Tugay Volkan', 7, 1052)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (52, N'Gülben Topbaş', 7, 1053)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (53, N'Öykü Ayral', 7, 1054)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (54, N'Erol Kahya', 7, 1055)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (55, N'Makbule Kutay', 7, 1056)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (56, N'Yağmur Karatay', 7, 1057)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (57, N'Yiğit Aldemir', 8, 1058)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (59, N'Ramiz Karaeski', 8, 1059)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (60, N'Gülay Atalar', 8, 1060)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (61, N'Binnur Yeşil', 8, 1061)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (62, N'Özge Yetiş', 8, 1062)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (63, N'Selim Tanyu', 8, 1063)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (64, N'Halis Erim', 8, 1064)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (65, N'Levent Ülgen', 8, 1065)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (66, N'Sevinç Özcan', 9, 1066)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (67, N'Feray Tüzün', 9, 1067)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (68, N'Bora Yüksel', 9, 1068)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (69, N'Ayten Orbay', 9, 1069)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (70, N'Ata Sancak', 9, 1070)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (71, N'Mehmet Cemil Acar', 9, 1071)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (72, N'Açelya Erim', 9, 1072)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (73, N'Adnan Enver', 9, 8)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (1074, N'Sedat Toprak', 1, 1)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (1076, N'Berat Yılmaz', 1, 1)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (2074, N'Ekrem Koru', 1012, 2074)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (2076, N'dbc', 2, 1011)
INSERT [dbo].[doktorlar] ([DOKTORID], [DOKTORAD], [HASTANEID], [KLINIKID]) VALUES (2077, N'Can', 1, 2)
SET IDENTITY_INSERT [dbo].[doktorlar] OFF
GO
SET IDENTITY_INSERT [dbo].[hastaneler] ON 

INSERT [dbo].[hastaneler] ([HASTANEID], [SEHIRID], [ILCEID], [HASTANEAD]) VALUES (1, 1, 1, N'Cerrahpaşa Tıp Fakültesi Hastanesi')
INSERT [dbo].[hastaneler] ([HASTANEID], [SEHIRID], [ILCEID], [HASTANEAD]) VALUES (2, 1, 2, N'Bahçelievler Devlet Hastanesi ')
INSERT [dbo].[hastaneler] ([HASTANEID], [SEHIRID], [ILCEID], [HASTANEAD]) VALUES (3, 1, 3, N'İstanbul Eğitim ve Araştırma Hastanesi')
INSERT [dbo].[hastaneler] ([HASTANEID], [SEHIRID], [ILCEID], [HASTANEAD]) VALUES (4, 2, 4, N'Ankara Etlik Şehir Hastanesi')
INSERT [dbo].[hastaneler] ([HASTANEID], [SEHIRID], [ILCEID], [HASTANEAD]) VALUES (5, 2, 5, N'Ankara Şehir Hastanesi')
INSERT [dbo].[hastaneler] ([HASTANEID], [SEHIRID], [ILCEID], [HASTANEAD]) VALUES (6, 2, 6, N'Ankara Eğitim ve Araştırma Hastanesi')
INSERT [dbo].[hastaneler] ([HASTANEID], [SEHIRID], [ILCEID], [HASTANEAD]) VALUES (7, 3, 7, N'Ege Üniversitesi Hastanesi')
INSERT [dbo].[hastaneler] ([HASTANEID], [SEHIRID], [ILCEID], [HASTANEAD]) VALUES (8, 3, 8, N'Tepecik Eğitim ve Araştırma Hastanesi')
INSERT [dbo].[hastaneler] ([HASTANEID], [SEHIRID], [ILCEID], [HASTANEAD]) VALUES (9, 3, 10, N'Gaziemir Devlet Hastanesi')
INSERT [dbo].[hastaneler] ([HASTANEID], [SEHIRID], [ILCEID], [HASTANEAD]) VALUES (1012, 2, 5, N'Sağlık Ocağı')
SET IDENTITY_INSERT [dbo].[hastaneler] OFF
GO
SET IDENTITY_INSERT [dbo].[ilceler] ON 

INSERT [dbo].[ilceler] ([ILCEID], [SEHIRID], [ILCEAD]) VALUES (1, 1, N'Fatih')
INSERT [dbo].[ilceler] ([ILCEID], [SEHIRID], [ILCEAD]) VALUES (2, 1, N'Bahçelievler')
INSERT [dbo].[ilceler] ([ILCEID], [SEHIRID], [ILCEAD]) VALUES (3, 1, N'Küçükçekmece')
INSERT [dbo].[ilceler] ([ILCEID], [SEHIRID], [ILCEAD]) VALUES (4, 2, N'Keçiören')
INSERT [dbo].[ilceler] ([ILCEID], [SEHIRID], [ILCEAD]) VALUES (5, 2, N'Çankaya')
INSERT [dbo].[ilceler] ([ILCEID], [SEHIRID], [ILCEAD]) VALUES (6, 2, N'Altındağ')
INSERT [dbo].[ilceler] ([ILCEID], [SEHIRID], [ILCEAD]) VALUES (7, 3, N'Bornova')
INSERT [dbo].[ilceler] ([ILCEID], [SEHIRID], [ILCEAD]) VALUES (8, 3, N'Konak')
INSERT [dbo].[ilceler] ([ILCEID], [SEHIRID], [ILCEAD]) VALUES (10, 3, N'Gaziemir')
SET IDENTITY_INSERT [dbo].[ilceler] OFF
GO
SET IDENTITY_INSERT [dbo].[klinikler] ON 

INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1, N'Cildiye(Dermatoloji)', 1)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (2, N'Genel Cerrahi', 1)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (3, N'Çocuk Sağlığı ve Hastalıkları', 1)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (4, N'İç Hastalıkları(Dahiliye)', 1)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (5, N'Kulak-Burun-Boğaz(KBB)', 1)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (6, N'Gastroentroloji', 1)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (7, N'Kardiyoloji', 1)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (8, N'Nöroloji', 1)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1010, N'Cildiye(Dermatoloji)', 2)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1011, N'Genel Cerrahi', 2)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1012, N'Çocuk Sağlığı ve Hastalıkları', 2)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1013, N'İç Hastalıkları(Dahiliye)', 2)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1014, N'Kulak-Burun-Boğaz(KBB)', 2)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1015, N'Gastroentroloji', 2)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1016, N'Kardiyoloji', 2)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1017, N'Nöroloji', 2)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1018, N'Cildiye(Dermatoloji)', 3)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1019, N'Genel Cerrahi', 3)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1020, N'Çocuk Sağlığı ve Hastalıkları', 3)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1021, N'İç Hastalıkları(Dahiliye)', 3)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1022, N'Kulak-Burun-Boğaz(KBB)', 3)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1023, N'Gastroentroloji', 3)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1024, N'Kardiyoloji', 3)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1025, N'Nöroloji', 3)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1026, N'Cildiye(Dermatoloji)', 4)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1027, N'Genel Cerrahi', 4)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1028, N'Çocuk Sağlığı ve Hastalıkları', 4)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1029, N'İç Hastalıkları(Dahiliye)', 4)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1030, N'Kulak-Burun-Boğaz(KBB)', 4)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1031, N'Gastroentroloji', 4)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1032, N'Kardiyoloji', 4)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1033, N'Nöroloji', 4)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1034, N'Cildiye(Dermatoloji)', 5)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1035, N'Genel Cerrahi', 5)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1036, N'Çocuk Sağlığı ve Hastalıkları', 5)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1037, N'İç Hastalıkları(Dahiliye)', 5)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1038, N'Kulak-Burun-Boğaz(KBB)', 5)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1039, N'Gastroentroloji', 5)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1040, N'Kardiyoloji', 5)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1041, N'Nöroloji', 5)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1042, N'Cildiye(Dermatoloji)', 6)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1043, N'Genel Cerrahi', 6)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1044, N'Çocuk Sağlığı ve Hastalıkları', 6)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1045, N'İç Hastalıkları(Dahiliye)', 6)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1046, N'Kulak-Burun-Boğaz(KBB)', 6)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1047, N'Gastroentroloji', 6)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1048, N'Kardiyoloji', 6)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1049, N'Nöroloji', 6)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1050, N'Cildiye(Dermatoloji)', 7)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1051, N'Genel Cerrahi', 7)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1052, N'Çocuk Sağlığı ve Hastalıkları', 7)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1053, N'İç Hastalıkları(Dahiliye)', 7)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1054, N'Kulak-Burun-Boğaz(KBB)', 7)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1055, N'Gastroentroloji', 7)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1056, N'Kardiyoloji', 7)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1057, N'Nöroloji', 7)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1058, N'Cildiye(Dermatoloji)', 8)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1059, N'Genel Cerrahi', 8)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1060, N'Çocuk Sağlığı ve Hastalıkları', 8)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1061, N'İç Hastalıkları(Dahiliye)', 8)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1062, N'Kulak-Burun-Boğaz(KBB)', 8)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1063, N'Gastroentroloji', 8)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1064, N'Kardiyoloji', 8)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1065, N'Nöroloji', 8)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1066, N'Cildiye(Dermatoloji)', 9)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1067, N'Genel Cerrahi', 9)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1068, N'Çocuk Sağlığı ve Hastalıkları', 9)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1069, N'İç Hastalıkları(Dahiliye)', 9)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1070, N'Kulak-Burun-Boğaz(KBB)', 9)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1071, N'Gastroentroloji', 9)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1072, N'Kardiyoloji', 9)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (1073, N'Nöroloji', 9)
INSERT [dbo].[klinikler] ([KLINIKID], [KLINIKAD], [HASTANEID]) VALUES (2074, N'Aile Hekimi Polikliniği', 1012)
SET IDENTITY_INSERT [dbo].[klinikler] OFF
GO
SET IDENTITY_INSERT [dbo].[personel] ON 

INSERT [dbo].[personel] ([PID], [PUsername], [PPasword]) VALUES (1, N'admin', N'hastane123')
SET IDENTITY_INSERT [dbo].[personel] OFF
GO
SET IDENTITY_INSERT [dbo].[randevular] ON 

INSERT [dbo].[randevular] ([RANDEVUID], [USERID], [DOKTORID], [RANDEVUTARIH], [RANDEVUSAAT], [RANDEVUTUR]) VALUES (2025, 1, 2074, N'17 Ocak Cuma', N'13:20', 1)
INSERT [dbo].[randevular] ([RANDEVUID], [USERID], [DOKTORID], [RANDEVUTARIH], [RANDEVUSAAT], [RANDEVUTUR]) VALUES (2027, 1, 1076, N'21 Ocak Salı', N'10:20', 3)
INSERT [dbo].[randevular] ([RANDEVUID], [USERID], [DOKTORID], [RANDEVUTARIH], [RANDEVUSAAT], [RANDEVUTUR]) VALUES (2028, 1, 2, N'17 Ocak Cuma', N'10:00', 3)
INSERT [dbo].[randevular] ([RANDEVUID], [USERID], [DOKTORID], [RANDEVUTARIH], [RANDEVUSAAT], [RANDEVUTUR]) VALUES (2029, 1, 49, N'20 Ocak Pazartesi', N'11:20', 3)
INSERT [dbo].[randevular] ([RANDEVUID], [USERID], [DOKTORID], [RANDEVUTARIH], [RANDEVUSAAT], [RANDEVUTUR]) VALUES (2030, 1, 13, N'18 Ocak Cumartesi', N'11:40', 3)
SET IDENTITY_INSERT [dbo].[randevular] OFF
GO
SET IDENTITY_INSERT [dbo].[sehirler] ON 

INSERT [dbo].[sehirler] ([SEHIRID], [SEHIRAD]) VALUES (1, N'İstanbul')
INSERT [dbo].[sehirler] ([SEHIRID], [SEHIRAD]) VALUES (2, N'Ankara')
INSERT [dbo].[sehirler] ([SEHIRID], [SEHIRAD]) VALUES (3, N'İzmir')
SET IDENTITY_INSERT [dbo].[sehirler] OFF
GO
SET IDENTITY_INSERT [dbo].[tur] ON 

INSERT [dbo].[tur] ([RANDEVUTUR], [RANDEVUAD]) VALUES (1, N'Aşı Randevusu')
INSERT [dbo].[tur] ([RANDEVUTUR], [RANDEVUAD]) VALUES (2, N'Aile Hekimi Randevusu')
INSERT [dbo].[tur] ([RANDEVUTUR], [RANDEVUAD]) VALUES (3, N'Doktor Randevusu')
SET IDENTITY_INSERT [dbo].[tur] OFF
GO
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([USERID], [USERTC], [USERAD], [USERSOYAD], [USERDOGUM], [USERSİFRE], [AILEHID]) VALUES (1, N'1111111111', N'Can', N'Bozkurt', CAST(N'2000-06-20' AS Date), N'can123.', 2074)
INSERT [dbo].[user] ([USERID], [USERTC], [USERAD], [USERSOYAD], [USERDOGUM], [USERSİFRE], [AILEHID]) VALUES (2, N'1234567890', N'eren', N'kıranatlı', CAST(N'2001-11-01' AS Date), N'erenkı', 2074)
INSERT [dbo].[user] ([USERID], [USERTC], [USERAD], [USERSOYAD], [USERDOGUM], [USERSİFRE], [AILEHID]) VALUES (4, N'33333333333', N'Berat', N'Yılmaz', CAST(N'2000-05-12' AS Date), N'beratyılmaz', 2074)
INSERT [dbo].[user] ([USERID], [USERTC], [USERAD], [USERSOYAD], [USERDOGUM], [USERSİFRE], [AILEHID]) VALUES (5, N'22222222222', N'Sedat', N'Torak', CAST(N'2002-05-20' AS Date), N'sedattorak', 2074)
SET IDENTITY_INSERT [dbo].[user] OFF
GO
ALTER TABLE [dbo].[doktorlar]  WITH CHECK ADD  CONSTRAINT [FK_doktorlar_hastaneler] FOREIGN KEY([HASTANEID])
REFERENCES [dbo].[hastaneler] ([HASTANEID])
GO
ALTER TABLE [dbo].[doktorlar] CHECK CONSTRAINT [FK_doktorlar_hastaneler]
GO
ALTER TABLE [dbo].[doktorlar]  WITH CHECK ADD  CONSTRAINT [FK_doktorlar_klinikler] FOREIGN KEY([KLINIKID])
REFERENCES [dbo].[klinikler] ([KLINIKID])
GO
ALTER TABLE [dbo].[doktorlar] CHECK CONSTRAINT [FK_doktorlar_klinikler]
GO
ALTER TABLE [dbo].[hastaneler]  WITH CHECK ADD  CONSTRAINT [FK_hastaneler_ilceler] FOREIGN KEY([ILCEID])
REFERENCES [dbo].[ilceler] ([ILCEID])
GO
ALTER TABLE [dbo].[hastaneler] CHECK CONSTRAINT [FK_hastaneler_ilceler]
GO
ALTER TABLE [dbo].[hastaneler]  WITH CHECK ADD  CONSTRAINT [FK_hastaneler_sehirler] FOREIGN KEY([SEHIRID])
REFERENCES [dbo].[sehirler] ([SEHIRID])
GO
ALTER TABLE [dbo].[hastaneler] CHECK CONSTRAINT [FK_hastaneler_sehirler]
GO
ALTER TABLE [dbo].[ilceler]  WITH CHECK ADD  CONSTRAINT [FK_ilceler_sehirler] FOREIGN KEY([SEHIRID])
REFERENCES [dbo].[sehirler] ([SEHIRID])
GO
ALTER TABLE [dbo].[ilceler] CHECK CONSTRAINT [FK_ilceler_sehirler]
GO
ALTER TABLE [dbo].[klinikler]  WITH CHECK ADD  CONSTRAINT [FK_klinikler_hastaneler] FOREIGN KEY([HASTANEID])
REFERENCES [dbo].[hastaneler] ([HASTANEID])
GO
ALTER TABLE [dbo].[klinikler] CHECK CONSTRAINT [FK_klinikler_hastaneler]
GO
ALTER TABLE [dbo].[randevular]  WITH CHECK ADD  CONSTRAINT [FK_randevular_doktorlar] FOREIGN KEY([DOKTORID])
REFERENCES [dbo].[doktorlar] ([DOKTORID])
GO
ALTER TABLE [dbo].[randevular] CHECK CONSTRAINT [FK_randevular_doktorlar]
GO
ALTER TABLE [dbo].[randevular]  WITH CHECK ADD  CONSTRAINT [FK_randevular_tur] FOREIGN KEY([RANDEVUTUR])
REFERENCES [dbo].[tur] ([RANDEVUTUR])
GO
ALTER TABLE [dbo].[randevular] CHECK CONSTRAINT [FK_randevular_tur]
GO
ALTER TABLE [dbo].[randevular]  WITH CHECK ADD  CONSTRAINT [FK_randevular_user] FOREIGN KEY([USERID])
REFERENCES [dbo].[user] ([USERID])
GO
ALTER TABLE [dbo].[randevular] CHECK CONSTRAINT [FK_randevular_user]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK_user_doktorlar] FOREIGN KEY([AILEHID])
REFERENCES [dbo].[doktorlar] ([DOKTORID])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK_user_doktorlar]
GO
