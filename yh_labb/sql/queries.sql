--Hämtar för och efternamn på alla studenter i Klass A

SELECT
    Student.FirstName,
    Student.LastName,
    Class.ClassName
FROM
    Student
JOIN
    Class ON Student.ClassID = Class.ClassID
WHERE
    Class.ClassName = 'Class A';

-- För att hämta kursnamn och professorernas för - och efternamn
SELECT
    Course.CourseName,
    Professor.FirstName,
    Professor.LastName
FROM
    Course
JOIN
    Professor_Course ON Course.CourseID = Professor_Course.CourseID
JOIN
    Professor ON Professor_Course.ProfessorID = Professor.ProfessorID
WHERE
    Course.CourseName = 'Financial Accounting';

--För att hämta utbildningsledarens för- och efternamn för Klass B
SELECT
    Class.ClassName,
    TrainingManager.FirstName,
    TrainingManager.LastName
FROM
    Class
JOIN
    TrainingManager ON Class.LeaderID = TrainingManager.LeaderID
WHERE
    Class.ClassName = 'Class B';
