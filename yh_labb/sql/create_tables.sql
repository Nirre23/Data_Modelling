-- Table Student
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Email VARCHAR(255) UNIQUE,
    ClassID INT,
    FOREIGN KEY (ClassID) REFERENCES Class(ClassID)
);

-- Table Student_Sensitive
CREATE TABLE Student_Sensitive (
    StudentID INT PRIMARY KEY,
    PersonalNumber VARCHAR(255),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);

-- Table Class
CREATE TABLE Class (
    ClassID INT PRIMARY KEY,
    ClassName VARCHAR(255),
    ProgramID INT,
    LeaderID INT,
    CampusID INT,
    FOREIGN KEY (ProgramID) REFERENCES Program(ProgramID),
    FOREIGN KEY (LeaderID) REFERENCES TrainingManager(LeaderID),
    FOREIGN KEY (CampusID) REFERENCES Campus(CampusID)
);

-- Table Program
CREATE TABLE Program (
    ProgramID INT PRIMARY KEY,
    ProgramName VARCHAR(255)
);

-- Table Course
CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(255),
    CourseCode VARCHAR(255),
    Credits INT,
    Description TEXT,
    Course_typeID INT,
    FOREIGN KEY (Course_typeID) REFERENCES Course_type(Course_typeID)
);

-- bridgetable Course_Program
CREATE TABLE Course_Program (
    ProgramID INT,
    CourseID INT,
    PRIMARY KEY (ProgramID, CourseID),
    FOREIGN KEY (ProgramID) REFERENCES Program(ProgramID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

-- bridgetable Class_Course
CREATE TABLE Class_Course (
    ClassID INT,
    CourseID INT,
    PRIMARY KEY (ClassID, CourseID),
    FOREIGN KEY (ClassID) REFERENCES Class(ClassID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

-- Table Professor
CREATE TABLE Professor (
    ProfessorID INT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Email VARCHAR(255) UNIQUE
);

-- bridgetable Professor_Course
CREATE TABLE Professor_Course (
    ProfessorID INT,
    CourseID INT,
    PRIMARY KEY (ProfessorID, CourseID),
    FOREIGN KEY (ProfessorID) REFERENCES Professor(ProfessorID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
);

-- Table TrainingManager
CREATE TABLE TrainingManager (
    LeaderID INT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Email VARCHAR(255) UNIQUE
);

-- Table ConsultantCompany
CREATE TABLE ConsultantCompany (
    ConsultantID INT PRIMARY KEY,
    CompanyName VARCHAR(255),
    Address VARCHAR(255),
    OrgNumber NUMERIC,
    HourlyRate DECIMAL
);

-- Table Campus
CREATE TABLE Campus (
    CampusID INT PRIMARY KEY,
    Location VARCHAR(255)
);

-- bridgetable Consultant_Professor
CREATE TABLE Consultant_Professor (
    ProfessorID INT,
    ConsultantID INT,
    StartDate DATE,
    EndDate DATE,
    PRIMARY KEY (ProfessorID, ConsultantID),
    FOREIGN KEY (ProfessorID) REFERENCES Professor(ProfessorID),
    FOREIGN KEY (ConsultantID) REFERENCES ConsultantCompany(ConsultantID)
);

-- Table Course_type
CREATE TABLE Course_type (
    Course_typeID INT PRIMARY KEY,
    course_type_name VARCHAR(50)
);