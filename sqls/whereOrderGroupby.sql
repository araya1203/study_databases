-- source:https://www.w3schools.com/sql/trysql.asp?filename=trysql_is_null
-- Table : Orders
-- 조건 : EmployeeID가 7, 9 직원에 각각 주문 갯수

SELECT COUNT(*), EmployeeID
FROM Orders
WHERE EmployeeID IN (7, 9)
GROUP BY EmployeeID;

-- Result:
-- Number of Records: 2
-- COUNT(*)	EmployeeID
-- 14	7
-- 6	9


-- Aliases
SELECT COUNT(*) as EMPLOYEE_CNT,T_ORS.EmployeeID
FROM Orders as T_ORS
WHERE T_ORS.EmployeeID IN (7, 9)
GROUP BY T_ORS.EmployeeID;


-- Result:
-- Number of Records: 2
-- EMPLOYEE_CNT	EmployeeID
-- 14	7
-- 6	9


SELECT COUNT(*) AS EMPLOYEE_CNT, T_OUTER_ORS.EmployeeID
FROM (
     SELECT T_INNER_ORS.*
     FROM ORDERS AS T_INNER_ORS
     WHERE T_INNER_ORS.EmployeeID IN (7,9)
    ) AS T_OUTER_ORS
GROUP BY T_OUTER_ORS.EmployeeID;

-- Result:
-- Number of Records: 2
-- EMPLOYEE_CNT	EmployeeID
-- 14	7
-- 6	9
