--CHO BIẾT MỖI KHÁCH HÀNG ĐÃ ĐẶT BAO NHIÊU ĐƠN HÀNG
SELECT [CustomerID], COUNT([OrderID]) AS SO_DON_HANG
FROM [dbo].[Orders]
GROUP BY [CustomerID]

--TÍNH DƠN GIÁ TRUNG BÌNH MỖI SẢN PHẨM THEO MỖI NHÀ CUNG CẤP
SELECT SupplierID, AVG([UnitPrice])
FROM Products
GROUP BY [SupplierID]

--MỖI THỂ LOẠI CÓ TỔNG BAO NHIÊU SẢN PHẨM
SELECT [CategoryID], SUM([UnitsInStock])
FROM Products
GROUP BY [CategoryID]

--CHO BIẾT GIÁ VẬN CHUYỂN THẤP NHẤT VÀ LỚN NHẤT CỦA CÁC ĐƠN HÀNG  THEO TỪNG THÀNH PHỐ VÀ QUỐC GIA
SELECT [ShipCountry], [ShipCity], MIN([Freight]) AS MIN, MAX([Freight]) AS MAX
FROM Orders
GROUP BY [ShipCountry], [ShipCity]
ORDER BY [ShipCountry] ASC

--THỐNG KÊ SỐ NHÂN VIÊN TỪNG QUỐC GIA
SELECT [Country], COUNT([EmployeeID]) AS COUNT_Employees
FROM Employees
GROUP BY [Country]