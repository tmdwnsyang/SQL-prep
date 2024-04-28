-- SQL Lesson 8: A short note on NULLs
-- 1. Find the name and role of all employees who have not been assigned to a building

-- My solution:
SELECT Name, Role
FROM Employees
WHERE Building is NULL

-- Official solution: 
SELECT name, role FROM employees
WHERE building IS NULL;

-- 2. Find the names of the buildings that hold no employees

-- My solution:
SELECT *       
FROM Buildings
    LEFT JOIN Employees
    ON Buildings.Building_name = Employees.Building
WHERE name is Null

-- Official solution:
SELECT DISTINCT building_name
FROM buildings
  LEFT JOIN employees
    ON building_name = building
WHERE role IS NULL;

-- Notes: Use DISTINCT to extract only unique building names. 