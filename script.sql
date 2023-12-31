USE [StudentRegistrationForm]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 04.08.2023 17:36:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[AttendanceId] [int] IDENTITY(1,1) NOT NULL,
	[AttendanceDate] [datetime] NOT NULL,
	[Status] [binary](1) NOT NULL,
 CONSTRAINT [PK_ATTENDANCE] PRIMARY KEY CLUSTERED 
(
	[AttendanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 04.08.2023 17:36:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CourseId] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [nvarchar](100) NOT NULL,
	[CourseCode] [nvarchar](20) NOT NULL,
	[CreditHours] [int] NOT NULL,
 CONSTRAINT [PK_COURSE] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 04.08.2023 17:36:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentId] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [nvarchar](100) NOT NULL,
	[FacultyId] [int] NOT NULL,
	[CourseIId] [int] NULL,
 CONSTRAINT [PK_DEPARTMENT] PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enroll]    Script Date: 04.08.2023 17:36:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enroll](
	[EnrollmentId] [int] IDENTITY(1,1) NOT NULL,
	[EnrollmentDate] [datetime] NULL,
	[GradeId] [int] NULL,
	[AttendanceId] [int] NULL,
	[CourseId] [int] NULL,
 CONSTRAINT [PK_ENROLLMENT] PRIMARY KEY CLUSTERED 
(
	[EnrollmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Faculty]    Script Date: 04.08.2023 17:36:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculty](
	[FacultyId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[CountOfStudent] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
	[GroupId] [int] NOT NULL,
 CONSTRAINT [PK_FACULTY] PRIMARY KEY CLUSTERED 
(
	[FacultyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grade]    Script Date: 04.08.2023 17:36:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grade](
	[GradeId] [int] IDENTITY(1,1) NOT NULL,
	[GradeFrom] [int] NOT NULL,
	[GradeTo] [int] NOT NULL,
	[GradeTypeId] [int] NOT NULL,
 CONSTRAINT [PK_GRADE] PRIMARY KEY CLUSTERED 
(
	[GradeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GradeType]    Script Date: 04.08.2023 17:36:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GradeType](
	[TypeId] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [nvarchar](2) NOT NULL,
 CONSTRAINT [PK_GRADETYPE] PRIMARY KEY CLUSTERED 
(
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 04.08.2023 17:36:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[GroupId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Count] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
 CONSTRAINT [PK_GROUP] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupTeacher]    Script Date: 04.08.2023 17:36:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupTeacher](
	[GroupTeacherId] [int] IDENTITY(1,1) NOT NULL,
	[GroupId] [int] NOT NULL,
	[InstructorId] [int] NOT NULL,
 CONSTRAINT [PK_GROUPTEACHER] PRIMARY KEY CLUSTERED 
(
	[GroupTeacherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 04.08.2023 17:36:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[InstructorId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[SurName] [nvarchar](150) NOT NULL,
	[DOB] [date] NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[PhoneNumber] [nvarchar](20) NOT NULL,
	[Address] [nvarchar](200) NULL,
	[Gender] [nvarchar](10) NOT NULL,
	[CourseId] [int] NULL,
 CONSTRAINT [PK_INSTRUCTOR] PRIMARY KEY CLUSTERED 
(
	[InstructorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 04.08.2023 17:36:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[DOB] [date] NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[PhoneNumber] [nvarchar](20) NOT NULL,
	[Address] [nvarchar](200) NULL,
	[Gender] [nvarchar](10) NOT NULL,
	[EnrollmentId] [int] NULL,
 CONSTRAINT [PK_STUDENT] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseCode], [CreditHours]) VALUES (1, N'Ali riyaziyyat', N'123456', 45)
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseCode], [CreditHours]) VALUES (2, N'Fizika', N'456878', 30)
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseCode], [CreditHours]) VALUES (3, N'Mentiq Cebri', N'45642', 60)
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseCode], [CreditHours]) VALUES (4, N'Sosialogiya', N'456871', 30)
INSERT [dbo].[Course] ([CourseId], [CourseName], [CourseCode], [CreditHours]) VALUES (5, N'Qurgularin idareolunmasi', N'78522', 45)
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId], [CourseIId]) VALUES (1, N'Komputer muhendisliyi', 1, NULL)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId], [CourseIId]) VALUES (2, N'Informasiya idaretmesi', 2, NULL)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId], [CourseIId]) VALUES (4, N'Internet texnologiyalari', 3, NULL)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId], [CourseIId]) VALUES (5, N'Insan kapitalinin idareolunmasi', 4, NULL)
INSERT [dbo].[Department] ([DepartmentId], [DepartmentName], [FacultyId], [CourseIId]) VALUES (6, N'Aviasiya texnologiyalari', 5, NULL)
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[Faculty] ON 

