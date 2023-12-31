﻿--VIẾT CÂU LỆNH TÌM  TRONG PRODUCTS
SELECT MIN([UnitPrice]) AS [GIÁ THẤP NHẤT]
FROM [dbo].[Products];

--VIẾT CÂU LỆNH TÌM NGÀY ĐẶT HÀNG GẦN ĐÂY NHẤT TỪ ORDERS, NGÀY GẦN ĐÂY NHẤT LÀ NGÀY LỚN NHẤT =))
SELECT MAX([OrderDate]) AS [NGÀY ĐẶT HÀNG GẦN ĐÂY NHẤT]
FROM Orders;

--VIẾT CÂU LỆNH PRODUCT CÓ TỒN KHO LỚN NHẤT UNITSLNSTOCK
SELECT MAX([UnitsInStock]) AS [PRODUCT CÓ TỒN KHO LỚN NHẤT]
FROM [dbo].[Products];

--VIẾT CÂU LỆNH CHO BIẾT NGÀY SINH NHÂN VIÊN LỚN TUỔI NHẤT
SELECT MIN([BirthDate]) AS [NGÀY SINH NHÂN VIÊN LỚN TUỔI NHẤT]
FROM Employees;