CREATE TABLE GROUPS (
GROUP_ID INT IDENTITY (1,1) PRIMARY KEY,
COURSE_ID INT,
NAME NVARCHAR (50) NOT NULL )
GO

ALTER TABLE GROUPS 
WITH CHECK ADD CONSTRAINT FK_COURSES_COURSE_ID FOREIGN KEY (COURSE_ID)
REFERENCES COURSES (COURSE_ID)
GO