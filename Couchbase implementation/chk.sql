select * from Student;
select * from Course;
select * from Booking;
select * from CourseLevel;

select lectureName as Name, courseName as Course, centerName as Center from Course C join Center Cr on 
C.courseID=Cr.courseID join Lecturer L on C.lecturerID=L.lecturerID where Cr.centerName='Peralta Hall';

SELECT studentName as Name,addressName as Student_Address,phoneNumberNr as Phone,
courseName as Course, bookingDate as Booking_Date, bookingType as Payment_Type
FROM Student St join Course C 
on St.courseID=C.courseID join Booking B on St.studentID=B.studentID and C.courseID=B.courseID 
Where St.studentID ='8';

select S.studentName, S.courseID, A.attendance from 
(select studentID,percent_attendance as attendance 
from Attendance where percent_attendance>(select avg(percent_attendance) from Attendance)) A join Student S 
on A.studentID=S.studentID;


--drop function CourseDateRange
create function CourseDateRange(@s_date date=Null, @e_date date=Null)
returns table 
return 
(select courseID, lecturerID, courseName from Course where startDate between @s_date and @e_date);

select * from CourseDateRange('2020-12-20', '2022-12-20') order by 1;

--drop function AttendanceGrade;
CREATE FUNCTION AttendanceGrade (@scale int = 0) RETURNS TABLE RETURN (
SELECT
   A.studentID, S.studentName, S.courseID, cast((@scale*(percent_attendance/100)) as decimal(10,2)) as Grade
FROM
   Student S join Attendance A
ON
   S.studentID=A.studentID);

SELECT * FROM AttendanceGrade(10) ORDER BY 1;


select C.courseID, C.courseName, L.courseLevelCode 
from Course C join CourseLevel L on C.courseID=L.courseID where courseLevelCode not in ( 
select courseLevelCode from 
CourseLevel where courseID in (select courseID from Student where studentName='Robin Brown'))

IF OBJECT_ID('sp_CourseRecommender') IS NOT NULL DROP PROC sp_CourseRecommender;
GO 
CREATE PROC sp_CourseRecommender 
@studentName nvarchar(50)
AS 
select C.courseID, C.courseName, C.startDate, C.endDate, L.courseLevelCode from Course C join CourseLevel L on C.courseID=L.courseID where courseLevelCode not in ( 
select courseLevelCode from CourseLevel where courseID in (select courseID from Student where studentName=@studentName))

EXEC sp_CourseRecommender 'Robin Brown';

select * from Student where studentName='Robin Brown';

EXEC sp_CourseRecommender 'Robin Brown'
WITH RESULT SETS
(
	(
		[Course ID] nvarchar(50),
		[Course Name] nvarchar(50),
		[Start Date] datetime,
		[End Date] datetime,
		[Course Level] nvarchar(10)
	)
)
GO

