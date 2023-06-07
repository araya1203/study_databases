-- SELECT column1, column2, ...
-- FROM table_name
-- WHERE condition;
-- ORDER BY column1, column2, ... ASC|DESC;

SELECT *
FROM members
WHERE TELEPHONE LIKE '%'||'0-'||'%';
-- = 대신 'LIKE'//010- 공통이기에 %로 표시//VERTICAL BAR ||사용 

SELECT *
FROM members
WHERE AGE IN(32,28)
ORDER BY ADDRESS_CODE_ID DESC;

SELECT *
FROM members
WHERE AGE BETWEEN 25 AND 35 
ORDER BY GENDER_CODE_ID, AGE DESC;

SELECT *
FROM members
WHERE GENDER_CODE_ID NOT LIKE 'G-01';
-- WHERE GENDER_CODE_ID = 'G-01';

SELECT *
FROM db_members.members ;
-- WHERE NAME ! ='홍길동';

SELECT *
FROM members
WHERE TELEPHONE LIKE '%1%' AND GENDER_CODE_ID = 'G-01';
 
