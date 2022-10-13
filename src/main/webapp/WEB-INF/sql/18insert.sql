SELECT * FROM Employees ORDER BY EmployeeID DESC;
-- INSERT INTO : 테이블에 레코드 추가하는 명령문
INSERT INTO Employees 
(EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUES
(10, 'Son', 'HM', '1999-01-01', 'EmpId10.pic', 'soccer player');

-- 11번째 직원 추가
INSERT INTO Employees
(EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUES
(11, 'Kim', 'IH', '1998-07-15', 'EmpID11.pic', 'nothing');

-- 12번째 직원 추가, notes 컬럼 빼고
INSERT INTO Employees
(EmployeeID, LastName, FirstName, BirthDate, Photo)
VALUES
(12, 'Black', 'Panther', '1970-01-01', 'EmpID12.pic');

-- 13번째 직원 추가, birthDate, note 컬럼 빼고
INSERT INTO Employees
(EmployeeID, LastName, FirstName, Photo)
Values
(13, 'Doe', 'John','EmpID13.pic');

-- 새 직원 추가, EmployeeID컬럼 빼고
INSERT INTO Employees
(LastName, FirstName)
VALUES
('Natasha', 'Romanoff');

INSERT INTO Employees
(LastName, FirstName, Notes)
VALUES
('Kim', 'kildong', '');

INSERT INTO Employees
(LastName, FirstName, Notes)
VALUES
('Kim', 'kildong2', ' ');

-- NULL은 값이 없음

-- Customers 테이블에 레코드 추가
SELECT * FROM Customers ORDER BY 1 DESC;

INSERT INTO Customers
(CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
(92, 'JOONGANG', 'Inhee Kim', 'yeoksam', 'Seoul', 0101, 'South Korea');
-- DESCRIBE : 테이블 구조 조회 , 제약사항(Constraints) 조회;
DESC Customers; 