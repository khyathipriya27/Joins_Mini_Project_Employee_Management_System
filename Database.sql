
CREATE DATABASE hr_data;
USE hr_data;

/* CREATING TABLES */
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    department_id INT,
    designation VARCHAR(100),
    joining_date DATE,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

CREATE TABLE salaries (
    employee_id INT PRIMARY KEY,
    salary DECIMAL(10, 2),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

/* INSERTING VALUES */

/* DEPARTMENTS */
INSERT INTO departments (department_id, department_name) VALUES
(1, 'Finance'),
(2, 'Marketing'),
(3, 'HR');

/* EMPLOYEES */
INSERT INTO employees (employee_id, name, department_id, designation, joining_date) VALUES
(101, 'Alice Smith', 1, 'Analyst', '2023-09-12'),
(102, 'Bob Johnson', 2, 'Manager', '2022-06-15'),
(103, 'Carol White', 1, 'Sr. Analyst', '2023-11-01'),
(104, 'David Clark', 3, 'Director', '2021-01-03'),
(105, 'Eva Brown', 2, 'Analyst', '2024-02-05');

/* SALARIES */
INSERT INTO salaries (employee_id, salary) VALUES
(101, 60000),
(102, 95000),
(103, 75000),
(104, 120000),
(105, 58000);
