-- source: https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_where
-- Table : Categories
-- 조건 : CategoryName가 Produce, Beverages 제품에 갯수 각각 표시
-- where 완료 후 가상 Table로 groupby 진행
-- 예) SELECT COUNT(*) AS EMPLOYEE_CNT, T_OUTER_ORS.EmployeeID
--           FROM (
--                  SELECT T_INNER_ORS.*
--                  FROM ORDERS AS T_INNER_ORS
--                  WHERE T_INNER_ORS.EmployeeID IN (7,9)
--                ) AS T_OUTER_ORS
--                GROUP BY T_OUTER_ORS.EmployeeID;

SELECT COUNT(*) AS ProductCount, T_OUTER_CAT.CategoryName
FROM (
  SELECT T_INNER_CAT.*
  FROM Categories AS T_INNER_CAT
  WHERE T_INNER_CAT.CategoryName IN ('Produce', 'Beverages')
) AS T_OUTER_CAT
GROUP BY T_OUTER_CAT.CategoryName;

-- Result:
-- Number of Records: 2
-- ProductCount	CategoryName
-- 1	Beverages
-- 1	Produce




