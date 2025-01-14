USE [practica]
GO
/****** Object:  Table [dbo].[client]    Script Date: 07.12.2024 4:26:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[client](
	[id] [int] NOT NULL,
	[surname] [varchar](100) NULL,
	[name] [varchar](100) NULL,
	[middlename] [varchar](100) NULL,
	[seria] [int] NULL,
	[number] [int] NULL,
	[date_birth] [date] NULL,
	[indexs] [int] NULL,
	[address] [varchar](250) NULL,
	[email] [varchar](100) NULL,
	[password] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employee]    Script Date: 07.12.2024 4:26:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_post] [int] NULL,
	[surname] [varchar](100) NULL,
	[name] [varchar](100) NULL,
	[middlename] [varchar](100) NULL,
	[login] [varchar](100) NULL,
	[password] [varchar](255) NULL,
	[Last_entry] [datetime] NULL,
	[type_entrance] [int] NULL,
	[image] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 07.12.2024 4:26:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date_add] [date] NULL,
	[time_orders] [time](7) NULL,
	[id_client] [int] NULL,
	[id_status] [int] NULL,
	[date_closing] [date] NULL,
	[time_rental] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[post]    Script Date: 07.12.2024 4:26:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[services]    Script Date: 07.12.2024 4:26:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[services](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NULL,
	[cod] [varchar](100) NULL,
	[Cost] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[services_orders]    Script Date: 07.12.2024 4:26:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[services_orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_orders] [int] NULL,
	[id_services] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[status]    Script Date: 07.12.2024 4:26:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[type_entrance]    Script Date: 07.12.2024 4:26:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[type_entrance](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (1, N'Фролов', N'Андрей', N'Иванович', 1180, 176596, CAST(N'2001-07-14' AS Date), 344288, N' г. Санкт-Петербург, ул. Чехова, 1, кв. 34', N'gohufreilagrau-3818@yopmail.com', N'cl12345')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (2, N'Николаев', N'Даниил', N'Всеволодович', 2280, 223523, CAST(N'2001-02-10' AS Date), 614164, N' г. Санкт-Петербург, ул. Степная, 30, кв. 75', N'xawugosune-1385@yopmail.com', N'cl12346')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (3, N'Снегирев', N'Макар', N'Иванович', 4560, 354155, CAST(N'1998-05-21' AS Date), 394242, N' г. Санкт-Петербург, ул. Коммунистическая, 43, кв. 57', N'satrahuddusei-4458@yopmail.com', N'cl12347')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (4, N'Иванов', N'Иван', N'Ильич', 9120, 554296, CAST(N'1998-10-01' AS Date), 660540, N' г. Санкт-Петербург, ул. Солнечная, 25, кв. 78', N'boippaxeufrepra-7093@yopmail.com', N'cl12348')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (5, N'Филиппова', N'Анна', N'Глебовна', 2367, 558134, CAST(N'1976-05-31' AS Date), 125837, N' г. Санкт-Петербург, ул. Шоссейная, 40, кв. 92', N'zapramaxesu-7741@yopmail.com', N'cl12349')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (6, N'Иванов', N'Михаил', N'Владимирович', 7101, 669343, CAST(N'1985-11-04' AS Date), 125703, N' г. Санкт-Петербург, ул. Партизанская, 49, кв. 84', N'rouzecroummegre-3899@yopmail.com', N'cl12350')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (7, N'Власов', N'Дмитрий', N'Александрович', 3455, 719630, CAST(N'1998-08-17' AS Date), 625283, N' г. Санкт-Петербург, ул. Победы, 46, кв. 7', N'ziyeuddocrabri-4748@yopmail.com', N'cl12351')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (8, N'Серова', N'Екатерина', N'Львовна', 2377, 871623, CAST(N'1984-10-24' AS Date), 614611, N' г. Санкт-Петербург, ул. Молодежная, 50, кв. 78', N'ketameissoinnei-1951@yopmail.com', N'cl12352')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (9, N'Борисова', N'Ирина', N'Ивановна', 8755, 921148, CAST(N'1976-10-14' AS Date), 454311, N' г. Санкт-Петербург, ул. Новая, 19, кв. 78', N'yipraubaponou-5849@yopmail.com', N'cl12353')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (10, N'Зайцев', N'Никита', N'Артёмович', 4355, 104594, CAST(N'1999-10-14' AS Date), 660007, N' г. Санкт-Петербург, ул. Октябрьская, 19, кв. 42', N'crapedocouca-3572@yopmail.com', N'cl12354')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (11, N'Медведев', N'Святослав', N'Евгеньевич', 2791, 114390, CAST(N'1985-07-13' AS Date), 603036, N' г. Санкт-Петербург, ул. Садовая, 4, кв. 13', N'ceigoixakaunni-9227@yopmail.com', N'cl12355')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (12, N'Коротков', N'Кирилл', N'Алексеевич', 5582, 126286, CAST(N'1976-05-26' AS Date), 450983, N' г. Санкт-Петербург, ул. Комсомольская, 26, кв. 60', N'yeimmeiwauzomo-7054@yopmail.com', N'cl12356')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (13, N'Калашникова', N'Арина', N'Максимовна', 2978, 133653, CAST(N'1999-08-13' AS Date), 394782, N' г. Санкт-Петербург, ул. Чехова, 3, кв. 14', N'poleifenevi-1560@yopmail.com', N'cl12357')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (14, N'Минина', N'Таисия', N'Кирилловна', 7512, 141956, CAST(N'1985-10-13' AS Date), 603002, N' г. Санкт-Петербург, ул. Дзержинского, 28, кв. 56', N'kauprezofautei-6607@yopmail.com', N'cl12358')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (15, N'Наумов', N'Серафим', N'Романович', 5046, 158433, CAST(N'1999-04-15' AS Date), 450558, N' г. Санкт-Петербург, ул. Набережная, 30, кв. 71', N'quaffaullelourei-1667@yopmail.com', N'cl12359')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (16, N'Воробьева', N'Василиса', N'Евгеньевна', 2460, 169505, CAST(N'1999-01-13' AS Date), 394060, N' г. Санкт-Петербург, ул. Фрунзе, 43, кв. 79', N'jsteele@rojas-robinson.net', N'cl12360')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (17, N'Калинин', N'Александр', N'Андреевич', 3412, 174593, CAST(N'1999-01-07' AS Date), 410661, N' г. Санкт-Петербург, ул. Школьная, 50, кв. 53', N'vhopkins@lewis-mullen.com', N'cl12361')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (18, N'Кузнецова', N'Милана', N'Владиславовна', 4950, 183032, CAST(N'1999-01-24' AS Date), 625590, N' г. Санкт-Петербург, ул. Коммунистическая, 20, кв. 34', N'nlewis@yahoo.com', N'cl12362')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (19, N'Фирсов', N'Егор', N'Романович', 5829, 219464, CAST(N'1993-09-02' AS Date), 625683, N' г. Санкт-Петербург, ул. 8 Марта, 20, кв. 21', N'garciadavid@mckinney-mcbride.com', N'cl12363')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (20, N'Зимина', N'Агния', N'Александровна', 6443, 208059, CAST(N'1998-09-03' AS Date), 400562, N' г. Санкт-Петербург, ул. Зеленая, 32, кв. 67', N'cbradley@castro.com', N'cl12364')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (21, N'Титов', N'Андрей', N'Глебович', 7079, 213265, CAST(N'1985-10-23' AS Date), 614510, N' г. Санкт-Петербург, ул. Маяковского, 47, кв. 72', N'cuevascatherine@carlson.biz', N'cl12365')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (22, N'Орлов', N'Николай', N'Егорович', 8207, 522702, CAST(N'1985-07-27' AS Date), 410542, N' г. Санкт-Петербург, ул. Светлая, 46, кв. 82', N'thomasmoore@wilson-singh.net', N'cl12366')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (23, N'Кузнецова', N'Аиша', N'Михайловна', 9307, 232158, CAST(N'1998-10-04' AS Date), 620839, N' г. Санкт-Петербург, ул. Цветочная, 8, кв. 100', N'jessica84@hotmail.com', N'cl12367')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (24, N'Куликов', N'Никита', N'Георгиевич', 1357, 242839, CAST(N'1999-04-23' AS Date), 443890, N' г. Санкт-Петербург, ул. Коммунистическая, 1, кв. 10', N'jessicapark@hotmail.com', N'cl12368')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (25, N'Карпова', N'София', N'Егоровна', 1167, 256636, CAST(N'1993-10-01' AS Date), 603379, N' г. Санкт-Петербург, ул. Спортивная, 46, кв. 95', N'ginaritter@schneider-buchanan.com', N'cl12369')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (26, N'Смирнова', N'Дарья', N'Макаровна', 1768, 266986, CAST(N'1976-03-22' AS Date), 603721, N' г. Санкт-Петербург, ул. Гоголя, 41, кв. 57', N'stephen99@yahoo.com', N'cl12370')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (27, N'Абрамова', N'Александра', N'Мироновна', 1710, 427875, CAST(N'1999-03-26' AS Date), 410172, N' г. Санкт-Петербург, ул. Северная, 13, кв. 86', N'lopezlisa@hotmail.com', N'cl12371')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (28, N'Наумов', N'Руслан', N'Михайлович', 1806, 289145, CAST(N'1999-10-11' AS Date), 420151, N' г. Санкт-Петербург, ул. Вишневая, 32, кв. 81', N'lori17@hotmail.com', N'cl12372')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (29, N'Бочаров', N'Никита', N'Матвеевич', 1587, 291249, CAST(N'1997-06-29' AS Date), 125061, N' г. Санкт-Петербург, ул. Подгорная, 8, кв. 74', N'campbellkevin@gardner.com', N'cl12373')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (30, N'Соловьев', N'Давид', N'Ильич', 1647, 306372, CAST(N'1984-03-06' AS Date), 630370, N' г. Санкт-Петербург, ул. Шоссейная, 24, кв. 81', N'morganhoward@clark.com', N'cl12374')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (31, N'Васильева', N'Валерия', N'Дмитриевна', 1742, 316556, CAST(N'1999-09-30' AS Date), 614753, N' г. Санкт-Петербург, ул. Полевая, 35, кв. 39', N'carsontamara@gmail.com', N'cl12375')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (32, N'Макарова', N'Василиса', N'Андреевна', 1474, 326347, CAST(N'1999-04-08' AS Date), 426030, N' г. Санкт-Петербург, ул. Маяковского, 44, кв. 93', N'kevinpatel@gmail.com', N'cl12376')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (33, N'Алексеев', N'Матвей', N'Викторович', 1452, 339539, CAST(N'1998-08-02' AS Date), 450375, N' г. Санкт-Петербург, ул. Клубная, 44, кв. 80', N'sethbishop@yahoo.com', N'cl12377')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (34, N'Никитина', N'Полина', N'Александровна', 2077, 443480, CAST(N'1976-09-19' AS Date), 625560, N' г. Санкт-Петербург, ул. Некрасова, 12, кв. 66', N'drollins@schultz-soto.net', N'cl12378')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (35, N'Окулова', N'Олеся', N'Алексеевна', 2147, 357518, CAST(N'1999-04-03' AS Date), 630201, N' г. Санкт-Петербург, ул. Комсомольская, 17, кв. 25', N'pblack@copeland-winters.org', N'cl12379')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (36, N'Захарова', N'Полина', N'Яновна', 2687, 363884, CAST(N'1976-04-21' AS Date), 190949, N' г. Санкт-Петербург, ул. Мичурина, 26, кв. 93', N'johnathon.oberbrunner@yahoo.com', N'cl12380')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (37, N'Зайцев', N'Владимир', N'Давидович', 2376, 443711, CAST(N'1998-01-26' AS Date), 350501, N' г. Санкт-Петербург, ул. Парковая, 2, кв. 7', N'bradly29@gmail.com', N'cl12381')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (38, N'Иванов', N'Виталий', N'Даниилович', 2568, 386237, CAST(N'1976-08-11' AS Date), 450048, N' г. Санкт-Петербург, ул. Коммунистическая, 21, кв. 3', N'stark.cristina@hilpert.biz', N'cl12382')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (39, N'Захаров', N'Матвей', N'Романович', 2556, 439376, CAST(N'1993-07-12' AS Date), 644921, N' г. Санкт-Петербург, ул. Школьная, 46, кв. 37', N'bruen.eleanore@yahoo.com', N'cl12383')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (40, N'Иванов', N'Степан', N'Степанович', 2737, 407501, CAST(N'1998-09-19' AS Date), 614228, N' г. Санкт-Петербург, ул. Дорожная, 36, кв. 54', N'percival.halvorson@yahoo.com', N'cl12384')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (41, N'Ткачева', N'Милана', N'Тимуровна', 2581, 441645, CAST(N'1998-05-24' AS Date), 350940, N' г. Санкт-Петербург, ул. Первомайская, 23, кв. 2', N'javonte71@kuhlman.biz', N'cl12385')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (42, N'Семенов', N'Даниил', N'Иванович', 2675, 427933, CAST(N'1976-01-04' AS Date), 344990, N' г. Санкт-Петербург, ул. Красноармейская, 19, кв. 92', N'vconnelly@kautzer.com', N'cl12386')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (43, N'Виноградов', N'Вячеслав', N'Дмитриевич', 2967, 434531, CAST(N'1976-07-12' AS Date), 410248, N' г. Санкт-Петербург, ул. Чкалова, 11, кв. 75', N'anabelle07@schultz.info', N'cl12387')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (44, N'Соболева', N'Николь', N'Фёдоровна', 3070, 449655, CAST(N'1976-05-02' AS Date), 400839, N' г. Санкт-Петербург, ул. 8 Марта, 46, кв. 44', N'nitzsche.katlynn@yahoo.com', N'cl12388')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (45, N'Тихонова', N'Анна', N'Львовна', 3108, 451174, CAST(N'1985-03-23' AS Date), 450539, N' г. Санкт-Петербург, ул. Заводская, 3, кв. 81', N'corine16@von.com', N'cl12389')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (46, N'Кузнецова', N'Ульяна', N'Савельевна', 3250, 464705, CAST(N'1999-06-03' AS Date), 614591, N' г. Санкт-Петербург, ул. Цветочная, 20, кв. 40', N'otha.wisozk@lubowitz.org', N'cl12390')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (47, N'Смирнова', N'Анна', N'Германовна', 3392, 471644, CAST(N'1997-07-18' AS Date), 400260, N' г. Санкт-Петербург, ул. Больничная, 30, кв. 53', N'may.kirlin@hotmail.com', N'cl12391')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (48, N'Черепанова', N'Анна', N'Давидовна', 3497, 487819, CAST(N'1985-11-06' AS Date), 660924, N' г. Санкт-Петербург, ул. Молодежная, 32, кв. 59', N'bryana.kautzer@yahoo.com', N'cl12392')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (49, N'Григорьев', N'Максим', N'Кириллович', 3560, 491260, CAST(N'1999-05-26' AS Date), 644133, N' г. Санкт-Петербург, ул. Гагарина, 28, кв. 69', N'deborah.christiansen@quigley.biz', N'cl12393')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (50, N'Голубев', N'Даниэль', N'Александрович', 3620, 506034, CAST(N'1999-06-14' AS Date), 450698, N' г. Санкт-Петербург, ул. Вокзальная, 14, кв. 37', N'connelly.makayla@yahoo.com', N'cl12394')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (51, N'Миронов', N'Юрий', N'Денисович', 3774, 511438, CAST(N'1985-01-26' AS Date), 620653, N' г. Санкт-Петербург, ул. Западная, 15, кв. 25', N'tatum.collins@fay.org', N'cl12395')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (52, N'Терехов', N'Михаил', N'Андреевич', 3862, 521377, CAST(N'1976-07-06' AS Date), 644321, N' г. Санкт-Петербург, ул. Клубная, 32, кв. 10', N'itzel73@anderson.com', N'cl12396')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (53, N'Орлова', N'Алиса', N'Михайловна', 3084, 535966, CAST(N'1997-02-24' AS Date), 603653, N' г. Санкт-Петербург, ул. Молодежная, 2, кв. 45', N'arjun39@hotmail.com', N'cl12397')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (54, N'Кулаков', N'Константин', N'Даниилович', 4021, 541528, CAST(N'1993-06-20' AS Date), 410181, N' г. Санкт-Петербург, ул. Механизаторов, 16, кв. 74', N'ohara.rebeka@yahoo.com', N'cl12398')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (55, N'Кудрявцев', N'Максим', N'Романович', 4109, 554053, CAST(N'1998-05-10' AS Date), 394207, N' г. Санкт-Петербург, ул. Свердлова, 31, кв. 28', N'danika58@rath.com', N'cl12399')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (56, N'Соболева', N'Кира', N'Фёдоровна', 4537, 564868, CAST(N'1998-03-14' AS Date), 420633, N' г. Санкт-Петербург, ул. Матросова, 18, кв. 41', N'janae.bogan@gmail.com', N'cl12400')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (57, N'Коновалов', N'Арсений', N'Максимович', 4914, 572471, CAST(N'1985-02-18' AS Date), 445720, N' г. Санкт-Петербург, ул. Матросова, 50, кв. 67', N'vern91@yahoo.com', N'cl12401')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (58, N'Гусев', N'Михаил', N'Дмитриевич', 4445, 581302, CAST(N'1999-11-23' AS Date), 400646, N' г. Санкт-Петербург, ул. Октябрьская, 47, кв. 65', N'mariana.leannon@larkin.net', N'cl12402')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (59, N'Суханова', N'Варвара', N'Матвеевна', 4743, 598180, CAST(N'1993-09-13' AS Date), 644410, N' г. Санкт-Петербург, ул. Красная, 17, кв. 69', N'vmoore@gmail.com', N'cl12403')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (60, N'Орлова', N'Ясмина', N'Васильевна', 4741, 601821, CAST(N'1984-06-24' AS Date), 400750, N' г. Санкт-Петербург, ул. Школьная, 36, кв. 71', N'damon.mcclure@mills.com', N'cl12404')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (61, N'Васильева', N'Ксения', N'Константиновна', 4783, 612567, CAST(N'1999-08-01' AS Date), 660590, N' г. Санкт-Петербург, ул. Дачная, 37, кв. 70', N'grady.reilly@block.com', N'cl12405')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (62, N'Борисова', N'Тамара', N'Данииловна', 4658, 621200, CAST(N'1993-05-29' AS Date), 426083, N' г. Санкт-Петербург, ул. Механизаторов, 41, кв. 26', N'boyd.koss@yahoo.com', N'cl12406')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (63, N'Дмитриев', N'Мирон', N'Ильич', 4908, 634613, CAST(N'1985-04-13' AS Date), 410569, N' г. Санкт-Петербург, ул. Парковая, 36, кв. 17', N'obartell@franecki.info', N'cl12407')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (64, N'Лебедева', N'Анна', N'Александровна', 5092, 642468, CAST(N'1985-03-30' AS Date), 443375, N' г. Санкт-Петербург, ул. Дзержинского, 50, кв. 95', N'reina75@ferry.net', N'cl12408')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (65, N'Пономарев', N'Артём', N'Маркович', 5155, 465274, CAST(N'1984-06-02' AS Date), 614316, N' г. Санкт-Петербург, ул. Первомайская, 48, кв. 31', N'karson28@hotmail.com', N'cl12409')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (66, N'Борисова', N'Елена', N'Михайловна', 5086, 666893, CAST(N'1976-05-23' AS Date), 445685, N' г. Санкт-Петербург, ул. Зеленая, 7, кв. 47', N'damaris61@okon.com', N'cl12410')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (67, N'Моисеев', N'Камиль', N'Максимович', 5333, 675375, CAST(N'1999-06-17' AS Date), 614505, N' г. Санкт-Петербург, ул. Нагорная, 37, кв. 31', N'carroll.jerod@hotmail.com', N'cl12411')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (68, N'Герасимова', N'Дарья', N'Константиновна', 5493, 684572, CAST(N'1984-10-13' AS Date), 426629, N' г. Санкт-Петербург, ул. Весенняя, 32, кв. 46', N'ron.treutel@quitzon.com', N'cl12412')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (69, N'Михайлова', N'Мария', N'Марковна', 5150, 696226, CAST(N'1976-12-02' AS Date), 603743, N' г. Санкт-Петербург, ул. Матросова, 19, кв. 20', N'olen79@yahoo.com', N'cl12413')
INSERT [dbo].[client] ([id], [surname], [name], [middlename], [seria], [number], [date_birth], [indexs], [address], [email], [password]) VALUES (70, N'Коршунов', N'Кирилл', N'Максимович', 1308, 703305, CAST(N'1985-05-22' AS Date), 450750, N' г. Санкт-Петербург, ул. Клубная, 23, кв. 90', N'pacocha.robbie@yahoo.com', N'cl12414')
GO
SET IDENTITY_INSERT [dbo].[employee] ON 

INSERT [dbo].[employee] ([id], [id_post], [surname], [name], [middlename], [login], [password], [Last_entry], [type_entrance], [image]) VALUES (1, 2, N'Иванов', N'Иван', N'Иванович', N'Ivanov@namecomp.ru', N'2L6KZG', CAST(N'2024-12-07T01:46:24.000' AS DateTime), 1, N'Properties\Сотрудники_import\Иванов.jpeg')
INSERT [dbo].[employee] ([id], [id_post], [surname], [name], [middlename], [login], [password], [Last_entry], [type_entrance], [image]) VALUES (2, 2, N'Петров', N'Петр', N'Петрович', N'petrov@namecomp.ru', N'uzWC67', CAST(N'2024-12-06T23:29:15.000' AS DateTime), 1, N'Properties\Сотрудники_import\Петров.jpeg')
INSERT [dbo].[employee] ([id], [id_post], [surname], [name], [middlename], [login], [password], [Last_entry], [type_entrance], [image]) VALUES (3, 1, N'Федоров', N'Федор', N'Федорович', N'fedorov@namecomp.ru', N'8ntwUp', CAST(N'2024-12-07T01:30:59.000' AS DateTime), 1, N'Properties\Сотрудники_import\Федоров.jpeg')
INSERT [dbo].[employee] ([id], [id_post], [surname], [name], [middlename], [login], [password], [Last_entry], [type_entrance], [image]) VALUES (4, 3, N'Миронов', N'Вениамин', N'Куприянович', N'mironov@namecomp.ru', N'YOyhfR', NULL, 1, N'Properties\Сотрудники_import\Миронов.jpeg')
INSERT [dbo].[employee] ([id], [id_post], [surname], [name], [middlename], [login], [password], [Last_entry], [type_entrance], [image]) VALUES (5, 3, N'Ширяев', N'Ермолай', N'Вениаминович', N'shiryev@namecomp.ru', N'RSbvHv', NULL, 2, N'Properties\Сотрудники_import\Ширяев.jpeg')
INSERT [dbo].[employee] ([id], [id_post], [surname], [name], [middlename], [login], [password], [Last_entry], [type_entrance], [image]) VALUES (6, 3, N'Игнатов', N'Кассиан', N'Васильевич', N'ignatov@namecomp.ru', N'rwVDh9', NULL, 1, N'Properties\Сотрудники_import\Игнатов.jpeg')
INSERT [dbo].[employee] ([id], [id_post], [surname], [name], [middlename], [login], [password], [Last_entry], [type_entrance], [image]) VALUES (7, 2, N'Хохлов', N'Владимир', N'Мэлсович', N'hohlov@namecomp.ru', N'LdNyos', NULL, 1, N'Properties\Сотрудники_import\Хохлов.jpeg')
INSERT [dbo].[employee] ([id], [id_post], [surname], [name], [middlename], [login], [password], [Last_entry], [type_entrance], [image]) VALUES (8, 2, N'Стрелков', N'Мстислав', N'Георгьевич', N'strelkov@namecomp.ru', N'gynQMT', NULL, 2, N'Properties\Сотрудники_import\Стрелков.jpeg')
INSERT [dbo].[employee] ([id], [id_post], [surname], [name], [middlename], [login], [password], [Last_entry], [type_entrance], [image]) VALUES (9, 2, N'Беляева', N'Лилия', N'Наумовна', N'belyeva@@namecomp.ru', N'AtnDjr', NULL, 1, N'Properties\Сотрудники_import\Беляева.jpeg')
INSERT [dbo].[employee] ([id], [id_post], [surname], [name], [middlename], [login], [password], [Last_entry], [type_entrance], [image]) VALUES (10, 2, N'Смирнова', N'Ульяна', N'Гордеевна', N'smirnova@@namecomp.ru', N'JlFRCZ', NULL, 1, N'Properties\Сотрудники_import\Смирнова.jpeg')
SET IDENTITY_INSERT [dbo].[employee] OFF
GO
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (1, CAST(N'2024-12-06' AS Date), CAST(N'18:15:29' AS Time), 1, 3, NULL, 213)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (2, CAST(N'2022-03-12' AS Date), CAST(N'09:10:00' AS Time), 1, 3, NULL, 120)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (3, CAST(N'2022-03-13' AS Date), CAST(N'10:10:00' AS Time), 2, 1, NULL, 600)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (4, CAST(N'2022-03-14' AS Date), CAST(N'11:10:00' AS Time), 3, 1, NULL, 120)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (5, CAST(N'2022-03-15' AS Date), CAST(N'12:10:00' AS Time), 4, 3, NULL, 600)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (6, CAST(N'2022-03-16' AS Date), CAST(N'13:10:00' AS Time), 5, 2, CAST(N'2022-04-16' AS Date), 320)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (7, CAST(N'2022-03-17' AS Date), CAST(N'14:10:00' AS Time), 6, 3, NULL, 480)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (8, CAST(N'2022-03-18' AS Date), CAST(N'15:10:00' AS Time), 7, 3, NULL, 240)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (9, CAST(N'2022-03-19' AS Date), CAST(N'16:10:00' AS Time), 8, 1, NULL, 360)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (10, CAST(N'2022-03-20' AS Date), CAST(N'10:00:00' AS Time), 9, 1, NULL, 720)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (11, CAST(N'2022-03-21' AS Date), CAST(N'11:00:00' AS Time), 10, 3, NULL, 120)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (12, CAST(N'2022-03-22' AS Date), CAST(N'12:00:00' AS Time), 11, 2, CAST(N'2022-03-22' AS Date), 600)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (13, CAST(N'2022-03-23' AS Date), CAST(N'13:00:00' AS Time), 12, 1, NULL, 120)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (14, CAST(N'2022-03-24' AS Date), CAST(N'14:00:00' AS Time), 13, 1, NULL, 600)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (15, CAST(N'2022-03-25' AS Date), CAST(N'15:00:00' AS Time), 14, 1, NULL, 320)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (16, CAST(N'2022-03-26' AS Date), CAST(N'16:00:00' AS Time), 15, 2, CAST(N'2022-04-26' AS Date), 480)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (17, CAST(N'2022-03-27' AS Date), CAST(N'17:00:00' AS Time), 16, 3, NULL, 240)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (18, CAST(N'2022-03-28' AS Date), CAST(N'18:00:00' AS Time), 17, 1, NULL, 360)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (19, CAST(N'2022-03-29' AS Date), CAST(N'19:00:00' AS Time), 18, 1, NULL, 720)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (20, CAST(N'2022-03-30' AS Date), CAST(N'12:30:00' AS Time), 19, 3, NULL, 120)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (21, CAST(N'2022-03-31' AS Date), CAST(N'13:30:00' AS Time), 20, 3, NULL, 600)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (22, CAST(N'2022-04-01' AS Date), CAST(N'14:30:00' AS Time), 21, 2, CAST(N'2022-04-01' AS Date), 120)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (23, CAST(N'2022-04-02' AS Date), CAST(N'15:30:00' AS Time), 22, 3, NULL, 600)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (24, CAST(N'2022-04-03' AS Date), CAST(N'16:30:00' AS Time), 23, 3, NULL, 320)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (25, CAST(N'2022-04-04' AS Date), CAST(N'17:30:00' AS Time), 24, 1, NULL, 480)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (26, CAST(N'2022-04-05' AS Date), CAST(N'18:30:00' AS Time), 25, 1, NULL, 240)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (27, CAST(N'2022-04-06' AS Date), CAST(N'15:30:00' AS Time), 26, 1, NULL, 360)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (28, CAST(N'2022-04-07' AS Date), CAST(N'16:30:00' AS Time), 27, 1, NULL, 720)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (29, CAST(N'2022-04-08' AS Date), CAST(N'17:30:00' AS Time), 28, 2, CAST(N'2022-04-08' AS Date), 120)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (30, CAST(N'2022-04-09' AS Date), CAST(N'18:30:00' AS Time), 29, 3, NULL, 600)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (31, CAST(N'2022-04-10' AS Date), CAST(N'19:30:00' AS Time), 30, 1, NULL, 120)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (32, CAST(N'2022-04-11' AS Date), CAST(N'10:30:00' AS Time), 31, 1, NULL, 600)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (33, CAST(N'2022-04-12' AS Date), CAST(N'11:30:00' AS Time), 32, 3, NULL, 320)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (34, CAST(N'2022-04-13' AS Date), CAST(N'12:30:00' AS Time), 33, 3, NULL, 480)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (35, CAST(N'2022-04-14' AS Date), CAST(N'13:30:00' AS Time), 34, 3, NULL, 240)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (36, CAST(N'2022-04-15' AS Date), CAST(N'14:30:00' AS Time), 35, 1, NULL, 360)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (37, CAST(N'2022-04-02' AS Date), CAST(N'15:30:00' AS Time), 36, 1, NULL, 720)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (38, CAST(N'2022-04-03' AS Date), CAST(N'16:30:00' AS Time), 37, 1, NULL, 120)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (39, CAST(N'2022-04-04' AS Date), CAST(N'17:30:00' AS Time), 38, 2, CAST(N'2022-04-04' AS Date), 600)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (40, CAST(N'2022-04-05' AS Date), CAST(N'10:15:00' AS Time), 39, 1, NULL, 120)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (41, CAST(N'2022-04-06' AS Date), CAST(N'11:15:00' AS Time), 40, 3, NULL, 600)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (42, CAST(N'2022-04-07' AS Date), CAST(N'12:15:00' AS Time), 41, 2, CAST(N'2022-04-07' AS Date), 320)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (43, CAST(N'2022-04-08' AS Date), CAST(N'13:15:00' AS Time), 42, 1, NULL, 480)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (44, CAST(N'2022-04-09' AS Date), CAST(N'14:15:00' AS Time), 43, 1, NULL, 240)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (45, CAST(N'2022-04-01' AS Date), CAST(N'15:15:00' AS Time), 44, 1, NULL, 360)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (46, CAST(N'2022-04-02' AS Date), CAST(N'16:15:00' AS Time), 45, 1, NULL, 720)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (47, CAST(N'2022-04-03' AS Date), CAST(N'10:45:00' AS Time), 46, 1, NULL, 480)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (48, CAST(N'2022-04-04' AS Date), CAST(N'11:45:00' AS Time), 47, 2, CAST(N'2022-04-04' AS Date), 320)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (49, CAST(N'2022-04-05' AS Date), CAST(N'12:45:00' AS Time), 48, 3, NULL, 480)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (50, CAST(N'2022-04-06' AS Date), CAST(N'13:45:00' AS Time), 49, 3, NULL, 240)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (51, CAST(N'2022-04-07' AS Date), CAST(N'14:45:00' AS Time), 50, 3, NULL, 420)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (52, CAST(N'2024-12-06' AS Date), CAST(N'18:21:00' AS Time), 1, 3, NULL, 213)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (53, CAST(N'2024-12-06' AS Date), CAST(N'18:21:05' AS Time), 1, 3, NULL, 213)
INSERT [dbo].[orders] ([id], [date_add], [time_orders], [id_client], [id_status], [date_closing], [time_rental]) VALUES (54, CAST(N'2024-12-06' AS Date), CAST(N'18:22:21' AS Time), 1, 3, NULL, 54)
SET IDENTITY_INSERT [dbo].[orders] OFF
GO
SET IDENTITY_INSERT [dbo].[post] ON 

INSERT [dbo].[post] ([id], [name]) VALUES (1, N'Администратор')
INSERT [dbo].[post] ([id], [name]) VALUES (2, N'Продавец')
INSERT [dbo].[post] ([id], [name]) VALUES (3, N'Старший смены')
SET IDENTITY_INSERT [dbo].[post] OFF
GO
SET IDENTITY_INSERT [dbo].[services] ON 

INSERT [dbo].[services] ([id], [name], [cod], [Cost]) VALUES (1, N'Прокат велосипеда', N'8HFJHG103', 1000)
INSERT [dbo].[services] ([id], [name], [cod], [Cost]) VALUES (2, N'Прокат шлема', N'87FDJKHJ', 400)
INSERT [dbo].[services] ([id], [name], [cod], [Cost]) VALUES (3, N'Прокат набора защитного оборудования', N'JUR8R', 1000)
INSERT [dbo].[services] ([id], [name], [cod], [Cost]) VALUES (4, N'Прокат роликов', N'JKFBJ09', 1000)
INSERT [dbo].[services] ([id], [name], [cod], [Cost]) VALUES (5, N'Прокат самоката', N'63748HF', 700)
INSERT [dbo].[services] ([id], [name], [cod], [Cost]) VALUES (6, N'Прокат электросамоката', N'JFH7382', 1200)
INSERT [dbo].[services] ([id], [name], [cod], [Cost]) VALUES (7, N'Прокат велоколяски', N'OIJNB12', 2000)
INSERT [dbo].[services] ([id], [name], [cod], [Cost]) VALUES (8, N'Аренда беседки', N'BSFBHV63', 2000)
INSERT [dbo].[services] ([id], [name], [cod], [Cost]) VALUES (9, N'Аренда шезлонга', N'HJBUJE21J', 300)
INSERT [dbo].[services] ([id], [name], [cod], [Cost]) VALUES (10, N'Аренда лодки', N'DHBGFY563', 700)
INSERT [dbo].[services] ([id], [name], [cod], [Cost]) VALUES (11, N'Инструктор по катанию на роликах', N'JHVSJF6', 1000)
INSERT [dbo].[services] ([id], [name], [cod], [Cost]) VALUES (12, N'Инструктор по катанию на велосипеде', N'DJHGBS982', 1000)
INSERT [dbo].[services] ([id], [name], [cod], [Cost]) VALUES (13, N'Инструктор по катанию на лодке', N'638VVNQ3', 1200)
SET IDENTITY_INSERT [dbo].[services] OFF
GO
SET IDENTITY_INSERT [dbo].[services_orders] ON 

INSERT [dbo].[services_orders] ([id], [id_orders], [id_services]) VALUES (1, 50, 1)
INSERT [dbo].[services_orders] ([id], [id_orders], [id_services]) VALUES (2, 50, 2)
INSERT [dbo].[services_orders] ([id], [id_orders], [id_services]) VALUES (3, 52, 1)
INSERT [dbo].[services_orders] ([id], [id_orders], [id_services]) VALUES (4, 52, 3)
INSERT [dbo].[services_orders] ([id], [id_orders], [id_services]) VALUES (5, 52, 5)
INSERT [dbo].[services_orders] ([id], [id_orders], [id_services]) VALUES (6, 53, 1)
INSERT [dbo].[services_orders] ([id], [id_orders], [id_services]) VALUES (7, 53, 3)
INSERT [dbo].[services_orders] ([id], [id_orders], [id_services]) VALUES (8, 53, 5)
INSERT [dbo].[services_orders] ([id], [id_orders], [id_services]) VALUES (9, 54, 1)
INSERT [dbo].[services_orders] ([id], [id_orders], [id_services]) VALUES (10, 54, 3)
INSERT [dbo].[services_orders] ([id], [id_orders], [id_services]) VALUES (11, 54, 2)
INSERT [dbo].[services_orders] ([id], [id_orders], [id_services]) VALUES (12, 54, 4)
SET IDENTITY_INSERT [dbo].[services_orders] OFF
GO
SET IDENTITY_INSERT [dbo].[status] ON 

INSERT [dbo].[status] ([id], [name]) VALUES (1, N'В прокате')
INSERT [dbo].[status] ([id], [name]) VALUES (2, N'Закрыта')
INSERT [dbo].[status] ([id], [name]) VALUES (3, N'Новая')
SET IDENTITY_INSERT [dbo].[status] OFF
GO
SET IDENTITY_INSERT [dbo].[type_entrance] ON 

INSERT [dbo].[type_entrance] ([id], [name]) VALUES (1, N'Успешно')
INSERT [dbo].[type_entrance] ([id], [name]) VALUES (2, N'Неуспешно')
SET IDENTITY_INSERT [dbo].[type_entrance] OFF
GO
ALTER TABLE [dbo].[employee]  WITH CHECK ADD FOREIGN KEY([id_post])
REFERENCES [dbo].[post] ([id])
GO
ALTER TABLE [dbo].[employee]  WITH CHECK ADD FOREIGN KEY([type_entrance])
REFERENCES [dbo].[type_entrance] ([id])
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD FOREIGN KEY([id_client])
REFERENCES [dbo].[client] ([id])
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD FOREIGN KEY([id_status])
REFERENCES [dbo].[status] ([id])
GO
ALTER TABLE [dbo].[services_orders]  WITH CHECK ADD FOREIGN KEY([id_orders])
REFERENCES [dbo].[orders] ([id])
GO
ALTER TABLE [dbo].[services_orders]  WITH CHECK ADD FOREIGN KEY([id_services])
REFERENCES [dbo].[services] ([id])
GO
