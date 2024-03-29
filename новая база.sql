
/****** Object:  Table [dbo].[messages]    Script Date: 19.10.2023 10:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[messages](
	[ID_messages] [int] IDENTITY(1,1) NOT NULL,
	[FSP] [nvarchar](250) NULL,
	[ID_types] [int] NULL,
	[date] [date] NULL,
	[text] [text] NOT NULL,
 CONSTRAINT [PK_messages] PRIMARY KEY CLUSTERED 
(
	[ID_messages] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[themes]    Script Date: 19.10.2023 10:50:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[themes](
	[ID_type] [int] NOT NULL,
	[type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_types] PRIMARY KEY CLUSTERED 
(
	[ID_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 19.10.2023 10:50:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[ID_users] [int] IDENTITY(1,1) NOT NULL,
	[FSP] [nvarchar](50) NOT NULL,
	[login] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[role] [int] NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[ID_users] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[messages] ON 

INSERT [dbo].[messages] ([ID_messages], [FSP], [ID_types], [date], [text]) VALUES (18, N'Ковалев Д. А', 3, CAST(N'2023-10-19' AS Date), N'Спасибо за Саров')
INSERT [dbo].[messages] ([ID_messages], [FSP], [ID_types], [date], [text]) VALUES (19, N'Голубева Т. А.', 2, CAST(N'2023-10-19' AS Date), N'Коваль хочет в окоп')
INSERT [dbo].[messages] ([ID_messages], [FSP], [ID_types], [date], [text]) VALUES (20, N'Шемарулин А. К.', 1, CAST(N'2023-10-19' AS Date), N'Заберите Мурзина')
INSERT [dbo].[messages] ([ID_messages], [FSP], [ID_types], [date], [text]) VALUES (22, N'Александрова Н. Н.', 1, CAST(N'2023-10-19' AS Date), N'Привет')
SET IDENTITY_INSERT [dbo].[messages] OFF
GO
INSERT [dbo].[themes] ([ID_type], [type]) VALUES (1, N'Жалоба')
INSERT [dbo].[themes] ([ID_type], [type]) VALUES (2, N'Пожелание')
INSERT [dbo].[themes] ([ID_type], [type]) VALUES (3, N'Благодарность')
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([ID_users], [FSP], [login], [password], [role]) VALUES (1, N'Марушкин К. Д.', N'admin', N'123', 1)
INSERT [dbo].[users] ([ID_users], [FSP], [login], [password], [role]) VALUES (2, N'Ковалев Д. А', N'dima', N'123', 0)
INSERT [dbo].[users] ([ID_users], [FSP], [login], [password], [role]) VALUES (3, N'Голубева Т. А.', N'tana', N'123', 0)
INSERT [dbo].[users] ([ID_users], [FSP], [login], [password], [role]) VALUES (4, N'Шемарулин А. К.', N'sanya', N'123', 0)
INSERT [dbo].[users] ([ID_users], [FSP], [login], [password], [role]) VALUES (5, N'Сыроегин', N'vlad', N'123', 0)
INSERT [dbo].[users] ([ID_users], [FSP], [login], [password], [role]) VALUES (6, N'Александрова Н. Н.', N'hhh', N'123', 0)
SET IDENTITY_INSERT [dbo].[users] OFF
GO
ALTER TABLE [dbo].[messages]  WITH CHECK ADD  CONSTRAINT [FK_messages_types] FOREIGN KEY([ID_types])
REFERENCES [dbo].[themes] ([ID_type])
GO
ALTER TABLE [dbo].[messages] CHECK CONSTRAINT [FK_messages_types]
GO
