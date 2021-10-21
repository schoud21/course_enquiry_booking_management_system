USE master;
GO

IF  DB_ID('LearningManagementDB') IS NOT NULL
DROP DATABASE LearningManagementDB;
GO

CREATE DATABASE LearningManagementDB;
GO

USE LearningManagementDB;

-- create the tables for the database
CREATE TABLE Student
(
	studentID int IDENTITY (1, 1) NOT NULL,
	courseID nchar(6) NOT NULL,
	addressName nvarchar(max),
	phoneNumberNr varchar(50),
	studentName nvarchar(max),
	CONSTRAINT Student_PK PRIMARY KEY(studentID)
);

CREATE TABLE ClassRoom
(
	classRoomID varchar(6) NOT NULL,
	classSize int,
	limitingFactor numeric(6, 2),
	CONSTRAINT ClassRoom_PK PRIMARY KEY(classRoomID)
);

CREATE TABLE Booking
(
	bookingID int IDENTITY (1, 1) NOT NULL,
	courseID nchar(6),
	studentID int,
	bookingDate date,
	bookingType nvarchar(max),
	CONSTRAINT Booking_PK PRIMARY KEY(bookingID)
);

CREATE TABLE Course
(
	courseID nchar(6) NOT NULL,
	lecturerID nchar(6),
	courseName nvarchar(max),
	startDate date,
	endDate date,
	CONSTRAINT Course_PK PRIMARY KEY(courseID)
);

CREATE TABLE Lecturer
(
	lecturerID nchar(6) NOT NULL,
	lectureName nvarchar(max),
	lecturerPhone nvarchar(max),
	CONSTRAINT Lecturer_PK PRIMARY KEY(lecturerID)
);

CREATE TABLE CourseLevel
(
	courseLevelCode nchar(400) NOT NULL,
	courseID nchar(6),
	label nvarchar(max),
	cost_per_credit numeric(8, 2),
);

CREATE TABLE Center
(
	centerID varchar(10) NOT NULL,
	classRoomID varchar(6),
	courseID nchar(6),
	centerName varchar(200),
	centerPhoneNumber varchar(30),
);

create table Attendance(
    studentID int,
	courseID nchar(6),
	percent_attendance numeric(8, 2)	
);

ALTER TABLE Attendance ADD CONSTRAINT Attendance_FK1 FOREIGN KEY (studentID) REFERENCES Student (studentID) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE Attendance ADD CONSTRAINT Attendance_FK2 FOREIGN KEY (courseID) REFERENCES Course (courseID) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE Booking ADD CONSTRAINT Booking_FK1 FOREIGN KEY (studentID) REFERENCES Student (studentID) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE Booking ADD CONSTRAINT Booking_FK2 FOREIGN KEY (courseID) REFERENCES Course (courseID) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE Student ADD CONSTRAINT Student_FK1 FOREIGN KEY (courseID) REFERENCES Course (courseID) ON DELETE NO ACTION ON UPDATE NO ACTION;

--ALTER TABLE Course ADD CONSTRAINT Course_FK1 FOREIGN KEY (studentID) REFERENCES Student (studentID) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE Course ADD CONSTRAINT Course_FK1 FOREIGN KEY (lecturerID) REFERENCES Lecturer (lecturerID) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE CourseLevel ADD CONSTRAINT CourseLevel_FK FOREIGN KEY (courseID) REFERENCES Course (courseID) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE Center ADD CONSTRAINT Center_FK1 FOREIGN KEY (courseID) REFERENCES Course (courseID) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE Center ADD CONSTRAINT Center_FK2 FOREIGN KEY (classRoomID) REFERENCES ClassRoom (classRoomID) ON DELETE NO ACTION ON UPDATE NO ACTION;

