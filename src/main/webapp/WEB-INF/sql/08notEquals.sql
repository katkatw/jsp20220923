-- not equals : <>, != 같지 않다
SELECT * FROM Customers WHERE Country <> 'Mexico';
SELECT * FROM Customers WHERE Country <> 'Germany';
SELECT * FROM Customers WHERE Country != 'Mexico';
SELECT * FROM Customers WHERE Country != 'Germany';

-- Suppliers 테이블에서 국가가 Japan이 아닌 공급자들 조회
SELECT * From Suppliers Where Country <> 'Japan';
SELECT COUNT(*) FROM Suppliers;
SELECT COUNT(*) From Suppliers Where Country <> 'japan';
SELECT COUNT(*) From Suppliers Where Country <> 'JAPAN';

SELECT * FROM Employees WHERE EmployeeID <> 1;  