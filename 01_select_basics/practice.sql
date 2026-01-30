/* 
01_select_basics/practice.sql
Topic: SELECT Basics (SQL Server / T-SQL)
Assumed table: Employees(emp_id, name, dept_id, salary, hire_date)
*/

-- Q1) Select all columns from Employees
SELECT * 
FROM Employees;

-- Q2) Select only emp_id and name
SELECT emp_id, name
FROM Employees;

-- Q2.1) Same as Q2 but change column order (name first)
SELECT name, emp_id
FROM Employees;

-- Q3) Select name with alias EmployeeName (using AS)
SELECT name AS EmployeeName
FROM Employees;

-- Q3.1) Same alias but WITHOUT AS (AS is optional)
SELECT name EmployeeName
FROM Employees;

-- Q4) Select name, salary, and salary*12 as AnnualSalary
SELECT name, salary, salary * 12 AS AnnualSalary
FROM Employees;

-- Q5) Create Info column: "name - salary" (concat + CAST)
SELECT name + ' - ' + CAST(salary AS varchar(20)) AS Info
FROM Employees;
