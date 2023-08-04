use StudentRegistrationForm

-- CREATE TABLE [Attendance] (
-- 	AttendanceId integer IDENTITY (1,1) NOT NULL,
-- 	AttendanceDate datetime NOT NULL,
-- 	Status binary NOT NULL,
--   CONSTRAINT [PK_ATTENDANCE] PRIMARY KEY CLUSTERED
--   (
--   [AttendanceId] ASC
--   ) WITH (IGNORE_DUP_KEY = OFF)
--
-- )
-- GO
-- CREATE TABLE [Grade] (
-- 	GradeId integer IDENTITY (1,1) NOT NULL,
-- 	GradeFrom integer NOT NULL,
-- 	GradeTo integer NOT NULL,
-- 	GradeTypeId integer NOT NULL,
--   CONSTRAINT [PK_GRADE] PRIMARY KEY CLUSTERED
--   (
--   [GradeId] ASC
--   ) WITH (IGNORE_DUP_KEY = OFF)
--
-- )
-- GO
-- CREATE TABLE [Group] (
-- 	GroupId integer IDENTITY (1,1) NOT NULL,
-- 	Name nvarchar(50) NOT NULL,
-- 	Count integer NOT NULL,
-- 	StudentId integer NOT NULL,
--   CONSTRAINT [PK_GROUP] PRIMARY KEY CLUSTERED
--   (
--   [GroupId] ASC
--   ) WITH (IGNORE_DUP_KEY = OFF)
--
-- )
-- GO
-- CREATE TABLE [GroupTeacher] (
-- 	GroupTeacherId integer IDENTITY (1,1) NOT NULL,
-- 	GroupId integer NOT NULL,
-- 	InstructorId integer NOT NULL,
--   CONSTRAINT [PK_GROUPTEACHER] PRIMARY KEY CLUSTERED
--   (
--   [GroupTeacherId] ASC
--   ) WITH (IGNORE_DUP_KEY = OFF)
--
-- )
-- GO
-- CREATE TABLE [GradeType] (
-- 	TypeId integer IDENTITY (1,1) NOT NULL,
-- 	TypeName nvarchar(2) NOT NULL,
--   CONSTRAINT [PK_GRADETYPE] PRIMARY KEY CLUSTERED
--   (
--   [TypeId] ASC
--   ) WITH (IGNORE_DUP_KEY = OFF)
--
-- )
-- GO

-- ALTER TABLE [Group] WITH CHECK ADD CONSTRAINT [Group_fk0] FOREIGN KEY ([StudentId]) REFERENCES [Student]([Id])
-- ON UPDATE CASCADE
-- GO
-- ALTER TABLE [Group] CHECK CONSTRAINT [Group_fk0]
-- GO