INSERT [dbo].[Faculty] ([FacultyId], [Name], [CountOfStudent], [StudentId], [GroupId]) VALUES (1, N'Fizika Texnologiya', 60, 3, 1)
INSERT [dbo].[Faculty] ([FacultyId], [Name], [CountOfStudent], [StudentId], [GroupId]) VALUES (2, N'Informasiya Texnologiya', 200, 4, 2)
INSERT [dbo].[Faculty] ([FacultyId], [Name], [CountOfStudent], [StudentId], [GroupId]) VALUES (3, N'Komputer Texnologiya', 40, 6, 3)
INSERT [dbo].[Faculty] ([FacultyId], [Name], [CountOfStudent], [StudentId], [GroupId]) VALUES (4, N'Xalqla elaqeler', 300, 7, 4)
INSERT [dbo].[Faculty] ([FacultyId], [Name], [CountOfStudent], [StudentId], [GroupId]) VALUES (5, N'Teyyarelerin idaredilemsi', 15, 8, 6)
SET IDENTITY_INSERT [dbo].[Faculty] OFF
GO
SET IDENTITY_INSERT [dbo].[Grade] ON 

INSERT [dbo].[Grade] ([GradeId], [GradeFrom], [GradeTo], [GradeTypeId]) VALUES (1, 91, 100, 1)
INSERT [dbo].[Grade] ([GradeId], [GradeFrom], [GradeTo], [GradeTypeId]) VALUES (2, 81, 90, 2)
INSERT [dbo].[Grade] ([GradeId], [GradeFrom], [GradeTo], [GradeTypeId]) VALUES (3, 71, 80, 3)
INSERT [dbo].[Grade] ([GradeId], [GradeFrom], [GradeTo], [GradeTypeId]) VALUES (4, 61, 70, 4)
INSERT [dbo].[Grade] ([GradeId], [GradeFrom], [GradeTo], [GradeTypeId]) VALUES (5, 51, 60, 5)
INSERT [dbo].[Grade] ([GradeId], [GradeFrom], [GradeTo], [GradeTypeId]) VALUES (6, 0, 50, 6)
SET IDENTITY_INSERT [dbo].[Grade] OFF
GO
SET IDENTITY_INSERT [dbo].[GradeType] ON 

INSERT [dbo].[GradeType] ([TypeId], [TypeName]) VALUES (1, N'A')
INSERT [dbo].[GradeType] ([TypeId], [TypeName]) VALUES (2, N'B')
INSERT [dbo].[GradeType] ([TypeId], [TypeName]) VALUES (3, N'C')
INSERT [dbo].[GradeType] ([TypeId], [TypeName]) VALUES (4, N'D')
INSERT [dbo].[GradeType] ([TypeId], [TypeName]) VALUES (5, N'E')
INSERT [dbo].[GradeType] ([TypeId], [TypeName]) VALUES (6, N'F')
SET IDENTITY_INSERT [dbo].[GradeType] OFF
GO
SET IDENTITY_INSERT [dbo].[Group] ON 

INSERT [dbo].[Group] ([GroupId], [Name], [Count], [StudentId]) VALUES (1, N'1455a', 12, 3)
INSERT [dbo].[Group] ([GroupId], [Name], [Count], [StudentId]) VALUES (2, N'1495r', 20, 4)
INSERT [dbo].[Group] ([GroupId], [Name], [Count], [StudentId]) VALUES (3, N'564i', 35, 6)
INSERT [dbo].[Group] ([GroupId], [Name], [Count], [StudentId]) VALUES (4, N'624a', 23, 7)
INSERT [dbo].[Group] ([GroupId], [Name], [Count], [StudentId]) VALUES (6, N'4521a', 10, 8)
SET IDENTITY_INSERT [dbo].[Group] OFF
GO
SET IDENTITY_INSERT [dbo].[Instructor] ON 

