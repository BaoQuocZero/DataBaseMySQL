﻿--TỪ ORDER DETAIL LIỆT KE ĐƠN ĐẶT HÀNG CÓ UNITPRICE 100-200
SELECT *
FROM [Order Details]
WHERE [UnitPrice] BETWEEN 100 AND 200

--ĐƯA RA ĐƠN HÀNG CÓ QUANTITY 10 HOẶC 20
SELECT *
FROM [Order Details]
WHERE [Quantity] IN (10,20)

--TỪ ORDER DETAIL LIỆT KE ĐƠN ĐẶT HÀNG CÓ UNITPRICE 100-200
--ĐƯA RA ĐƠN HÀNG CÓ QUANTITY 10 HOẶC 20
--AND
SELECT *
FROM [Order Details]
WHERE [UnitPrice] BETWEEN 100 AND 200 AND [Quantity] IN (10,20)

--OR
SELECT *
FROM [Order Details]
WHERE [UnitPrice] BETWEEN 100 AND 200 OR [Quantity] IN (10,20)

--DISTINCT
SELECT DISTINCT *
FROM [Order Details]
WHERE [UnitPrice] BETWEEN 100 AND 200 OR [Quantity] IN (10,20)

--UNION KHÔNG LẬP KẾT QUẢ
--UNION ALL CHO PHẾP LẬP KẾT QUẢ
SELECT *
FROM [Order Details]
WHERE [UnitPrice] BETWEEN 100 AND 200
UNION
SELECT *
FROM [Order Details]
WHERE [Quantity] IN (10,20)

SELECT *
FROM [Order Details]
WHERE [UnitPrice] BETWEEN 100 AND 200
UNION ALL
SELECT *
FROM [Order Details]
WHERE [Quantity] IN (10,20)

--LIỆT KÊ TOÀN BỘ THÀNH PHỐ TRONG SUPPLIERS VF CUSTOMERS
SELECT [Country]
FROM Suppliers
UNION
SELECT [Country]
FROM Customers

SELECT [Country]
FROM Suppliers
UNION ALL
SELECT [Country]
FROM Customers