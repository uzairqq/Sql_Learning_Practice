#Task 1
#Show all employee data from the employee_demographics table.

Select * 
FROM employee_demographics;

#Task 2
#Show only the first_name, last_name, and salary columns from the employee_salary table.

Select first_name,last_name,salary 
FROM employee_salary;

#Task 3
#Show only the department_name column from the parks_departments table.

Select department_name 
FROM parks_departments;

#Task 4
#From the employee_salary table, show first_name, last_name, salary, and also calculate a new column showing 10% bonus of salary.

SELECT first_name,last_name,salary,salary * 0.10 AS Bonus_Salary,(salary*0.10)+salary AS Salary_After_Bonus
FROM employee_salary;


#Task 5
#From the employee_demographics table, show first_name, age, and also calculate a new column showing the age of each employee after 10 years.

Select first_name,age,age+10 AS Age_After_Ten_Years 
FROM employee_demographics;


#Task 6
#From the employee_demographics table, show all the unique genders.

Select distinct gender
FROM employee_demographics;

#Task 7
#From the employee_salary table, show all the unique occupations.

Select distinct occupation
FROM employee_salary;

#Task 8
#From the employee_salary table, show all the unique dept_id values.
SELECT distinct dept_id 
FROM employee_salary;

#Task 9
#From the employee_salary table, show all the unique combinations of occupation and salary.

SELECT distinct occupation,salary 
FROM employee_salary;


#Task 10
#From the employee_demographics table, show all the unique combinations of first_name and last_name.

SELECT DISTINCT first_name,last_name
FROM employee_demographics;

#Task 11
#Compare the results of these two queries on the employee_salary table:

SELECT dept_id FROM employee_salary;

SELECT DISTINCT dept_id FROM employee_salary;


#Task 12
#From the employee_demographics table, show all the unique birth years of employees (extract year from birth_date).

SELECT distinct year(birth_date) 
FROM employee_demographics;

#✅ Task 13
#From the employee_demographics table, show all the unique first_name values.

SELECT distinct first_name 
from employee_demographics; 

