-- 내장 함수들
USE w3schools;

-- MIN : 가장 작은 값 
SELECT * FROM Products ORDER BY Price;
SELECT MIN(Price) FROM Products;

-- MAX : 가장 큰 값
SELECT * FROM Products ORDER BY Price DESC;
SELECT MAX(Price) FROM Products;

SELECT MIN(CustomerName) FROM Customers;
SELECT MAX(CustomerName) FROM Customers;
SELECT * FROM Customers ORDER BY CustomerName DESC;

-- 직원 생일 중 가장 먼저 태어난 사람의 생일
-- 가장 어린 사람의 생일 
SELECT * FROM Employees ORDER BY BirthDate;
SELECT MIN(BirthDate) FROM Employees;
SELECT MAX(BirthDate) FROM Employees;

-- Count : 몇 개의 데이터가 있는지 리턴
SELECT * FROM Customers;
SELECT COUNT(*) FROM Customers;
SELECT COUNT(CustomerName) FROM Customers;
SELECT COUNT(ContactName) FROM Customers;
-- Count 함수 NULL은 생략
INSERT INTO Customers (ContactName, City, Country)
VALUES ('captain', 'ny', 'USA');

-- 100.00 달러가 넘는 상품의 수 Products
SELECT * FROM Products ORDER BY Price DESC;
SELECT COUNT(*) FROM Products WHERE Price >= 100.00;
-- 60년대 (60~69)에 태어난 직원의 수
SELECT * FROM Employees ORDER BY BirthDate DESC;
SELECT COUNT(*) 
FROM Employees 
WHERE  BirthDate BETWEEN '1960-01-01' AND '1969-12-31';

-- AVG : 평균	 // null 밸류는 무시된다
SELECT * FROM Products;
SELECT AVG(Price) FROM Products;
-- NULL 데이터 무시
INSERT INTO Products (ProductName) VALUES ('Kimchi');

-- 평균 주문 수량
SELECT * FROM OrderDetails;
SELECT AVG(Quantity) FROM OrderDetails;

-- SUM : 합계
SELECT * FROM Products;
SELECT SUM(Price) FROM Products;

-- OrderDetails 에서
-- 총 주문 수량 조회
SELECT * FROM OrderDetails;
SELECT SUM(Quantity) FROM OrderDetails;