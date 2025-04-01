-- Skapa tabellerna utan främmande nyckelbegränsningar
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Email VARCHAR(255) UNIQUE,
    ClassID INT
);

CREATE TABLE Student_Sensitive (
    StudentID INT PRIMARY KEY,
    PersonalNumber VARCHAR(255)
);

CREATE TABLE Class (
    ClassID INT PRIMARY KEY,
    ClassName VARCHAR(255),
    ProgramID INT,
    LeaderID INT,
    CampusID INT
);

CREATE TABLE Program (
    ProgramID INT PRIMARY KEY,
    ProgramName VARCHAR(255)
);

CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(255),
    CourseCode VARCHAR(255),
    Credits INT,
    Description TEXT,
    Course_typeID INT
);

CREATE TABLE Course_Program (
    ProgramID INT,
    CourseID INT,
    PRIMARY KEY (ProgramID, CourseID)
);

CREATE TABLE Class_Course (
    ClassID INT,
    CourseID INT,
    PRIMARY KEY (ClassID, CourseID)
);

CREATE TABLE Professor (
    ProfessorID INT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Email VARCHAR(255) UNIQUE
);

CREATE TABLE Professor_Course (
    ProfessorID INT,
    CourseID INT,
    PRIMARY KEY (ProfessorID, CourseID)
);

CREATE TABLE TrainingManager (
    LeaderID INT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Email VARCHAR(255) UNIQUE
);

CREATE TABLE ConsultantCompany (
    ConsultantID INT PRIMARY KEY,
    CompanyName VARCHAR(255),
    Address VARCHAR(255),
    OrgNumber NUMERIC,
    HourlyRate DECIMAL
);

CREATE TABLE Campus (
    CampusID INT PRIMARY KEY,
    Location VARCHAR(255)
);

CREATE TABLE Consultant_Professor (
    ProfessorID INT,
    ConsultantID INT,
    StartDate DATE,
    EndDate DATE,
    PRIMARY KEY (ProfessorID, ConsultantID)
);

CREATE TABLE Course_type (
    Course_typeID INT PRIMARY KEY,
    course_type_name VARCHAR(50)
);

-- Lägger till Foreign Keys med ALTER TABLE
ALTER TABLE Student ADD FOREIGN KEY (ClassID) REFERENCES Class(ClassID);
ALTER TABLE Student_Sensitive ADD FOREIGN KEY (StudentID) REFERENCES Student(StudentID);
ALTER TABLE Class ADD FOREIGN KEY (ProgramID) REFERENCES Program(ProgramID);
ALTER TABLE Class ADD FOREIGN KEY (LeaderID) REFERENCES TrainingManager(LeaderID);
ALTER TABLE Class ADD FOREIGN KEY (CampusID) REFERENCES Campus(CampusID);
ALTER TABLE Course ADD FOREIGN KEY (Course_typeID) REFERENCES Course_type(Course_typeID);
ALTER TABLE Course_Program ADD FOREIGN KEY (ProgramID) REFERENCES Program(ProgramID);
ALTER TABLE Course_Program ADD FOREIGN KEY (CourseID) REFERENCES Course(CourseID);
ALTER TABLE Class_Course ADD FOREIGN KEY (ClassID) REFERENCES Class(ClassID);
ALTER TABLE Class_Course ADD FOREIGN KEY (CourseID) REFERENCES Course(CourseID);
ALTER TABLE Professor_Course ADD FOREIGN KEY (ProfessorID) REFERENCES Professor(ProfessorID);
ALTER TABLE Professor_Course ADD FOREIGN KEY (CourseID) REFERENCES Course(CourseID);
ALTER TABLE Consultant_Professor ADD FOREIGN KEY (ProfessorID) REFERENCES Professor(ProfessorID);
ALTER TABLE Consultant_Professor ADD FOREIGN KEY (ConsultantID) REFERENCES ConsultantCompany(ConsultantID);