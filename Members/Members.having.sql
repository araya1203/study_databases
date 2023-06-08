-- //having 

-- SELECT column_name(s)
-- FROM table_name
-- WHERE condition
-- GROUP BY column_name(s)
-- HAVING condition
-- ORDER BY column_name(s);

SELECT count(T_MEMB.AGE) as CNT_AGE, T_MEMB.AGE
FROM members as T_MEMB
group by T_MEMB.AGE
HAVING ;

SELECT T_MEMB.AGE
FROM members as T_MEMB
group by T_MEMB.AGE;

