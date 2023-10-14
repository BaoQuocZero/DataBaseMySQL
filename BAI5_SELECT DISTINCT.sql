-- SELECT DISTINCT là câu lệnh láy ra dữ liệu khác nhau mà không bị trùng lập

-- Viết câu lệnh in ra tên quốc gia [Country] khác nhau
-- Từ bảng khách hàng [Customers] mà không bị trùng lập
SELECT DISTINCT [Country]
FROM [dbo].[Customers];

--Viết câu lệnh in ra mã bưu điện [PostalCode] khác nhau
--Từ bảng nhà cung cấp [Suppliers] mà không bị trùng lập
SELECT DISTINCT [PostalCode]
FROM [dbo].[Suppliers];

--Viết câu lệnh in họ nhân viên lastName
--và cách gọi danh hiệu lịch sự TitleOfCourtesy của nhân viên từ bảng Employyees

SELECT DISTINCT [LastName], [TitleOfCourtesy]
FROM [dbo].[Employees]

SELECT DISTINCT [TitleOfCourtesy]
FROM [dbo].[Employees]

--Viết câu lệnh in mã đơn vị vận chuyển ShipVia kacs nhau của các đơn hàng Orders
SELECT DISTINCT [ShipVia]
FROM [dbo].[Orders];