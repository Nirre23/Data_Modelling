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



