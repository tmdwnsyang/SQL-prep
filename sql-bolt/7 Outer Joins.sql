-- SQL Lesson 7: OUTER JOINs
-- 1. Find the list of all buildings that have employees

-- My solution: 
SELECT DISTINCT Building
FROM Employees

-- Official Solution: 
SELECT DISTINCT building FROM employees;

-- 2. Find the list of all buildings and their capacity

-- My solution:
SELECT Building_name, Capacity
FROM Buildings

-- Official Solution:
SELECT * FROM buildings;

-- 3. List all buildings and the distinct employee roles in each building (including empty buildings)

-- My solution:
SELECT DISTINCT Building_name, Role -- Returns unique pairs of 
FROM Buildings                      -- the two columns
    LEFT JOIN Employees
        ON Building_name = Building 

-- Official Solution:
SELECT DISTINCT building_name, role 
FROM buildings 
  LEFT JOIN employees
    ON building_name = building;

-- Takeaways
-- You can use the * wild card to select all columns as needed. 
-- DISTINCT enables selection of unique pairs of selected columns
