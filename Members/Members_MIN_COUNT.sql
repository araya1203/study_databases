-- SELECT MIN(column_name)
-- FROM table_name
-- WHERE condition;


-- 성별 당 COUNT는 각각 몇명인지?
SELECT COUNT(*), GENDER_CODE_ID, MIN(NAME)
FROM members 
GROUP BY GENDER_CODE_ID 
;

-- COUNT(*) - 각 그룹에 속한 레코드의 개수를 세어줌. 각 성별 코드(GENDER_CODE_ID)별로 해당 그룹에 속한 회원의 수를 나타냄
-- GENDER_CODE_ID - 그룹화한 성별 코드를 나타냄
-- MIN(NAME) - 각 그룹에 속한 회원 이름 중에서 가장 작은(알파벳순으로 가장 앞에 있는) 이름을 선택함.

SELECT COUNT(*)
FROM members 
WHERE GENDER_CODE_ID = 'G-04'
GROUP BY MEMBERS_ID 
;


