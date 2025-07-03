-- views_task.sql for SQL Developer Internship Task 7: Creating Views (FINAL, fully compatible with DB Browser for SQLite)

-- Create employee table with sample data
DROP TABLE IF EXISTS employee;
CREATE TABLE employee (
    emp_id INTEGER PRIMARY KEY,
    emp_name TEXT,
    department TEXT,
    salary INTEGER
);

INSERT INTO employee (emp_id, emp_name, department, salary) VALUES
(101, 'Alice', 'HR', 55000),
(102, 'Bob', 'Engineering', 75000),
(103, 'Charlie', 'Marketing', 62000),
(104, 'David', 'Engineering', 80000),
(105, 'Eve', 'HR', 48000);

-- Drop the view if it already exists (SQLite does not support IF EXISTS with DROP VIEW directly)
DROP VIEW IF EXISTS high_salary_employees;

-- Create view for employees with salary > 60000
CREATE VIEW high_salary_employees AS
SELECT emp_id, emp_name, department, salary
FROM employee
WHERE salary > 60000;

-- Select data from the view
SELECT * FROM high_salary_employees;