# sql-challenge

# ERD Diagram code
Employees
-
emp_no INTEGER PK
emp_title_id VARCHAR FK >- Titles.title_id
birth_date DATE
first_name VARCHAR
last_name VARCHAR
sex VARCHAR
hire_date DATE

Salaries
-
emp_no INTEGER FK - Employees.emp_no
salary INTEGER

Titles
- 
title_id PK VARCHAR
title VARCHAR

Dept_Manager
- 
dept_no VARCHAR FK >- Departments.dept_no
emp_no INTEGER FK >- Employees.emp_no

Dept_Emp
-
dept_no VARCHAR FK >- Departments.dept_no
emp_no INTEGER FK >- Employees.emp_no

Departments
-
dept_no VARCHAR PK
dept_name VARCHAR