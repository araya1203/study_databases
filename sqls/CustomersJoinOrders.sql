-- source: https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_where
-- Table : Customers, Orders
-- 조건 : CustomerName별로 주문 갯수 표시
-- 연결 키는 각자 찾기

SELECT COUNT(*) AS OrderCount, T_CTM.CustomerName
FROM Customers AS T_CTM
  INNER JOIN Orders AS T_OD
  ON T_CTM.CustomerID = T_OD.CustomerID
GROUP BY T_CTM.CustomerName;

-- Result: Number of Records: 74