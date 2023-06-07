-- SELECT column1, column2, ...
-- FROM table_name
-- WHERE condition;
-- ORDER BY column1, column2, ... ASC|DESC;

SELECT *
FROM members
WHERE TELEPHONE LIKE '%'||'0-'||'%';