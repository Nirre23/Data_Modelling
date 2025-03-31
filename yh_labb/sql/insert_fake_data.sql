-- Table Student
INSERT INTO Student (StudentID, FirstName, LastName, Email, ClassID) VALUES
(1, 'Alice', 'Johnson', 'alice.johnson@example.com', 1),
(2, 'Bob', 'Smith', 'bob.smith@example.com', 2),
(3, 'Charlie', 'Brown', 'charlie.brown@example.com', 1);

-- Table Student_Sensitive
INSERT INTO Student_Sensitive (StudentID, PersonalNumber) VALUES
(1, '19900101-1234'),
(2, '19920202-5678'),
(3, '19950303-9012');

-- Table Class
INSERT INTO Class (ClassID, ClassName, ProgramID, LeaderID, CampusID) VALUES
(1, 'Class A', 1, 1, 1),
(2, 'Class B', 2, 2, 2),
(3, 'Class C', 1, 3, 1);

-- Table Program
INSERT INTO Program (ProgramID, ProgramName) VALUES
(1, 'Computer Science'),
(2, 'Business Administration'),
(3, 'Mechanical Engineering');

-- Table Course
INSERT INTO Course (CourseID, CourseName, CourseCode, Credits, Description, Course_typeID) VALUES
(1, 'Introduction to Programming', 'CS101', 5, 'Basic programming concepts', 1),
(2, 'Financial Accounting', 'BA201', 4, 'Principles of accounting', 2),
(3, 'Thermodynamics', 'ME301', 6, 'Heat and energy transfer', 3);

-- bridgetable Course_Program
INSERT INTO Course_Program (ProgramID, CourseID) VALUES
(1, 1),
(2, 2),
(3, 3);

-- bridgetable Class_Course
INSERT INTO Class_Course (ClassID, CourseID) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Table Professor
INSERT INTO Professor (ProfessorID, FirstName, LastName, Email) VALUES
(1, 'David', 'Williams', 'david.williams@example.com'),
(2, 'Eva', 'Davis', 'eva.davis@example.com'),
(3, 'Frank', 'Miller', 'frank.miller@example.com');

-- bridgetable Professor_Course
INSERT INTO Professor_Course (ProfessorID, CourseID) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Table TrainingManager
INSERT INTO TrainingManager (LeaderID, FirstName, LastName, Email) VALUES
(1, 'Grace', 'Wilson', 'grace.wilson@example.com'),
(2, 'Henry', 'Moore', 'henry.moore@example.com'),
(3, 'Isabella', 'Taylor', 'isabella.taylor@example.com');

-- Table ConsultantCompany
INSERT INTO ConsultantCompany (ConsultantID, CompanyName, Address, OrgNumber, HourlyRate) VALUES
(1, 'Consulting AB', 'Street 1', 1234567890, 150.00),
(2, 'Data Solutions Ltd', 'Avenue 2', 9876543210, 200.00),
(3, 'Tech Experts Inc', 'Road 3', 5555555555, 175.00);

-- Table Campus
INSERT INTO Campus (CampusID, Location) VALUES
(1, 'Stockholm'),
(2, 'Gothenburg'),
(3, 'Malmö');

-- bridgetable Consultant_Professor
INSERT INTO Consultant_Professor (ProfessorID, ConsultantID, StartDate, EndDate) VALUES
(1, 1, '2023-01-01', '2023-12-31'),
(2, 2, '2023-02-15', NULL),
(3, 3, '2023-03-01', '2023-06-30');

-- Table Course_type
INSERT INTO Course_type (Course_typeID, course_type_name) VALUES
(1, 'Programming'),
(2, 'Finance'),
(3, 'Engineering');