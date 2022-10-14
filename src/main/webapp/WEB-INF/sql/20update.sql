-- UPDATE 레코드(row)의 필드(column)들을 수정
UPDATE Customers
SET ContactName = 'Alfred Schmidt'
WHERE CustomerID = 1;

SELECT * FROM Customers WHERE CustomerID = 1;

UPDATE Customers
SET ContactName = 'Maria Schmidt',
	City = 'Frankfurt'
WHERE CustomerID = 1;

SELECT * FROM Customers ORDER BY 1 DESC;
-- 92, 93번 고객의 고객명, 계약자명, 주소, 도시, 우편번호, 국가 
-- 수정하는 쿼리 작성/실행
UPDATE Customers
SET CustomerName = 'Billy''s', 
	ContactName = 'Nathan Keinz', 
    Address = '53 Jefrey Rd.', 
    City = 'Nowhere', 
    PostalCode = '1212', 
    Country = 'USA' 
WHERE CustomerID = 92;

UPDATE Customers
SET CustomerName = 'Fortune Hart', 
	ContactName = 'Elaine Johns', 
    Address = '471 Andrea''s Avenue', 
    City = 'Heaven', 
    PostalCode = '777', 
Country = 'Earth' 
WHERE CustomerID = 93;