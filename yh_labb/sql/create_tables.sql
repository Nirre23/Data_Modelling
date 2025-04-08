CREATE TABLE student (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    class_id INT NOT NULL,
    FOREIGN KEY (class_id) REFERENCES class(class_id)
);

CREATE TABLE student_sensitive (
    student_id INT PRIMARY KEY,
    personal_number VARCHAR(255) NOT NULL,
    FOREIGN KEY (student_id) REFERENCES student(student_id)
);

CREATE TABLE class (
    class_id INT PRIMARY KEY,
    class_name VARCHAR(255) NOT NULL,
    program_id INT NOT NULL,
    leader_id INT NOT NULL,
    campus_id INT NOT NULL,
    FOREIGN KEY (program_id) REFERENCES program(program_id),
    FOREIGN KEY (leader_id) REFERENCES training_manager(leader_id),
    FOREIGN KEY (campus_id) REFERENCES campus(campus_id)
);

CREATE TABLE program (
    program_id INT PRIMARY KEY,
    program_name VARCHAR(255) NOT NULL
);

CREATE TABLE course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(255) NOT NULL,
    course_code VARCHAR(255) NOT NULL,
    credits INT NOT NULL,
    description TEXT NOT NULL,
    course_type_id INT NOT NULL,
    FOREIGN KEY (course_type_id) REFERENCES course_type(course_type_id)
);

CREATE TABLE course_program (
    program_id INT NOT NULL,
    course_id INT NOT NULL,
    PRIMARY KEY (program_id, course_id),
    FOREIGN KEY (program_id) REFERENCES program(program_id),
    FOREIGN KEY (course_id) REFERENCES course(course_id)
);

CREATE TABLE class_course (
    class_id INT NOT NULL,
    course_id INT NOT NULL,
    PRIMARY KEY (class_id, course_id),
    FOREIGN KEY (class_id) REFERENCES class(class_id),
    FOREIGN KEY (course_id) REFERENCES course(course_id)
);

CREATE TABLE professor (
    professor_id INT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE professor_course (
    professor_id INT NOT NULL,
    course_id INT NOT NULL,
    PRIMARY KEY (professor_id, course_id),
    FOREIGN KEY (professor_id) REFERENCES professor(professor_id),
    FOREIGN KEY (course_id) REFERENCES course(course_id)
);

CREATE TABLE training_manager (
    leader_id INT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE consultant_company (
    consultant_id INT PRIMARY KEY,
    company_name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    org_number NUMERIC NOT NULL,
    hourly_rate DECIMAL NOT NULL
);

CREATE TABLE campus (
    campus_id INT PRIMARY KEY,
    location VARCHAR(255) NOT NULL
);

CREATE TABLE consultant_professor (
    professor_id INT NOT NULL,
    consultant_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    PRIMARY KEY (professor_id, consultant_id),
    FOREIGN KEY (professor_id) REFERENCES professor(professor_id),
    FOREIGN KEY (consultant_id) REFERENCES consultant_company(consultant_id)
);

CREATE TABLE course_type (
    course_type_id INT PRIMARY KEY,
    course_type_name VARCHAR(50) NOT NULL
);


