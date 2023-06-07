-- SELECT MIN(column_name)
-- FROM table_name
-- WHERE condition;





-- 성별 당 COUNT는 각각 몇명인지?
SELECT COUNT(*), GENDER_CODE_ID, MIN(NAME)
FROM members 
GROUP BY GENDER_CODE_ID 
;

SELECT COUNT(*)
FROM members 
WHERE GENDER_CODE_ID = 'G-04'
GROUP BY MEMBERS_ID 
;


