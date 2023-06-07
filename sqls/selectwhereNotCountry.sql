-- source: https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_where
-- Table Customers 
-- 조건 Country 가 Germany 와 USA가 아닌 것들
-- NOT IN 연산자는 지정된 값 목록에 속하지 않는 행을 선택하는 데 사용

SELECT * FROM [Customers]
WHERE Country NOT IN ('Germany', 'USA');