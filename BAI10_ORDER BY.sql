--ORDER BY SẤP XẾP KẾT QUẢ TRẢ VỀ
--ASC SẤP XẾP TĂNG DẦN (MẶT ĐỊNH NẾU KO GHI)
--DESC SẤP XẾP GIẢM DẦN

--LIỆT KÊ CÁC NHÀ CUNG CẤP TỪ A-Z
SELECT *
FROM [dbo].[Suppliers]
ORDER BY [CompanyName] ASC;

SELECT *
FROM [dbo].[Suppliers]
ORDER BY [CompanyName];

--LIỆT KÊ GIÁ SẢN PHẨM THEO THỨ TỰ GIẢM DẦN
SELECT *
FROM Products
ORDER BY [UnitPrice] DESC;

--LIỆT KÊ TÊN NHÂN VIÊN HỌ VÀ TÊN ĐỆM TỪ A-Z
SELECT *
FROM Employees
ORDER BY [LastName], [FirstName];

SELECT *
FROM Employees
ORDER BY [LastName] ASC, [FirstName] ASC;

--lẤY SẢN PHẨM CÓ SỐ LƯỢNG LỚN NHẤT TỪ ORDER DETAILS MÀ KHÔNG DÙNG MAX
SELECT TOP 1*
FROM [Order Details]
ORDER BY [Quantity] DESC;

--LIỆT KÊ DANH SÁCH ĐƠN ĐẶT HÀNG ORDERID TRONG ORDERS THEO THỨ TỰ GIẢM DẦN NGÀY ĐẶT HÀNG ORDERDATE
SELECT [OrderID]
FROM Orders
ORDER BY [OrderDate] DESC;

--LIỆT KÊ TÊN, ĐƠN GIÁ, SỐ LƯỢNG TRONG KHO UNITSLNSTOCK TẤT CẢ SẢN PHẨM TRONG PRODUCT, THEO GIẢM DẦN UNITSLMSTOCK
SELECT [ProductName], [UnitPrice], [UnitsInStock]
FROM Products
ORDER BY [UnitsInStock] DESC;