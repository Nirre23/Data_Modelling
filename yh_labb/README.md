# YrkesCo Database Project
## Overview
The YrkesCo database project is designed to modernize and optimize the management of students, courses, and educational programs. Traditionally, YrkesCo relied on Excel files and learning platforms, leading to inefficiencies, data duplication, and inconsistencies. This project introduces a centralized PostgreSQL database, ensuring streamlined data handling, improved accessibility, and enhanced data integrity.

The database is structured using Third Normal Form (3NF) principles to eliminate redundancy and maintain optimal data organization. It establishes clear relationships between key entities such as students, courses, programs, and staff while ensuring scalability and security.

Key Features<br>
✅ Structured Student & Course Management – Tracks students, their enrolled courses, and assigned instructors.<br>
✅ Program & Class Organization – Connects courses to programs and manages student groupings.<br>
✅ Role-Based Access – Defines responsibilities for training managers, professors, and consultants.<br>
✅ Data Integrity & Security – Utilizes foreign keys, constraints, and normalization to maintain consistency.<br>
✅ Docker-ized Deployment – Runs in a containerized environment using Docker Compose for easy setup and scalability.

## Database Design<br>
The database consists of multiple interrelated tables, including:

Students – Stores student details and their assigned classes.

Courses – Maintains course information and links to professors and programs.

Classes – Groups students and associates them with specific programs.

Professors – Records faculty members and their assigned courses.

Training Managers – Manages educational leadership roles.

Following 3NF normalization, the schema ensures:

1NF: All attributes are atomic (indivisible).

2NF: Every non-key attribute is fully dependent on the primary key.

3NF: No transitive dependencies exist; all attributes depend solely on the primary key.

## Technology Stack
🔹 PostgreSQL – The relational database for structured data storage.<br>
🔹 Docker Compose – Manages database deployment in a      containerized setup.<br>
🔹 SQL – Used for querying and data manipulation.

## Future Enhancements<br>
🚀 Performance Optimization – Implement indexing strategies for faster queries.<br>
🔒 User Authentication & Role Management – Introduce controlled access levels.<br>
📊 Advanced Reporting & Analytics – Enhance insights with detailed reporting.<br>
🌐 Web Interface Development – Provide an interactive UI for data management.

## Conclusion<br>
This project provides a scalable, structured, and efficient approach to handling student and course data. By adopting a relational database model, YrkesCo benefits from improved data accuracy, reduced administrative workload, and enhanced decision-making capabilities.