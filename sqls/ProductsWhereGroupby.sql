-- source: https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_where
-- Table : Products
-- 조건 : CategoryID 가 10개 이상

SELECT *
FROM (
  SELECT COUNT(CategoryID) AS CNT_CategoryID, CategoryID
  FROM Products
  GROUP BY CategoryID
) AS T_INNER_Products
WHERE CNT_CategoryID >= 10;


-- Result:
-- Number of Records: 5
-- CNT_CategoryID	CategoryID
-- 12	1
-- 12	2
-- 13	3
-- 10	4
-- 12	8

-- // reference //
-- SELECT COUNT(T_Products.CategoryID) AS CNT_CategoryID, T_Products.CategoryID
-- FROM Products AS T_Products
-- GROUP BY T_Products.CategoryID
-- HAVING COUNT(T_Products.CategoryID) >= 10;