INSERT [dbo].[Instructor] ([InstructorId], [FirstName], [SurName], [DOB], [Email], [PhoneNumber], [Address], [Gender], [CourseId]) VALUES (2, N'Huseyn', N'Hasanli', CAST(N'1990-05-15' AS Date), N'huseyn.hasanli@gmail.com', N'+994507264521', N'Baki', N'Kisi', NULL)
INSERT [dbo].[Instructor] ([InstructorId], [FirstName], [SurName], [DOB], [Email], [PhoneNumber], [Address], [Gender], [CourseId]) VALUES (3, N'Ibrahim', N'Aliyev', CAST(N'1995-12-04' AS Date), N'ibrahim.aliyev@gmail.com', N'+994508456321', N'Baki', N'Kisi', NULL)
INSERT [dbo].[Instructor] ([InstructorId], [FirstName], [SurName], [DOB], [Email], [PhoneNumber], [Address], [Gender], [CourseId]) VALUES (4, N'Seymur', N'Seyidov', CAST(N'2002-03-05' AS Date), N'seymur.seyidov@gmail.com', N'+994702563012', N'Baki', N'Kisi', NULL)
SET IDENTITY_INSERT [dbo].[Instructor] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [DOB], [Email], [PhoneNumber], [Address], [Gender], [EnrollmentId]) VALUES (3, N'Leyla', N'Aliyeva', CAST(N'1997-08-12' AS Date), N'leylah.agazadeh@gmail.com', N'+994776432774', N'Baki', N'Qadin', NULL)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [DOB], [Email], [PhoneNumber], [Address], [Gender], [EnrollmentId]) VALUES (4, N'Rahima', N'Mammadova', CAST(N'2001-07-24' AS Date), N'rahima.mammadova@gmail.com', N'+994706438752', N'Baki', N'Qadin', NULL)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [DOB], [Email], [PhoneNumber], [Address], [Gender], [EnrollmentId]) VALUES (6, N'Letif', N'Askerov', CAST(N'2003-12-16' AS Date), N'latif.askarov@gmail.com', N'+994518933479', N'Baki', N'Kisi', NULL)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [DOB], [Email], [PhoneNumber], [Address], [Gender], [EnrollmentId]) VALUES (7, N'Senan', N'Qambarov', CAST(N'1996-05-15' AS Date), N'sanan.qanbarov@gmail.com', N'+994507643515', N'Baki', N'Kisi', NULL)
INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [DOB], [Email], [PhoneNumber], [Address], [Gender], [EnrollmentId]) VALUES (8, N'Fuad ', N'Aliyev', CAST(N'1992-08-05' AS Date), N'fuad.aliyev@gmail.com', N'+994705876921', N'Baki', N'Kisi', NULL)
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [Department_fk1] FOREIGN KEY([CourseIId])
REFERENCES [dbo].[Course] ([CourseId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [Department_fk1]
GO
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [FK_Department_FacultyId] FOREIGN KEY([FacultyId])
REFERENCES [dbo].[Faculty] ([FacultyId])
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [FK_Department_FacultyId]
GO
ALTER TABLE [dbo].[Enroll]  WITH CHECK ADD  CONSTRAINT [Enrollment_fk0] FOREIGN KEY([GradeId])
REFERENCES [dbo].[Grade] ([GradeId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Enroll] CHECK CONSTRAINT [Enrollment_fk0]
GO
ALTER TABLE [dbo].[Enroll]  WITH CHECK ADD  CONSTRAINT [Enrollment_fk1] FOREIGN KEY([AttendanceId])
REFERENCES [dbo].[Attendance] ([AttendanceId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Enroll] CHECK CONSTRAINT [Enrollment_fk1]
GO
ALTER TABLE [dbo].[Enroll]  WITH CHECK ADD  CONSTRAINT [FK_Enroll_CourseId] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([CourseId])
GO
ALTER TABLE [dbo].[Enroll] CHECK CONSTRAINT [FK_Enroll_CourseId]
GO
ALTER TABLE [dbo].[Faculty]  WITH CHECK ADD  CONSTRAINT [Faculty_fk0] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Faculty] CHECK CONSTRAINT [Faculty_fk0]
GO
ALTER TABLE [dbo].[Faculty]  WITH CHECK ADD  CONSTRAINT [Faculty_fk1] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([GroupId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Faculty] CHECK CONSTRAINT [Faculty_fk1]
GO
ALTER TABLE [dbo].[Grade]  WITH CHECK ADD  CONSTRAINT [Grade_fk0] FOREIGN KEY([GradeTypeId])
REFERENCES [dbo].[GradeType] ([TypeId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Grade] CHECK CONSTRAINT [Grade_fk0]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_StudentId] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([Id])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_StudentId]
GO
ALTER TABLE [dbo].[GroupTeacher]  WITH CHECK ADD  CONSTRAINT [GroupTeacher_fk0] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([GroupId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[GroupTeacher] CHECK CONSTRAINT [GroupTeacher_fk0]
GO
ALTER TABLE [dbo].[GroupTeacher]  WITH CHECK ADD  CONSTRAINT [GroupTeacher_fk1] FOREIGN KEY([InstructorId])
REFERENCES [dbo].[Instructor] ([InstructorId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[GroupTeacher] CHECK CONSTRAINT [GroupTeacher_fk1]
GO
ALTER TABLE [dbo].[Instructor]  WITH CHECK ADD  CONSTRAINT [Instructor_fk0] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([CourseId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Instructor] CHECK CONSTRAINT [Instructor_fk0]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [Student_fk0] FOREIGN KEY([EnrollmentId])
REFERENCES [dbo].[Enroll] ([EnrollmentId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [Student_fk0]
GO
