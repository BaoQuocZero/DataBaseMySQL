﻿--TÌM TẤT CẢ NHÂN VIÊN Ở LONDON SẤP XẾP THEO LASTNAME
SELECT *
FROM Employees
WHERE [City] = 'LONDON'
ORDER BY [LastName] ASC

--LIỆT KÊ TẤT CẢ ĐƠN HÀNG BỊ GIAO MUỘN, NGÀY GIAO REQUIREDDATE VÀ NGÀY GIAO THỰC TẾ SHIPPEDDATE
--GIAO MUỘN REQUIREDDATE < SHIPPEDDATE
SELECT *
FROM [dbo].[Orders]
WHERE [RequiredDate]<[ShippedDate]

--LẤY TẤT CẢ ĐƠN HÀNG ĐƯỢC GIẢM GIÁ NHIỀU HƠN 10% DISCOUNT > 0.1
SELECT *
FROM [Order Details]
WHERE [Discount] > 0.1

--CÁC ĐƠN ĐƯỢC GỬI ĐẾN FRANCE
SELECT *
FROM Orders
WHERE [ShipCountry] = 'France'