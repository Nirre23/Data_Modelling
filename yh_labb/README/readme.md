YrkesCo Database Project

Overview

The YrkesCo database project is designed to improve the management of students, courses, and educational programs at YrkesCo. The current system relies on Excel files and various learning platforms, which can lead to inefficiencies, data duplication, and errors. This project introduces a centralized PostgreSQL database to streamline data management, enhance accessibility, and improve data integrity.

The database is structured to support various relationships between key entities, including students, classes, programs, courses, and staff. It is designed according to the Third Normal Form (3NF) to eliminate redundancy and ensure optimal data organization.

Features

Student and Course Management: Tracks students, their enrolled classes, and assigned professors.

Program Structure: Connects courses to programs and manages different class groups.

Staff Roles: Includes training managers, professors, and consultants, each with defined responsibilities.

Security and Data Integrity: Uses foreign keys and normalized tables to maintain consistency.

Docker-ized Deployment: The database runs in a containerized environment using Docker Compose for easy setup and scalability.

Database Design

The database consists of multiple related tables, including:

Students: Stores student details and links them to their respective classes.

Courses: Maintains course information and their connections to professors and programs.

Classes: Groups students and links them to specific programs.

Professors: Records faculty members and their assigned courses.

Training Managers: Manages educational leadership roles.

The schema follows 3NF principles, ensuring:

No repeating groups or multivalued attributes (1NF).

Every non-key attribute is fully dependent on the primary key (2NF).

No transitive dependencies (3NF), meaning all attributes depend only on the primary key.

Technology Stack

PostgreSQL: The relational database used for structured data storage.

Docker Compose: Manages database deployment in a containerized environment.

SQL: Used for querying and data manipulation.

Future Improvements

Potential future developments include:

Implementing indexing strategies to optimize query performance.

Introducing user roles with access control mechanisms.

Expanding reporting capabilities for data analysis and insights.

Developing a web interface for better interaction with the database.

Conclusion

This database project provides YrkesCo with a structured and efficient way to manage student and course information. By adopting a relational database approach, the system ensures data accuracy, reduces errors, and simplifies administrative processes.

