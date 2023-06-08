-- source: https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_where
-- Table : OrderDetails
-- 조건 : 제품명,가격, 주문 갯수, 고객명 표시
--  (ProductName, Price, Quantity, CustomerName)     


SELECT T_PRO.ProductName,T_PRO.Price, T_ORD.Quantity, T_CT.CustomerName
FROM Orders  AS T_OR
    INNER JOIN Customers AS T_CT
	ON T_OR.CustomerID = T_CT.CustomerID
    INNER JOIN OrderDetails AS T_ORD
    ON T_OR.OrderID = T_ORD.OrderID
	INNER JOIN Products as T_PRO
    ON T_ORD.ProductID = T_PRO.ProductID;



Result:
Number of Records: 518






