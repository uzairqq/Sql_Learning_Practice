/*
01_select_basics/interview.sql
Topic: SELECT Basics (Interview Drill) — SQL Server / T-SQL
Assumed table: Employees(emp_id, name, dept_id, salary, hire_date)

Rule: Questions are commented. Answers are included below each question.
*/

-- IQ1) What does SELECT do?
-- Answer: SELECT is used to read/retrieve data from a database table.

-- IQ2) What are the items written after SELECT (e.g., name, salary) called?
-- Answer: Columns names.

-- IQ3) What does FROM Employees mean?
-- Answer: It means fetch data from the Employees table.

-- IQ4) What does * mean in SELECT * ?
-- Answer: * (star) means all columns and all rows.

-- IQ5) What is the purpose of SELECT * ?
-- Answer: It returns all columns and (by default) all rows from the table.

-- IQ6) Why do we avoid SELECT * in real projects? Write 2 reasons.
-- Answer:
-- 1) Performance/response time: unnecessary columns are fetched (more data transfer).
-- 2) Only required/selected columns are needed; avoid extra output / maintainability.

-- IQ7) What is an alias (AS) in SQL?
-- Answer: A nickname/better readable name for an output column.

-- IQ8) Is AS required for aliasing (required or optional)?
-- Answer: Optional (but improves readability).

-- IQ9) Write an example: alias WITHOUT AS (name -> EmployeeName).
-- Answer:
SELECT name EmployeeName
FROM Employees;

-- IQ10) Why do we write salary * 12 in SELECT?
-- Answer: To calculate annual salary (salary * 12) as a computed output value.

-- IQ11) If you write: SELECT salary * 12 FROM Employees; (no alias)
-- Where will the result appear in the output?
-- Answer: It appears as a new separate column (often unnamed like “No column name”).

-- IQ12) Write a query to calculate annual salary (salary * 12) with alias AnnualSalary.
-- Answer:
SELECT name, salary, salary * 12 AS AnnualSalary
FROM Employees;

-- IQ13) Why do we use CAST(salary AS varchar(20)) in concatenation?
-- Answer:- Because salary is numeric (int/decimal) and must be converted to text to concatenate with strings.

-- IQ14) Write a query to create a column Info = "name - salary" (SQL Server style).
-- Answer:
SELECT name + ' - ' + CAST(salary AS varchar(20)) AS Info
FROM Employees;

-- IQ15) Why do we get all rows by default in: SELECT ... FROM Employees; ?
-- Answer:
-- Because no WHERE condition/filter is applied.
