-- SQL Lesson 9: SQL Lesson 9: Queries with expressions

-- 1. List all movies and their combined sales in millions of dollars 

-- My solution: 
SELECT Title, (Domestic_sales + International_sales) / (1000000)  AS combined_sales
FROM Movies
    INNER JOIN Boxoffice
    ON Id = Movie_id

-- Official Solution:
SELECT title, (domestic_sales + international_sales) / 1000000 AS gross_sales_millions
FROM movies
    JOIN boxoffice
    ON movies.id = boxoffice.movie_id;


-- 2. List all movies and their combined sales in millions of dollars 

-- My Solution:
SELECT Title, Rating * 10  AS combined_sales
FROM Movies
    INNER JOIN Boxoffice
    ON Id = Movie_id

-- Official Solution: 
SELECT title, rating * 10 AS rating_percent
FROM movies
    JOIN boxoffice
    ON movies.id = boxoffice.movie_id;


-- 3. List all movies that were released on even number years 

-- My Solution: 
SELECT Title, Year
FROM Movies
    INNER JOIN Boxoffice
    ON Id = Movie_id
WHERE (Year % 2) = 0

-- Official Solution: 
SELECT title, year
FROM movies
WHERE year % 2 = 0;

-- Takeaways:
-- Use of == is unnecessary 
-- (src: https://stackoverflow.com/a/67327540/13069299)
-- As explained by Tim, assignments are not usually done in SQL
-- and as SQL is a declarative language, there is not a 
-- problem of ambiguity.


    