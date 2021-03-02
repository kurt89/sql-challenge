-- Drop tables if they exist
DROP TABLE titles;
DROP TABLE employees;
DROP TABLE departments;
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE salaries;

-- Create a table of titles
CREATE TABLE titles (
  title_id VARCHAR PRIMARY KEY,
  title VARCHAR
);

SELECT * FROM titles;

-- Create a table of employees
CREATE TABLE employees (
  emp_no INTEGER PRIMARY KEY,
  emp_title_id VARCHAR,
  FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
  birth_date VARCHAR,
  first_name VARCHAR,
  last_name VARCHAR,
  sex VARCHAR,
  hire_date VARCHAR
);

SELECT * FROM employees;

-- Create a table of departments
CREATE TABLE departments (
  dept_no VARCHAR PRIMARY KEY,
  dept_name VARCHAR
);

SELECT * FROM departments;

-- Create an department-employee join table
CREATE TABLE dept_emp (
  emp_no INTEGER,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  dept_no VARCHAR,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp;