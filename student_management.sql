-- Student management database

-- Create a database 
CREATE DATABASE UniversityDB;

-- Create a schema 
CREATE SCHEMA university;

-- Create a table for students
CREATE TABLE university.students(
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    birth_date DATE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- Create a table for courses
CREATE TABLE university.courses(
    id SERIAL PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    credits INT
);

-- Create a table for enrollments for a many-to-many relationship
CREATE TABLE university.enrollments(
    id SERIAL PRIMARY KEY,
    student_id INT REFERENCES university.students(id) ,
    course_id INT REFERENCES university.courses(id) ,
    enroll_date DATE NOT NULL
);

-- Display the list of databases
\l
-- Display the list of schemas in the current database
\dn
-- Display the list of tables in the current schema
\dt university.*