-- SQL Problem Link: https://leetcode.com/problems/big-countries/description/

-- 1. <Problem statement>

-- My Solution: 
SELECT name, population, area
FROM World
WHERE area >= 3000000 or population >= 25000000

-- Official Solution:

