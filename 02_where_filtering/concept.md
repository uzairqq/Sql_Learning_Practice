# Day 02 — WHERE (Filtering Rows)

## Concept 1: WHERE filters rows (TRUE rows only)

- `WHERE` is used to **filter rows**.
- A row is returned only when the condition evaluates to **TRUE**.
- If the condition evaluates to **FALSE** or **UNKNOWN** (often due to `NULL`), the row is **not returned**.

Example:

```sql
SELECT FullName, Salary
FROM Employees
WHERE Salary >= 60000;
```
