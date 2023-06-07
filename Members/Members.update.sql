-- UPDATE table_name
-- SET column1 = value1, column2 = value2, ...
-- WHERE condition;

UPDATE members
SET AGE = 29
WHERE AGE IN (30,32) ;

SELECT * 
FROM members
ORDER BY AGE ;

