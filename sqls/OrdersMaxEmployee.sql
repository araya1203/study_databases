-- source: https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_where
-- Table : Orders
-- 조건 : 가장 많이 주문 받은 회사 직원명과 갯수

SELECT MAX(T_COUNT.T_OD) AS MAX_T_OD, T_COUNT.LastName , T_COUNT.FirstName 
FROM 
(SELECT COUNT(T_OD.OrderID)AS T_OD, T_EMP.LastName, T_EMP.firstName
  FROM Employees AS T_EMP
  INNER JOIN Orders AS T_OD
  ON T_EMP.EmployeeID = T_OD.EmployeeID
GROUP BY T_EMP.EmployeeID)
 AS T_COUNT; 



-- Result:
-- Number of Records: 1
-- MAX_T_OD	LastName	firstName
-- 40	Peacock	Margaret


-- 1. 내가 가져와야 할 table을 알아야 한다. 
-- 2. 여기서 중요한 것은 가장 많이 주문 받은 회사 직원명(Employees)과 갯수이다. 
-- 3. Orders와 Employees Join 하고 count를 세어 봐야한다. 그래야 검증이 가능하다. 

--// 수업시간에 같이 한 것//
SELECT MAX(T_INNER.CNT),T_INNER.EmployeeID, T_INNER.LastName
FROM(
SELECT COUNT(*) AS CNT, T_EMPS.EmployeeID, T_EMPS.LastName
FROM Employees AS T_EMPS
     INNER JOIN Orders AS T_ORDS
     on T_EMPS.EmployeeID = T_ORDS.EmployeeID
GROUP BY T_EMPS.EmployeeID      
) AS T_INNER
;

