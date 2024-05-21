-- SQL Problem Link: https://leetcode.com/problems/article-views-i/

-- 1. <Problem statement>

-- My Solution:

SELECT DISTINCT author_id as id -- Use 'id' alias for new table col
FROM Views
WHERE author_id = viewer_id
    ORDER BY id ASC             -- Order by the new table alias

-- Official Solution:
SELECT 
    DISTINCT author_id as id
FROM 
    Views
WHERE 
    author_id = viewer_id
ORDER BY id ASC
