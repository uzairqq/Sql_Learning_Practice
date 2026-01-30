# 01 — SELECT Basics (Zero Level)

## What does SELECT do?

`SELECT` is used to **read/retrieve data** from a database table.

**Cross-check Q1:** What are the items written after `SELECT` (e.g., `name, salary`) called?  
✅ **Answer:** Columns

---

## Basic query syntax

General syntax:

    SELECT column_list
    FROM table_name;

Example:

    SELECT name, salary
    FROM Employees;

**Cross-check Q2:** What does `FROM Employees` mean?  
✅ **Answer:** Fetch data from the **Employees** table.

---

## SELECT \* (all columns)

Example:

    SELECT *
    FROM Employees;

Meaning:

- `*` means **all columns**
- By default, it returns **all rows** (until you use `WHERE` later)

**Cross-check Q3:** What does `*` mean?  
✅ **Answer:** All columns

---

## Why SELECT \* is often avoided (Interview point)

Two main reasons:

1. **Performance / response time / bandwidth:** fetches unnecessary columns, especially in large tables.
2. **Unnecessary data / maintainability:** large tables have many columns; you usually need selected columns only. Schema changes can also make output unpredictable.

**Cross-check Q4:** Give 2 reasons to avoid `SELECT *`  
✅ **Answer:** (1) performance (2) unnecessary columns / maintainability

---

## Alias (AS)

Alias = a **nickname / better name** for an output column.

With `AS`:

    SELECT name AS EmployeeName
    FROM Employees;

`AS` is optional (without `AS`):

    SELECT name EmployeeName
    FROM Employees;

**Cross-check Q5:** Is `AS` required?  
✅ **Answer:** Optional (but improves readability)

**Strict correction we did:**  
When asked to write alias **without `AS`**, the correct query is:

    SELECT name EmployeeName
    FROM Employees;

---

## Expressions (calculations) inside SELECT

You can calculate values in `SELECT`:

    SELECT name, salary, salary * 12 AS AnnualSalary
    FROM Employees;

**Cross-check Q6:** Why write `salary * 12`?  
✅ **Answer:** To calculate **annual salary** (monthly salary × 12)

**Cross-check Q7 (trap):** If you don’t give an alias, where will `salary * 12` appear?  
✅ **Answer:** It appears as a **new separate column** with no proper name (e.g., “No column name” in SQL Server).  
❌ It does **not** replace the `salary` column.

---

## Quick Recap

- `SELECT` = read data
- `FROM` = source table
- `*` = all columns
- Alias (`AS`) = output nickname (`AS` optional)
- Expressions allowed (e.g., `salary * 12`)
