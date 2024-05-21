-- SQL Lesson 10: Queries with aggregates (Pt. 1)

-- 1. Find the longest time that an employee has been at the studio 

-- My Solution: 
SELECT Max(Years_employed)
FROM Employees

-- Official Solution:
SELECT MAX(years_employed) as Max_years_employed
FROM employees;

-- 2. For each role, find the average number of years employed by employees in that role

-- My Solution:
SELECT *, AVG(Years_employed)
FROM Employees
GROUP BY Role

-- Official Solution: 
SELECT role, AVG(years_employed) as Average_years_employed
FROM employees
GROUP BY role;


-- 3. Find the total number of employee years worked in each building

-- My Solution: 
SELECT *, SUM(Years_employed)
FROM Employees
GROUP BY Building

-- Official Solution: 
SELECT building, SUM(years_employed) as Total_years_employed
FROM employees
GROUP BY building;

-- Takeaways:
-- Rename the tables as you generate a new one with different constraints