-- source: https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_where
-- Table : Orders
-- 조건 : 가장 많이 주문 받은 회사 직원명과 갯수


SELECT MAX(T_COUNT.T_OD) AS MAX_T_OD, T_COUNT.LastName , T_COUNT.FirstName 
FROM 
(SELECT COUNT(T_OD.OrderID)AS T_OD, T_EMP.LastName, T_EMP.firstName
  FROM Employees AS T_EMP
  INNER JOIN Orders AS T_OD
  ON T_EMP.EmployeeID = T_OD.EmployeeID
GROUP BY T_EMP.EmployeeID) AS T_COUNT; 


-- Result:
-- Number of Records: 1
-- MAX_T_OD	LastName	firstName
-- 40	Peacock	Margaret


