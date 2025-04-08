--Hämtar för och efternamn på alla studenter i Klass A

SELECT
    Student.First_Name,
    Student.Last_Name,
    Class.Class_Name
FROM
    Student
JOIN
    Class ON Student.Class_ID = Class.Class_ID
WHERE
    Class.Class_Name = 'Class A';

-- För att hämta kursnamn och professorernas för - och efternamn för kursen "Financial Accounting"

SELECT
    Course.Course_Name,
    Professor.First_Name,
    Professor.Last_Name
FROM
    Course
JOIN
    Professor_Course ON Course.Course_ID = Professor_Course.Course_ID
JOIN
    Professor ON Professor_Course.Professor_ID = Professor.Professor_ID
WHERE
    Course.Course_Name = 'Financial Accounting';

-- För att hämta kursnamn och utbildningsledarens för - och efternamn för klass B

SELECT
    Class.Class_Name,
    Training_Manager.First_Name,
    Training_Manager.Last_Name
FROM
    Class
JOIN
    Training_Manager ON Class.Leader_ID = Training_Manager.Leader_ID
WHERE
    Class.Class_Name = 'Class B';


--hämtar kursID, kursnamn,professorns för och efternamn för alla kurser som är fristående

SELECT course.course_id,course.course_name,professor.first_name,professor.last_name,is_standalone
from course
left join professor_course on course.course_id = professor_course.course_id
left join professor on professor_course.professor_id = professor.professor_id
where course.is_standalone = TRUE;


--hämtar alla programnamn
SELECT Program_Name
FROM Program;

--hämtar location för alla campus
SELECT Location
FROM Campus;

-- hämtar proffessorernas hela namn och emails
SELECT Email,first_name,last_name
FROM Professor;

-- hämtar alla kursnamn och kurskoder
SELECT Course_Name, Course_Code
FROM Course;

--hämtar alla kurser och om de är fristående eller inte
select course,is_standalone
from course;

-- hämtar studenternas hela namn och deras programnamn
SELECT Student.First_Name, Student.Last_Name, Program.Program_Name
FROM Student
JOIN Class ON Student.Class_ID = Class.Class_ID
JOIN Program ON Class.Program_ID = Program.Program_ID;

-- hämtar alla kursnamn och deras kurstyper
SELECT Course.Course_Name, Course_Type.Course_Type_Name
FROM Course
JOIN Course_Type ON Course.Course_Type_ID = Course_Type.Course_Type_ID;

--  hämtar alla proffessorers namn och vilket företag de kommer ifrån
SELECT Professor.First_Name, Professor.Last_Name, Consultant_Company.Company_Name
FROM Professor
JOIN Consultant_Professor ON Professor.Professor_ID = Consultant_Professor.Professor_ID
JOIN Consultant_Company ON Consultant_Professor.Consultant_ID = Consultant_Company.Consultant_ID;

SELECT table_name 
FROM information_schema.tables 
WHERE table_schema = 'public';

