--Lấy ra 5 dòng đầu tiên trong customers
SELECT TOP 5 *
FROM Customers;

--Lấy ra 30% thông tin nhân viên
SELECT TOP 30 PERCENT *
FROM Employees;

--Lấy ra các đơn hàng với mã khách hàng không trùng, chỉ lấy 5 dòng đầu
SELECT DISTINCT TOP 5 [CustomerID]
FROM [dbo].[Orders];

--Lấy ra các sản phẩm có mã thể loại không trùng lặp và chỉ lấy 3 dòng đầu
SELECT DISTINCT TOP 3 [ProductID]
FROM [dbo].[Products];