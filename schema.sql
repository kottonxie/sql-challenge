-- DROP TABLES
DROP TABLE IF EXISTS Employees CASCADE;
DROP TABLE IF EXISTS Titles CASCADE ;
DROP TABLE IF EXISTS Salaries CASCADE;
DROP TABLE IF EXISTS Dept_Manager CASCADE;
DROP TABLE IF EXISTS Dept_Emp CASCADE;
DROP TABLE IF EXISTS Departments CASCADE;

-- CREATE TABLES TO HOUSE CSV DATA

CREATE TABLE Employees (
emp_no INTEGER NOT NULL PRIMARY KEY,
emp_title_id VARCHAR(5) NOT NULL,
FOREIGN KEY (emp_title_id) REFERENCES Titles (title_id),
birth_date DATE NOT NULL,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
sex VARCHAR(1) NOT NULL,
hire_date DATE NOT NULL
)
;

CREATE TABLE Titles (
title_id VARCHAR(5) NOT NULL PRIMARY KEY,
title VARCHAR(30) NOT NULL
)
;

CREATE TABLE Salaries (
emp_no INTEGER NOT NULL PRIMARY KEY,
FOREIGN KEY (emp_no) REFERENCES Employees (emp_no),
salary INTEGER NOT NULL
)
;


CREATE TABLE Dept_Manager (
dept_no VARCHAR(4) NOT NULL,
FOREIGN KEY (dept_no) REFERENCES Departments (dept_no),
emp_no INTEGER NOT NULL PRIMARY KEY,
FOREIGN KEY (emp_no) REFERENCES Employees (emp_no)
)
;

CREATE TABLE Dept_Emp (
emp_no INTEGER NOT NULL PRIMARY KEY,
FOREIGN KEY (emp_no) REFERENCES Employees (emp_no),
dept_no VARCHAR(4) NOT NULL,
FOREIGN KEY (dept_no) REFERENCES Departments (dept_no)
)
;

CREATE TABLE Departments (
dept_no VARCHAR NOT NULL PRIMARY KEY,
dept_name VARCHAR NOT NULL
)
;