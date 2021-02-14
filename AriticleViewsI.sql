-- Table: Views
-- 
-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | article_id    | int     |
-- | author_id     | int     |
-- | viewer_id     | int     |
-- | view_date     | date    |
-- +---------------+---------+
-- There is no primary key for this table, it may have duplicate rows.
-- Each row of this table indicates that some viewer viewed an article (written by some author) on some date. 
-- Note that equal author_id and viewer_id indicate the same person.
--  
-- 
-- Write an SQL query to find all the authors that viewed at least one of their own articles, sorted in ascending order by their id.



# author_id => author_id = viewer_id order by id asc

select distinct 
    author_id as id
from    
    views
where 
    author_id = viewer_id 
order by 1 asc