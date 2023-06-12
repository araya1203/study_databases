SELECT * FROM db_cars.factorys;

SELECT COUNT(*) AS CNT FROM factorys;

-- 컬럼 추가 
INSERT INTO factorys
(COMPANY_ID, COMPANY) 
VALUE 
('CAR-01', 'AUDI');

-- DATA 수정
UPDATE factorys
SET COMPANY = '패러리'
WHERE COMPANY_ID = 'CAR-01';

-- 칼럼 삭제 
DELETE FROM factorys
WHERE COMPANY_ID = 'CAR-01';