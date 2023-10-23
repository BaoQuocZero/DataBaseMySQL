--LỌC TẤT CẢ ĐƠN HÀNG ĐẾN GERMANY, UK, BRAZIL VÀ NGƯỢC LẠI CÁC ĐƠN HÀNG KHÔNG GIAO ĐẾN CÁC QUÓC GIA NÀY
SELECT [ShipCountry]
FROM [dbo].[Orders]
WHERE [ShipCountry] IN ('Germany','UK','Brazil')

SELECT [ShipCountry]
FROM [dbo].[Orders]
WHERE [ShipCountry] NOT IN ('Germany','UK','Brazil')

--LẤY SẢN PHẨM CÓ MÃ THỂ LOẠI KHÁC 2, 3, 4
SELECT *
FROM Products
WHERE [CategoryID] NOT IN (2,3,4)

--LIỆT KÊ TẤT CẢ NHÂN VIÊN NỮ VÀ KHÔNG PHẢI NỮ
SELECT *
FROM Employees
WHERE [TitleOfCourtesy] IN ('Ms.','Mrs.')

SELECT *
FROM Employees
WHERE [TitleOfCourtesy] NOT IN ('Ms.','Mrs.')

--CÁC KHÁC HÀNG ĐẾN TỪ BERLIN, LONDON, WARSZAWA
SELECT *
FROM Customers
WHERE [City] IN ('Berlin', 'London', 'Warszawa')