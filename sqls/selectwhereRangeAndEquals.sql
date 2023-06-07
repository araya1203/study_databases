-- Table Customers 
-- 조건 : CustomerID가 50에서 89이고, City가 Berlin인 고객
--BETWEEN 연산자는 지정된 범위 내에 있는 값을 선택하는 데 사용 
--AND 연산자는 여러 조건을 함께 사용할 때 조건을 결합하는 데 사용

SELECT *
FROM Customers
WHERE CustomerID BETWEEN 50 AND 89
AND City = 'Berlin';