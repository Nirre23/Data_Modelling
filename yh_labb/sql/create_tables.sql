-- Skapa tabellerna utan främmande nyckelbegränsningar
CREATE TABLE student (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    class_id INT
);

CREATE TABLE student_sensitive (
    student_id INT PRIMARY KEY,
    personal_number VARCHAR(255)
);

CREATE TABLE class (
    class_id INT PRIMARY KEY,
    class_name VARCHAR(255),
    program_id INT,
    leader_id INT,
    campus_id INT
);

CREATE TABLE program (
    program_id INT PRIMARY KEY,
    program_name VARCHAR(255)
);

CREATE TABLE course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(255),
    course_code VARCHAR(255),
    credits INT,
    description TEXT,
    course_type_id INT
);

CREATE TABLE course_program (
    program_id INT,
    course_id INT,
    PRIMARY KEY (program_id, course_id)
);

CREATE TABLE class_course (
    class_id INT,
    course_id INT,
    PRIMARY KEY (class_id, course_id)
);

CREATE TABLE professor (
    professor_id INT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255) UNIQUE
);

CREATE TABLE professor_course (
    professor_id INT,
    course_id INT,
    PRIMARY KEY (professor_id, course_id)
);

CREATE TABLE training_manager (
    leader_id INT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255) UNIQUE
);

CREATE TABLE consultant_company (
    consultant_id INT PRIMARY KEY,
    company_name VARCHAR(255),
    address VARCHAR(255),
    org_number NUMERIC,
    hourly_rate DECIMAL
);

CREATE TABLE campus (
    campus_id INT PRIMARY KEY,
    location VARCHAR(255)
);

CREATE TABLE consultant_professor (
    professor_id INT,
    consultant_id INT,
    start_date DATE,
    end_date DATE,
    PRIMARY KEY (professor_id, consultant_id)
);

CREATE TABLE course_type (
    course_type_id INT PRIMARY KEY,
    course_type_name VARCHAR(50)
);

-- Lägger till Foreign Keys med ALTER TABLE
ALTER TABLE student ADD FOREIGN KEY (class_id) REFERENCES class(class_id);
ALTER TABLE student_sensitive ADD FOREIGN KEY (student_id) REFERENCES student(student_id);
ALTER TABLE class ADD FOREIGN KEY (program_id) REFERENCES program(program_id);
ALTER TABLE class ADD FOREIGN KEY (leader_id) REFERENCES training_manager(leader_id);
ALTER TABLE class ADD FOREIGN KEY (campus_id) REFERENCES campus(campus_id);
ALTER TABLE course ADD FOREIGN KEY (course_type_id) REFERENCES course_type(course_type_id);
ALTER TABLE course_program ADD FOREIGN KEY (program_id) REFERENCES program(program_id);
ALTER TABLE course_program ADD FOREIGN KEY (course_id) REFERENCES course(course_id);
ALTER TABLE class_course ADD FOREIGN KEY (class_id) REFERENCES class(class_id);
ALTER TABLE class_course ADD FOREIGN KEY (course_id) REFERENCES course(course_id);
ALTER TABLE professor_course ADD FOREIGN KEY (professor_id) REFERENCES professor(professor_id);
ALTER TABLE professor_course ADD FOREIGN KEY (course_id) REFERENCES course(course_id);
ALTER TABLE consultant_professor ADD FOREIGN KEY (professor_id) REFERENCES professor(professor_id);
ALTER TABLE consultant_professor ADD FOREIGN KEY (consultant_id) REFERENCES consultant_company(consultant_id);

