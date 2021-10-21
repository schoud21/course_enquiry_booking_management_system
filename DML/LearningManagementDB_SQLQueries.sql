USE LearningManagementDB;

--1. Student Course Details:
----------------------------
SELECT
   s.studentName,
   s.addressName,
   s.phoneNumberNr,
   c.courseName,
   c.startDate,
   c.endDate 
FROM
   Student s 
   JOIN
      Course c 
      ON s.courseID = c.courseID;

--2. Student Course Difficulty Level details:
---------------------------------------------
SELECT
   s.studentName,
   c.courseName,
   cl.label AS LevelofDifficulty 
FROM
   Student s 
   JOIN
      Course c 
      ON s.courseID = c.courseID 
   JOIN
      CourseLevel cl 
      ON c.courseID = cl.courseID;

--3. Student Course Classroom Details:
--------------------------------------
SELECT
   s.studentName,
   c.courseName,
   cr.centerID,
   cr.classRoomID,
   cr.centerName 
FROM
   Student s 
   JOIN
      Course c 
      ON s.courseID = c.courseID 
   JOIN
      Center cr 
      ON c.courseID = cr.courseID;

--4. Student-Course Booking details:
------------------------------------
SELECT
   studentName "Name",
   addressName "Address",
   phoneNumberNr "Phone",
   courseName "Course",
   startDate "START",
   endDate "
   END
   ",
   bookingDate "Booking DATE",
   bookingType "Booking Type" 
FROM
   Student s 
   JOIN
      Course c 
      ON s.courseID = c.courseID 
   JOIN
      Center cr 
      ON c.courseID = cr.courseID 
   JOIN
      Booking b 
      ON s.studentID = b.studentID;

--5. Lecturer-Course-Centre details:
------------------------------------
SELECT
   lectureName AS Name,
   courseName AS Course,
   centerName AS Center 
FROM
   Course C 
   JOIN
      Center Cr 
      ON C.courseID = Cr.courseID 
   JOIN
      Lecturer L 
      ON C.lecturerID = L.lecturerID 
WHERE
   Cr.centerName = 'Peralta Hall';
 
--6. Student Booking details:
------------------------------
SELECT
   studentName AS Name,
   addressName AS Student_Address,
   phoneNumberNr AS Phone,
   courseName AS Course,
   bookingDate AS Booking_Date,
   bookingType AS Payment_Type 
FROM
   Student St 
   JOIN
      Course C 
      ON St.courseID = C.courseID 
   JOIN
      Booking B 
      ON St.studentID = B.studentID 
      AND C.courseID = B.courseID 
WHERE
   St.studentID = '8';

--Trigger to ensure course price according to course level:
-----------------------------------------------------------
CREATE TRIGGER Course_Cost 
ON CourseLevel AFTER INSERT AS 
BEGIN
   DECLARE @coursePrice NUMERIC(8, 2) 
   DECLARE @courseLevelCode NCHAR(400) 
   SELECT
      @coursePrice = cost_per_credit,
      @courseLevelCode = courseLevelCode 
   FROM
      inserted IF @courseLevelCode = 'bgn' 
   SET
      @coursePrice = 1200 IF @courseLevelCode = 'int' 
   SET
      @coursePrice = 1350 IF @courseLevelCode = 'adv' 
   SET
      @coursePrice = 1500 IF @courseLevelCode = 'mst' 
   SET
      @coursePrice = 1650 
END ;


-- Stored Proc to retreive Student Attendance Info:
---------------------------------------------------
IF OBJECT_ID('sp_StudentAttendanceInfo') IS NOT NULL DROP PROC sp_StudentAttendanceInfo;
GO 
CREATE PROC sp_StudentAttendanceInfo AS 
SELECT
   s.studentName "Name",
   s.phoneNumberNr "Contact",
   s.addressName "Address",
   c.courseName "Course Name",
   c.startDate "START DATE",
   c.endDate "
   END
   DATE",
   a.percent_attendance "Attendance % " 
FROM
   Student s 
   INNER JOIN
      Course c 
      ON s.courseID = c.courseID 
   INNER JOIN
      Attendance a 
      ON s.studentID = a.studentID 
ORDER BY
   c.endDate;

--Execute SP Using the simple EXECUTE keyword
EXEC sp_StudentAttendanceInfo;
--command by adding a WITH RESULT SETS statement. 
EXEC sp_StudentAttendanceInfo
WITH RESULT SETS
(
	(
		[Student Name] nvarchar(50),
		[Contact Number] nvarchar(50),
		[Student Address] nvarchar(50),
		[Course Name] nvarchar(50),
		[Course Start Date] datetime,
		[Course End Date] datetime,
		[Attendance Percentage(%)] decimal(8,2)
	)
)
GO

-- UDF to retrieve Course Details for Courses within a Date Range:
-------------------------------------------------------------------
CREATE FUNCTION CourseDateRange (@s_date DATE = NULL, @e_date DATE = NULL) RETURNS TABLE RETURN (
SELECT
   courseID, lecturerID, courseName 
FROM
   Course 
WHERE
   startDate BETWEEN @s_date AND @e_date);
   
SELECT * FROM CourseDateRange('2020-12-20', '2022-12-20') ORDER BY 1;

-- UDF to calculate the Attendance grade for each student on a Scale set by the instructor:
-------------------------------------------------------------------------------------------
CREATE FUNCTION AttendanceGrade (@scale int = 0) RETURNS TABLE RETURN (
SELECT
   A.studentID, S.studentName, S.courseID, cast((@scale*(percent_attendance/100)) as decimal(10,2)) as Grade
FROM
   Student S join Attendance A
ON
   S.studentID=A.studentID);

SELECT * FROM AttendanceGrade(10) ORDER BY 1;

--Stored Procedure to Recommend the courses that are not yet taken by a Student:
--------------------------------------------------------------------------------
IF OBJECT_ID('sp_CourseRecommender') IS NOT NULL DROP PROC sp_CourseRecommender;
GO 
CREATE PROC sp_CourseRecommender @studentName NVARCHAR(50) AS 
SELECT
   C.courseID,
   C.courseName,
   C.startDate,
   C.endDate,
   L.courseLevelCode 
FROM
   Course C 
   JOIN
      CourseLevel L 
      ON C.courseID = L.courseID 
WHERE
   courseLevelCode NOT IN 
   (
      SELECT
         courseLevelCode 
      FROM
         CourseLevel 
      WHERE
         courseID IN 
         (
            SELECT
               courseID 
            FROM
               Student 
            WHERE
               studentName = @studentName
         )
   )
--Execute SP for any random student
EXEC sp_CourseRecommender 'Robin Brown';
--Execute SP WITH RESULT SETS statement. 
EXEC sp_CourseRecommender 'Robin Brown' WITH RESULT SETS 
( ( [Course ID] NVARCHAR(50), [Course Name] NVARCHAR(50), [START DATE] DATETIME, [END DATE] DATETIME, [Course Level] NVARCHAR(10) ) ) 
GO






