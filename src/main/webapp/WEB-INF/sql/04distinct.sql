-- distinct
SELECT * FROM Customers;
SELECT Country From Customers; -- 91개
SELECT DISTINCT Country From Customers; -- 21개
SELECT DISTINCT City, Country FROM Customers; -- 69개

-- Suppliers 테이블의 Country  컬럼을 중복 제거해서 조회
SELECT DISTINCT Country From Suppliers;
-- Suppliers 테이블의 Country  컬럼을 중복 제거하지 않고 조회
SELECT Country From Suppliers;
SELECT DISTINCT Country FROM Suppliers;