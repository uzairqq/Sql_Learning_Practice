/* =========================================================
   Day 02 — WHERE (Filtering Rows) — INTERVIEW Q/A
   Table: Employees (EmployeeID, FullName, Salary, HireDate, Department)
   Format: Question in comment + short answer query.
   ========================================================= */

-- Q1) What does WHERE filter?
-- A: Rows (only rows where the condition is TRUE are returned).
SELECT *
FROM Employees
WHERE Salary >= 60000;

-- Q2) Why is `WHERE Salary = NULL` wrong? What is correct?
-- A: Comparisons with NULL return UNKNOWN; use IS NULL / IS NOT NULL.
SELECT FullName, Salary
FROM Employees
WHERE Salary IS NULL;

SELECT FullName, Salary
FROM Employees
WHERE Salary IS NOT NULL;

-- Q3) Is BETWEEN inclusive or exclusive?
-- A: Inclusive (includes both boundaries).
SELECT FullName, Salary
FROM Employees
WHERE Salary BETWEEN 40000 AND 80000;

-- Q4) What is IN a shortcut for?
-- A: Multiple OR conditions.
SELECT FullName, Salary
FROM Employees
WHERE Salary IN (30000, 50000, 70000);

-- Q5) What does LIKE 'A%' mean?
-- A: FullName starts with 'A'.
SELECT FullName
FROM Employees
WHERE FullName LIKE 'A%';

-- Q6) What does LIKE '%Khan%' mean?
-- A: FullName contains 'Khan' anywhere.
SELECT FullName
FROM Employees
WHERE FullName LIKE '%Khan%';

-- Q7) AND vs OR?
-- A: AND requires both conditions to be TRUE; OR requires at least one condition to be TRUE.
SELECT FullName, Salary, HireDate
FROM Employees
WHERE Salary >= 60000
  AND HireDate >= '2024-01-01';

SELECT FullName, Salary, HireDate
FROM Employees
WHERE Salary >= 60000
   OR HireDate >= '2024-01-01';

-- Q8) What is the equivalent of NOT (Salary >= 60000)?
-- A: Salary < 60000.
SELECT FullName, Salary
FROM Employees
WHERE Salary < 60000;

-- Q9) What is operator precedence in SQL?
-- A: ( ) > NOT > AND > OR.
-- Example: A OR B AND C is interpreted as A OR (B AND C).
SELECT FullName, Salary, Department
FROM Employees
WHERE Department = 'HR'
   OR Salary >= 60000 AND Department = 'IT';

-- Q10) How do parentheses change logic?
-- A: Parentheses explicitly group conditions and can change the result set.
SELECT FullName, Salary, Department
FROM Employees
WHERE (Department = 'HR' OR Salary >= 60000)
  AND Department = 'IT';

-- Q11) Best practice for date filtering?
-- A: Use ISO date format 'YYYY-MM-DD'.
SELECT FullName, HireDate
FROM Employees
WHERE HireDate BETWEEN '2024-01-01' AND '2024-12-31';

-- Q12) What happens when a WHERE condition evaluates to UNKNOWN?
-- A: The row is excluded (WHERE returns only TRUE rows).
SELECT FullName, Salary
FROM Employees
WHERE Salary IS NULL;
