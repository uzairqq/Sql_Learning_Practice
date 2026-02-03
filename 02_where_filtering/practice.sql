/* =========================================================
   Day 02 — WHERE (Filtering Rows) — PRACTICE
   Table: Employees (EmployeeID, FullName, Salary, HireDate, Department)
   ========================================================= */

-- Q1) Show employees with Salary >= 60000
SELECT FullName, Salary
FROM Employees
WHERE Salary >= 60000;

-- Q2) Show employees with Salary < 60000
SELECT FullName, Salary
FROM Employees
WHERE Salary < 60000;

-- Q3) Show employees with Salary = 60000
SELECT FullName, Salary
FROM Employees
WHERE Salary = 60000;

-- Q4) Show employees with Salary between 40000 and 80000 (inclusive)
SELECT FullName, Salary
FROM Employees
WHERE Salary BETWEEN 40000 AND 80000;

-- Q5) Show employees with Salary in (30000, 50000, 70000)
SELECT FullName, Salary
FROM Employees
WHERE Salary IN (30000, 50000, 70000);

-- Q6) Show employees hired on/after 2024-01-01
SELECT FullName, HireDate
FROM Employees
WHERE HireDate >= '2024-01-01';

-- Q7) Salary >= 60000 AND HireDate >= 2024-01-01
SELECT FullName, Salary, HireDate
FROM Employees
WHERE Salary >= 60000
  AND HireDate >= '2024-01-01';

-- Q8) Salary >= 60000 OR HireDate >= 2024-01-01
SELECT FullName, Salary, HireDate
FROM Employees
WHERE Salary >= 60000
   OR HireDate >= '2024-01-01';

-- Q9) FullName starts with 'A'
SELECT FullName
FROM Employees
WHERE FullName LIKE 'A%';

-- Q10) Salary IS NULL
SELECT FullName, Salary
FROM Employees
WHERE Salary IS NULL;

-- Q11) Salary IS NOT NULL
SELECT FullName, Salary
FROM Employees
WHERE Salary IS NOT NULL;

-- Q12) FullName does NOT start with 'A'
SELECT FullName
FROM Employees
WHERE FullName NOT LIKE 'A%';

-- Q13) Salary NOT between 40000 and 80000
SELECT FullName, Salary
FROM Employees
WHERE Salary NOT BETWEEN 40000 AND 80000;

-- Q14) Salary NOT IN list (exclude salaries)
SELECT FullName, Salary
FROM Employees
WHERE Salary NOT IN (30000, 50000, 70000);

-- Q15) HireDate before 2024-01-01
SELECT FullName
FROM Employees
WHERE HireDate < '2024-01-01';

-- Q16) HireDate between 2024-01-01 and 2024-12-31 (inclusive)
SELECT FullName, HireDate
FROM Employees
WHERE HireDate BETWEEN '2024-01-01' AND '2024-12-31';

-- Q17) Salary < 60000 AND Department = 'IT'
SELECT FullName, Salary
FROM Employees
WHERE Salary < 60000
  AND Department = 'IT';

-- Q18) Salary IS NOT NULL AND Salary >= 60000
SELECT FullName, Salary
FROM Employees
WHERE Salary IS NOT NULL
  AND Salary >= 60000;

-- Q19) Parentheses practice:
-- (Department='HR' OR Salary>=60000) AND Department='IT'
SELECT FullName, Salary, Department
FROM Employees
WHERE (Department = 'HR' OR Salary >= 60000)
  AND Department = 'IT';
